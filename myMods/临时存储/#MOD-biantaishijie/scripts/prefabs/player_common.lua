local easing = require("easing")
local PlayerHud = require("screens/playerhud")

local USE_MOVEMENT_PREDICTION = true

local screen_fade_time = .4

local DEFAULT_PLAYER_COLOUR = { 1, 1, 1, 1 }

local function giveupstring(combat, target)
    return GetString(
        combat.inst,
        "COMBAT_QUIT",
        target ~= nil and (
            (target:HasTag("prey") and not target:HasTag("hostile") and "PREY") or
            (string.find(target.prefab, "pig") ~= nil and target:HasTag("pig") and not target:HasTag("werepig") and "PIG")
        ) or nil
    )
end

local function battlecrystring(combat, target)
    return target ~= nil
        and target:IsValid()
        and GetString(
            combat.inst,
            "BATTLECRY",
            (target:HasTag("prey") and not target:HasTag("hostile") and "PREY") or
            (string.find(target.prefab, "pig") ~= nil and target:HasTag("pig") and not target:HasTag("werepig") and "PIG") or
            target.prefab
        )
        or nil
end

local function GetStatus(inst, viewer)
    return (inst:HasTag("playerghost") and "GHOST")
        or (inst.hasRevivedPlayer and "REVIVER")
        or (inst.hasKilledPlayer and "MURDERER")
        or (inst.hasAttackedPlayer and "ATTACKER")
        or (inst.hasStartedFire and "FIRESTARTER")
        or nil
end

local function TryDescribe(descstrings, modifier)
    return descstrings ~= nil and (
            type(descstrings) == "string" and
            descstrings or
            descstrings[modifier] or
            descstrings.GENERIC
        ) or nil
end

local function TryCharStrings(inst, charstrings, modifier)
    return charstrings ~= nil and (
            TryDescribe(charstrings.DESCRIBE[string.upper(inst.prefab)], modifier) or
            TryDescribe(charstrings.DESCRIBE.PLAYER, modifier)
        ) or nil
end

local function GetDescription(inst, viewer)
    local modifier = inst.components.inspectable:GetStatus(viewer) or "GENERIC"
    return string.format(
            TryCharStrings(inst, STRINGS.CHARACTERS[string.upper(viewer.prefab)], modifier) or
            TryCharStrings(inst, STRINGS.CHARACTERS.GENERIC, modifier),
            inst:GetDisplayName()
        )
end

local TALLER_TALKER_OFFSET = Vector3(0, -700, 0)
local DEFAULT_TALKER_OFFSET = Vector3(0, -400, 0)
local function GetTalkerOffset(inst)
    local rider = inst.replica.rider
    return (rider ~= nil and rider:IsRiding() or inst:HasTag("playerghost"))
        and TALLER_TALKER_OFFSET
        or DEFAULT_TALKER_OFFSET
end

local TALLER_FROSTYBREATHER_OFFSET = Vector3(.3, 3.75, 0)
local DEFAULT_FROSTYBREATHER_OFFSET = Vector3(.3, 1.15, 0)
local function GetFrostyBreatherOffset(inst)
    local rider = inst.replica.rider
    return rider ~= nil and rider:IsRiding()
        and TALLER_FROSTYBREATHER_OFFSET
        or DEFAULT_FROSTYBREATHER_OFFSET
end

local function CanUseTouchStone(inst, touchstone)
    if inst.components.touchstonetracker ~= nil then
        return not inst.components.touchstonetracker:IsUsed(touchstone)
    elseif inst.player_classified ~= nil then
        return touchstone.GetTouchStoneID ~= nil and not table.contains(inst.player_classified.touchstonetrackerused:value(), touchstone:GetTouchStoneID())
    else
        return false
    end
end

local function GetTemperature(inst)
    if inst.components.temperature ~= nil then
        return inst.components.temperature:GetCurrent()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.currenttemperature
    else
        return TUNING.STARTING_TEMP
    end
end

local function IsFreezing(inst)
    if inst.components.temperature ~= nil then
        return inst.components.temperature:IsFreezing()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.currenttemperature < 0
    else
        return false
    end
end

local function IsOverheating(inst)
    if inst.components.temperature ~= nil then
        return inst.components.temperature:IsOverheating()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.currenttemperature > TUNING.OVERHEAT_TEMP
    else
        return false
    end
end

local function GetMoisture(inst)
    if inst.components.moisture ~= nil then
        return inst.components.moisture:GetMoisture()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.moisture:value()
    else
        return 0
    end
end

local function GetMaxMoisture(inst)
    if inst.components.moisture ~= nil then
        return inst.components.moisture:GetMaxMoisture()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.maxmoisture:value()
    else
        return 100
    end
end

local function GetMoistureRateScale(inst)
    if inst.components.moisture ~= nil then
        return inst.components.moisture:GetRateScale()
    elseif inst.player_classified ~= nil then
        return inst.player_classified.moistureratescale:value()
    else
        return RATE_SCALE.NEUTRAL
    end
end

local function GetSandstormLevel(inst)
    return inst.player_classified ~= nil and inst.player_classified.sandstormlevel:value() / 7 or 0
end

local function IsCarefulWalking(inst)
    return inst.player_classified ~= nil and inst.player_classified.iscarefulwalking:value()
end

local function ShouldKnockout(inst)
    return DefaultKnockoutTest(inst) and not inst.sg:HasStateTag("yawn")
end

local function ShouldAcceptItem(inst, item)
    if inst:HasTag("playerghost") then
        return item.prefab == "reviver"
    else
        return item.components.inventoryitem ~= nil
    end
end

local function OnGetItem(inst, giver, item)
    if item ~= nil and item.prefab == "reviver" and inst:HasTag("playerghost") then
        item:PushEvent("usereviver", { user = giver })
        giver.hasRevivedPlayer = true
        item:Remove()
        inst:PushEvent("respawnfromghost", { source = item, user = giver })

        inst.components.health:DeltaPenalty(TUNING.REVIVE_HEALTH_PENALTY)
        giver.components.sanity:DoDelta(TUNING.REVIVE_OTHER_SANITY_BONUS)
    end
end

local function DropWetTool(inst, data)
    --Tool slip.
    if inst.components.moisture:GetSegs() < 4 then
        return
    end

    local tool = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
    if tool ~= nil and tool:GetIsWet() and math.random() < easing.inSine(TheWorld.state.wetness, 0, .15, inst.components.moisture:GetMaxMoisture()) then
        local projectile =
            data.weapon ~= nil and
            data.projectile == nil and
            (data.weapon.components.projectile ~= nil or data.weapon.components.complexprojectile ~= nil)

        if projectile then
            local num = data.weapon.components.stackable ~= nil and data.weapon.components.stackable:StackSize() or 1
            if num <= 1 then
                return
            end
            inst.components.inventory:Unequip(EQUIPSLOTS.HANDS, true)
            tool = data.weapon.components.stackable:Get(num - 1)
            tool.Transform:SetPosition(inst.Transform:GetWorldPosition())
            if tool.components.inventoryitem ~= nil then
                tool.components.inventoryitem:OnDropped()
            end
        else
            inst.components.inventory:Unequip(EQUIPSLOTS.HANDS, true)
            inst.components.inventory:DropItem(tool)
        end

        if tool.Physics ~= nil then
            local x, y, z = tool.Transform:GetWorldPosition()
            tool.Physics:Teleport(x, .3, z)

            local angle = (math.random() * 20 - 10) * DEGREES
            if data.target ~= nil and data.target:IsValid() then
                local x1, y1, z1 = inst.Transform:GetWorldPosition()
                x, y, z = data.target.Transform:GetWorldPosition()
                angle = angle + (
                    (x1 == x and z1 == z and math.random() * 2 * PI) or
                    (projectile and math.atan2(z - z1, x - x1)) or
                    math.atan2(z1 - z, x1 - x)
                )
            else
                angle = angle + math.random() * 2 * PI
            end
            local speed = projectile and 2 + math.random() or 3 + math.random() * 2
            tool.Physics:SetVel(math.cos(angle) * speed, 10, math.sin(angle) * speed)
        end
        --Lock out from picking up for a while?
        --V2C: no need, the stategraph goes into busy state
    end
end

local function FrozenItems(item)
    return item:HasTag("frozen")
end

local function OnStartFireDamage(inst)
    local frozenitems = inst.components.inventory:FindItems(FrozenItems)
    for i, v in ipairs(frozenitems) do
        v:PushEvent("firemelt")
    end
end

local function OnStopFireDamage(inst)
    local frozenitems = inst.components.inventory:FindItems(FrozenItems)
    for i, v in ipairs(frozenitems) do
        v:PushEvent("stopfiremelt")
    end
end

--NOTE: On server we always get before lose attunement when switching effigies.
local function OnGotNewAttunement(inst, data)
    --can safely assume we are attuned if we just "got" an attunement
    if not inst._isrezattuned and
        data.proxy:IsAttunableType("remoteresurrector") then
        --NOTE: parenting automatically handles visibility
        SpawnPrefab("attune_out_fx").entity:SetParent(inst.entity)
        inst._isrezattuned = true
    end
end

local function OnAttunementLost(inst, data)
    --cannot assume that we are no longer attuned
    --to a type when we lose a single attunement!
    if inst._isrezattuned and
        data.proxy:IsAttunableType("remoteresurrector") and
        not inst.components.attuner:HasAttunement("remoteresurrector") then
        --remoterezsource flag means we're currently performing remote resurrection,
        --so we will lose attunement in the process, but we don't really want an fx!
        if not inst.remoterezsource then
            --NOTE: parenting automatically handles visibility
            SpawnPrefab(inst:HasTag("playerghost") and "attune_ghost_in_fx" or "attune_in_fx").entity:SetParent(inst.entity)
        end
        inst._isrezattuned = false
    end
end

--------------------------------------------------------------------------
--Audio events
--------------------------------------------------------------------------

local function OnGotNewItem(inst, data)
    if data.slot ~= nil or data.eslot ~= nil then
        TheFocalPoint.SoundEmitter:PlaySound("dontstarve/HUD/collect_resource")
    end
end

local function OnEquip()
    TheFocalPoint.SoundEmitter:PlaySound("dontstarve/wilson/equip_item")
end

local function OnPickSomething(inst, data)
    if data.object ~= nil and data.object.components.pickable ~= nil and data.object.components.pickable.picksound ~= nil then
        --Others can hear this
        inst.SoundEmitter:PlaySound(data.object.components.pickable.picksound)
    end
end

local function OnDropItem(inst)
    --Others can hear this
    inst.SoundEmitter:PlaySound("dontstarve/common/dropGeneric")
end

--------------------------------------------------------------------------
--Action events
--------------------------------------------------------------------------

local function OnActionFailed(inst, data)
    if inst.components.talker ~= nil
        and (data.reason ~= nil or
            not data.action.autoequipped or
            inst.components.inventory.activeitem == nil) then
        --V2C: Added edge case to suppress talking when failure is just due to
        --     action equip failure when your inventory is full.
        --     Note that action equip fail is an indirect check by testing
        --     whether your active slot is now empty or not.
        --     This is just to simplify making it consistent on client side.
        inst.components.talker:Say(GetActionFailString(inst, data.action.action.id, data.reason))
    end
end

local function OnWontEatFood(inst, data)
    if inst.components.talker ~= nil then
        inst.components.talker:Say(GetString(inst, "ANNOUNCE_EAT", "YUCKY"))
    end
end

--------------------------------------------------------------------------
--Temperamental events
--------------------------------------------------------------------------

local function OnStartedFire(inst, data)
    if data ~= nil and data.target ~= nil and data.target:HasTag("structure") and not data.target:HasTag("wildfireprotected") then
        inst.hasStartedFire = true
        inst.hasAttackedPlayer = nil
    end
end

--------------------------------------------------------------------------
--PVP events
--------------------------------------------------------------------------

local function OnAttackOther(inst, data)
    if data ~= nil and data.target ~= nil and data.target:HasTag("player") then
        inst.hasAttackedPlayer = true
    end
    if data.weapon then
        DropWetTool(inst, data)
    end
end

local function OnAreaAttackOther(inst, data)
    if data ~= nil and data.target ~= nil and data.target:HasTag("player") then
        inst.hasAttackedPlayer = true
    end
end

local function OnKilled(inst, data)
    if data ~= nil and data.victim ~= nil and data.victim:HasTag("player") then
        inst.hasKilledPlayer = true
        inst.hasRevivedPlayer = nil
    end
end

--------------------------------------------------------------------------

local function RegisterActivePlayerEventListeners(inst)
    --HUD Audio events
    inst:ListenForEvent("gotnewitem", OnGotNewItem)
    inst:ListenForEvent("equip", OnEquip)
end

local function UnregisterActivePlayerEventListeners(inst)
    --HUD Audio events
    inst:RemoveEventCallback("gotnewitem", OnGotNewItem)
    inst:RemoveEventCallback("equip", OnEquip)
end

local function RegisterMasterEventListeners(inst)
    --Audio events
    inst:ListenForEvent("picksomething", OnPickSomething)
    inst:ListenForEvent("dropitem", OnDropItem)

    --Speech events
    inst:ListenForEvent("actionfailed", OnActionFailed)
    inst:ListenForEvent("wonteatfood", OnWontEatFood)
    inst:ListenForEvent("working", DropWetTool)

    --Temperamental events
    inst:ListenForEvent("onstartedfire", OnStartedFire)

    --PVP events
    inst:ListenForEvent("onattackother", OnAttackOther)
    inst:ListenForEvent("onareaattackother", OnAreaAttackOther)
    inst:ListenForEvent("killed", OnKilled)
end

--------------------------------------------------------------------------
--Construction/Destruction helpers
--------------------------------------------------------------------------

local function AddActivePlayerComponents(inst)
    inst:AddComponent("playertargetindicator")
    inst:AddComponent("playerhearing")
end

local function RemoveActivePlayerComponents(inst)
    inst:RemoveComponent("playertargetindicator")
    inst:RemoveComponent("playerhearing")
end

local function ActivateHUD(inst)
    local hud = PlayerHud()
    TheFrontEnd:PushScreen(hud)
    if TheFrontEnd:GetFocusWidget() == nil then
        hud:SetFocus()
    end
    TheCamera:SetOnUpdateFn(not TheWorld:HasTag("cave") and function(camera) hud:UpdateClouds(camera) end or nil)
    hud:SetMainCharacter(inst)
end

local function DeactivateHUD(inst)
    TheCamera:SetOnUpdateFn(nil)
    TheFrontEnd:PopScreen(inst.HUD)
    inst.HUD = nil
end

local function ActivatePlayer(inst)
    inst.activatetask = nil

    TheWorld.minimap.MiniMap:DrawForgottenFogOfWar(true)
    if inst.player_classified ~= nil then
        inst.player_classified.MapExplorer:ActivateLocalMiniMap()
    end

    inst:PushEvent("playeractivated")
    TheWorld:PushEvent("playeractivated", inst)
end

local function DeactivatePlayer(inst)
    if inst.activatetask ~= nil then
        inst.activatetask:Cancel()
        inst.activatetask = nil
        return
    end

    if inst == ThePlayer then
        -- For now, clients save their local minimap reveal cache
        -- and we need to trigger this here as well as on network
        -- disconnect.  On migration, we will hit this code first
        -- whereas normally we will hit the one in disconnection.
        if not TheWorld.ismastersim then
            SerializeUserSession(inst)
        end
    end

    inst:PushEvent("playerdeactivated")
    TheWorld:PushEvent("playerdeactivated", inst)
end

--------------------------------------------------------------------------

local function OnPlayerJoined(inst)
    inst.jointask = nil

    -- "playerentered" is available on both server and client.
    -- - On clients, this is pushed whenever a player entity is added
    --   locally because it has come into range of your network view.
    -- - On servers, this message is identical to "ms_playerjoined", since
    --   players are always in network view range once they are connected.
    TheWorld:PushEvent("playerentered", inst)
    if TheWorld.ismastersim then
        TheWorld:PushEvent("ms_playerjoined", inst)
        --V2C: #spawn #despawn
        --     This was where we used to announce player joined.
        --     Now we announce as soon as you login to the lobby
        --     and not when you connect during shard migrations.
        --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.JOINEDGAME, inst:GetDisplayName()), inst.entity, true, "join_game")

        --Register attuner server listeners here as "ms_playerjoined"
        --will trigger relinking saved attunements, and we don't want
        --to hit the callbacks to spawn fx for those
        inst:ListenForEvent("gotnewattunement", OnGotNewAttunement)
        inst:ListenForEvent("attunementlost", OnAttunementLost)
        inst._isrezattuned = inst.components.attuner:HasAttunement("remoteresurrector")
    end
end

local function ConfigurePlayerLocomotor(inst)
    inst.components.locomotor:SetSlowMultiplier(0.6)
    inst.components.locomotor.pathcaps = { player = true, ignorecreep = true } -- 'player' cap not actually used, just useful for testing
    inst.components.locomotor.walkspeed = TUNING.WILSON_WALK_SPEED -- 4
    inst.components.locomotor.runspeed = TUNING.WILSON_RUN_SPEED -- 6
    inst.components.locomotor.fasteronroad = true
    inst.components.locomotor:SetTriggersCreep(not inst:HasTag("spiderwhisperer"))
end

local function ConfigureGhostLocomotor(inst)
    inst.components.locomotor:SetSlowMultiplier(0.6)
    inst.components.locomotor.pathcaps = { player = true, ignorecreep = true } -- 'player' cap not actually used, just useful for testing
    inst.components.locomotor.walkspeed = TUNING.WILSON_WALK_SPEED -- 4 is base
    inst.components.locomotor.runspeed = TUNING.WILSON_RUN_SPEED -- 6 is base
    inst.components.locomotor.fasteronroad = false
    inst.components.locomotor:SetTriggersCreep(false)
end

local function OnCancelMovementPrediction(inst)
    inst.components.locomotor:Clear()
    inst:ClearBufferedAction()
    inst.sg:GoToState("idle", "cancel")
end

local function EnableMovementPrediction(inst, enable)
    if USE_MOVEMENT_PREDICTION and not TheWorld.ismastersim then
        if enable then
            if inst.components.locomotor == nil then
                local isghost =
                    (inst.player_classified ~= nil and inst.player_classified.isghostmode:value()) or
                    (inst.player_classified == nil and inst:HasTag("playerghost"))

                inst:AddComponent("locomotor") -- locomotor must be constructed before the stategraph
                if isghost then
                    ConfigureGhostLocomotor(inst)
                else
                    ConfigurePlayerLocomotor(inst)
                end

                if inst.components.playercontroller ~= nil then
                    inst.components.playercontroller.locomotor = inst.components.locomotor
                end

                inst:SetStateGraph(isghost and "SGwilsonghost_client" or "SGwilson_client")
                inst:ListenForEvent("cancelmovementprediction", OnCancelMovementPrediction)

                inst.entity:EnableMovementPrediction(true)
                print("Movement prediction enabled")
            end
        elseif inst.components.locomotor ~= nil then
            inst:RemoveEventCallback("cancelmovementprediction", OnCancelMovementPrediction)
            inst.entity:EnableMovementPrediction(false)
            inst:ClearBufferedAction()
            inst:ClearStateGraph()
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller.locomotor = nil
            end
            inst:RemoveComponent("locomotor")
            print("Movement prediction disabled")
        end
    end
end

--Always on the bottom of the stack
local function PlayerActionFilter(inst, action)
    return not action.ghost_exclusive
end

--Pushed/popped when dying/resurrecting
local function GhostActionFilter(inst, action)
    return action.ghost_valid
end

local function ConfigurePlayerActions(inst)
    if inst.components.playeractionpicker ~= nil then
        inst.components.playeractionpicker:PopActionFilter(GhostActionFilter)
    end
end

local function ConfigureGhostActions(inst)
    if inst.components.playeractionpicker ~= nil then
        inst.components.playeractionpicker:PushActionFilter(GhostActionFilter, 99)
    end
end

local function SetGhostMode(inst, isghost)
    if not inst.ghostenabled then
        return
    end
    TheWorld:PushEvent("enabledynamicmusic", not isghost)
    inst.HUD.controls.status:SetGhostMode(isghost)
    if isghost then
        TheMixer:PushMix("death")
    else
        TheMixer:PopMix("death")
    end
    if not TheWorld.ismastersim then
        if USE_MOVEMENT_PREDICTION then
            if inst.components.locomotor ~= nil then
                inst:PushEvent("cancelmovementprediction")
                if isghost then
                    ConfigureGhostLocomotor(inst)
                else
                    ConfigurePlayerLocomotor(inst)
                end
            end
            if inst.sg ~= nil then
                inst:SetStateGraph(isghost and "SGwilsonghost_client" or "SGwilson_client")
            end
        end
        if isghost then
            ConfigureGhostActions(inst)
        else
            ConfigurePlayerActions(inst)
        end
    end
end

local function OnSetOwner(inst)
    inst.name = inst.Network:GetClientName()
    inst.userid = inst.Network:GetUserID()
    inst.playercolour = inst.Network:GetPlayerColour()
    if TheWorld.ismastersim then
        TheNet:SetIsClientInWorld(inst.userid, true)
        inst.player_classified.Network:SetClassifiedTarget(inst)
    end

    if inst ~= nil and (inst == ThePlayer or TheWorld.ismastersim) then
        if inst.components.playercontroller == nil then
            EnableMovementPrediction(inst, Profile:GetMovementPredictionEnabled())
            inst:AddComponent("playeractionpicker")
            inst:AddComponent("playercontroller")
            inst:AddComponent("playervoter")
            inst:AddComponent("playermetrics")
            inst.components.playeractionpicker:PushActionFilter(PlayerActionFilter, -99)
        end
    elseif inst.components.playercontroller ~= nil then
        inst:RemoveComponent("playeractionpicker")
        inst:RemoveComponent("playercontroller")
        inst:RemoveComponent("playervoter")
        inst:RemoveComponent("playermetrics")
        DisableMovementPrediction(inst)
    end

    if inst == ThePlayer then
        if inst.HUD == nil then
            ActivateHUD(inst)
            AddActivePlayerComponents(inst)
            RegisterActivePlayerEventListeners(inst)
            inst.activatetask = inst:DoTaskInTime(0, ActivatePlayer)
        end
    elseif inst.HUD ~= nil then
        UnregisterActivePlayerEventListeners(inst)
        RemoveActivePlayerComponents(inst)
        DeactivateHUD(inst)
        DeactivatePlayer(inst)
    end
end

local function AttachClassified(inst, classified)
    inst.player_classified = classified
    inst.ondetachclassified = function() inst:DetachClassified() end
    inst:ListenForEvent("onremove", inst.ondetachclassified, classified)
end

local function DetachClassified(inst)
    inst.player_classified = nil
    inst.ondetachclassified = nil
end

local function OnRemoveEntity(inst)
    if inst.jointask ~= nil then
        inst.jointask:Cancel()
    end

    if inst.player_classified ~= nil then
        if TheWorld.ismastersim then
            inst.player_classified:Remove()
            inst.player_classified = nil
            if inst.ghostenabled then
                inst.Network:RemoveUserFlag(USERFLAGS.IS_GHOST)
            end
            inst.Network:RemoveUserFlag(USERFLAGS.CHARACTER_STATE_1)
            inst.Network:RemoveUserFlag(USERFLAGS.CHARACTER_STATE_2)
        else
            inst.player_classified._parent = nil
            inst:RemoveEventCallback("onremove", inst.ondetachclassified, inst.player_classified)
            inst:DetachClassified()
        end
    end

    table.removearrayvalue(AllPlayers, inst)

    -- "playerexited" is available on both server and client.
    -- - On clients, this is pushed whenever a player entity is removed
    --   locally because it has gone out of range of your network view.
    -- - On servers, this message is identical to "ms_playerleft", since
    --   players are always in network view range until they disconnect.
    TheWorld:PushEvent("playerexited", inst)
    if TheWorld.ismastersim then
        TheWorld:PushEvent("ms_playerleft", inst)
        TheNet:SetIsClientInWorld(inst.userid, false)
    end

    if inst.HUD ~= nil then
        DeactivateHUD(inst)
    end

    if inst == ThePlayer then
        UnregisterActivePlayerEventListeners(inst)
        RemoveActivePlayerComponents(inst)
        DeactivatePlayer(inst)
    end
end

--------------------------------------------------------------------------
--Death/Ghost stuff
--------------------------------------------------------------------------

local function RemoveDeadPlayer(inst, spawnskeleton)
    if spawnskeleton and TheSim:HasPlayerSkeletons() then
        local x, y, z = inst.Transform:GetWorldPosition()

        -- Spawn a skeleton
        local skel = SpawnPrefab("skeleton_player")
        if skel ~= nil then
            skel.Transform:SetPosition(x, y, z)
            -- Set the description
            skel:SetSkeletonDescription(inst.prefab, inst:GetDisplayName(), inst.deathcause, inst.deathpkname)
            skel:SetSkeletonAvatarData(inst.deathclientobj)
        end

        -- Death FX
        SpawnPrefab("die_fx").Transform:SetPosition(x, y, z)
    end
    inst:OnDespawn()
    DeleteUserSession(inst)
    inst:Remove()
end

local function FadeOutDeadPlayer(inst, spawnskeleton)
    inst:ScreenFade(false, screen_fade_time, true)
    inst:DoTaskInTime(screen_fade_time * 1.25, RemoveDeadPlayer, spawnskeleton)
end

--Player has completed death sequence
local function OnPlayerDied(inst, data)
    inst:DoTaskInTime(3, FadeOutDeadPlayer, data ~= nil and data.skeleton)
end

--Player has initiated death sequence
local function OnPlayerDeath(inst, data)
    if inst:HasTag("playerghost") then
        --ghosts should not be able to die atm
        return
    end

    inst:ClearBufferedAction()

    inst.components.age:PauseAging()
    inst.components.inventory:Close()
    inst:PushEvent("ms_closepopups")

    inst.deathclientobj = TheNet:GetClientTableForUser(inst.userid)
    inst.deathcause = data ~= nil and data.cause or "unknown"
    if data == nil or data.afflicter == nil then
        inst.deathpkname = nil
    elseif data.afflicter.overridepkname ~= nil then
        inst.deathpkname = data.afflicter.overridepkname
        inst.deathbypet = data.afflicter.overridepkpet
    else
        local killer = data.afflicter.components.follower ~= nil and data.afflicter.components.follower:GetLeader() or nil
        if killer ~= nil and
            killer.components.petleash ~= nil and
            killer.components.petleash:IsPet(data.afflicter) then
            inst.deathbypet = true
        else
            killer = data.afflicter
        end
        inst.deathpkname = killer:HasTag("player") and killer:GetDisplayName() or nil
    end

    if not inst.ghostenabled then
        if inst.deathcause ~= "file_load" then
            inst.player_classified:AddMorgueRecord()

            local announcement_string = GetNewDeathAnnouncementString(inst, inst.deathcause, inst.deathpkname, inst.deathbypet)
            if announcement_string ~= "" then
                TheNet:AnnounceDeath(announcement_string, inst.entity)
            end
        end
        --Early delete in case client disconnects before removal timeout
        DeleteUserSession(inst)
    end
	
	----------------------------------------------------修改
	inst:DoTaskInTime(1, function()
		inst.siwangzhita = nil--修改 死亡之塔
	end)
	
	--------------------------------------------------------需要 人物prefabs 有单色球号码 死亡之塔层数
	
end

local function DoActualRez(inst, source, item)
    inst.player_classified.MapExplorer:EnableUpdate(true)

    local x, y, z
    if source ~= nil then
        x, y, z = source.Transform:GetWorldPosition()
    else
        x, y, z = inst.Transform:GetWorldPosition()
    end

    local diefx = SpawnPrefab("die_fx")
    if diefx and x and y and z then
        diefx.Transform:SetPosition(x, y, z)
    end

    -- inst.AnimState:SetBank("wilson")
    -- inst.components.skinner:SetSkinMode("normal_skin")

    inst.AnimState:Hide("HAT")
    inst.AnimState:Hide("HAIR_HAT")
    inst.AnimState:Show("HAIR_NOHAT")
    inst.AnimState:Show("HAIR")
    inst.AnimState:Show("HEAD")
    inst.AnimState:Hide("HEAD_HAT")

    inst:Show()

    inst:SetStateGraph("SGwilson")

    inst.Physics:Teleport(x, y, z)

    inst.components.inventory:Open()
    inst.player_classified:SetGhostMode(false)

    -- Resurrector is involved
    if source ~= nil then
        inst.DynamicShadow:Enable(true)
        inst.AnimState:SetBank("wilson")
        inst.components.skinner:SetSkinMode("normal_skin") -- restore skin
        inst.components.bloomer:PopBloom("playerghostbloom")
        inst.AnimState:SetLightOverride(0)

        source:PushEvent("activateresurrection", inst)

        if source.prefab == "amulet" then
            inst.components.inventory:Equip(source)
            inst.sg:GoToState("amulet_rebirth")
        elseif source.prefab == "resurrectionstone" then
            inst.components.inventory:Hide()
            inst:PushEvent("ms_closepopups")
            inst.sg:GoToState("wakeup")
        elseif source.prefab == "resurrectionstatue" then
            inst.sg:GoToState("rebirth")
        elseif source.prefab == "multiplayer_portal" then
            inst.components.health:DeltaPenalty(TUNING.PORTAL_HEALTH_PENALTY)

            source:PushEvent("rez_player")
            inst.sg:GoToState("portal_rez")
        end
    else -- Telltale Heart
        inst.sg:GoToState("reviver_rebirth", item)
    end
 
    --Default to electrocute light values
    inst.Light:SetIntensity(.8)
    inst.Light:SetRadius(.5)
    inst.Light:SetFalloff(.65)
    inst.Light:SetColour(255 / 255, 255 / 255, 236 / 255)
    inst.Light:Enable(false)

    MakeCharacterPhysics(inst, 75, .5)

    inst.components.health.canheal = true
    inst.components.hunger:Resume()
    inst.components.temperature:SetTemp() --nil param will resume temp
    inst.components.frostybreather:Enable()

    MakeMediumBurnableCharacter(inst, "torso")
    inst.components.burnable:SetBurnTime(TUNING.PLAYER_BURN_TIME)
    inst.components.burnable.nocharring = true

    MakeLargeFreezableCharacter(inst, "torso")
    inst.components.freezable:SetResistance(4)
    inst.components.freezable:SetDefaultWearOffTime(TUNING.PLAYER_FREEZE_WEAR_OFF_TIME)

    inst:AddComponent("grogginess")
    inst.components.grogginess:SetResistance(3)
    inst.components.grogginess:SetKnockOutTest(ShouldKnockout)

    inst.components.moisture:ForceDry(false)

    inst.components.sheltered:Start()

    inst.components.debuffable:Enable(true)

    --don't ignore sanity any more
    inst.components.sanity.ignore = false

    inst:RemoveTag("playerghost")
    inst.Network:RemoveUserFlag(USERFLAGS.IS_GHOST)

    inst.components.age:ResumeAging()

    ConfigurePlayerLocomotor(inst)
    ConfigurePlayerActions(inst)

    if inst.rezsource ~= nil then
        local announcement_string = GetNewRezAnnouncementString(inst, inst.rezsource)
        if announcement_string ~= "" then
            TheNet:AnnounceResurrect(announcement_string, inst.entity)
        end
        inst.rezsource = nil
    end
    inst.remoterezsource = nil

    inst:PushEvent("ms_respawnedfromghost")
end

local function DoRezDelay(inst, source, delay)
    if not source:IsValid() or source:IsInLimbo() then
        --Revert OnRespawnFromGhost state
        inst:ShowHUD(true)
        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(true)
        end
        inst.rezsource = nil
        inst.remoterezsource = nil
        --Revert DoMoveToRezSource state
        inst:Show()
        inst.Light:Enable(true)
        inst:SetCameraDistance()
        inst.sg:GoToState("haunt")
        --
    elseif delay == nil or delay <= 0 then
        DoActualRez(inst, source)
    elseif delay > .35 then
        inst:DoTaskInTime(.35, DoRezDelay, source, delay - .35)
    else
        inst:DoTaskInTime(delay, DoRezDelay, source)
    end
end

local function DoMoveToRezSource(inst, source, delay)
    if not source:IsValid() or source:IsInLimbo() then
        --Revert OnRespawnFromGhost state
        inst:ShowHUD(true)
        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(true)
        end
        inst.rezsource = nil
        inst.remoterezsource = nil
        --Revert "remoteresurrect" state
        if inst.sg.currentstate.name == "remoteresurrect" then
            inst.sg:GoToState("haunt")
        end
        --
        return
    end

    inst:Hide()
    inst.Light:Enable(false)
    inst.Physics:Teleport(source.Transform:GetWorldPosition())
    inst:SetCameraDistance(24)
    if inst.sg.currentstate.name == "remoteresurrect" then
        inst:SnapCamera()
    end
    if inst.sg.statemem.faded then
        inst.sg.statemem.faded = false
        inst:ScreenFade(true, 1)
    end

    DoRezDelay(inst, source, delay)
end

local function OnRespawnFromGhost(inst, data)
    if not inst:HasTag("playerghost") then
        return
    end

    inst.deathclientobj = nil
    inst.deathcause = nil
    inst.deathpkname = nil
    inst.deathbypet = nil
    inst:ShowHUD(false)
    if inst.components.playercontroller ~= nil then
        inst.components.playercontroller:Enable(false)
    end
    if inst.components.talker ~= nil then
        inst.components.talker:ShutUp()
    end
    inst.sg:AddStateTag("busy")

    if data == nil or data.source == nil then
        inst:DoTaskInTime(0, DoActualRez)
    elseif inst.sg.currentstate.name == "remoteresurrect" then
        inst:DoTaskInTime(0, DoMoveToRezSource, data.source, 24 * FRAMES)
    elseif data.source.prefab == "reviver" then
        inst:DoTaskInTime(0, DoActualRez, nil, data.source)
    elseif data.source.prefab == "amulet"
        or data.source.prefab == "resurrectionstone"
        or data.source.prefab == "resurrectionstatue"
        or data.source.prefab == "multiplayer_portal" then
        inst:DoTaskInTime(9 * FRAMES, DoMoveToRezSource, data.source, --[[60-9]] 51 * FRAMES)
    else
        --unsupported rez source...
        inst:DoTaskInTime(0, DoActualRez)
    end

    inst.rezsource =
        data ~= nil and (
            (data.source ~= nil and data.source.prefab ~= "reviver" and data.source.name) or
            (data.user ~= nil and data.user:GetDisplayName())
        ) or
        STRINGS.NAMES.SHENANIGANS

    inst.remoterezsource =
        data ~= nil and
        data.source ~= nil and
        data.source.components.attunable ~= nil and
        data.source.components.attunable:GetAttunableTag() == "remoteresurrector"
end

local function OnMakePlayerGhost(inst, data)
    if inst:HasTag("playerghost") then
        return
    end

    inst.player_classified.MapExplorer:EnableUpdate(false)

    local x, y, z = inst.Transform:GetWorldPosition()

    -- Spawn a skeleton
    if data ~= nil and data.skeleton and TheSim:HasPlayerSkeletons() then
        local skel = SpawnPrefab("skeleton_player")
        if skel ~= nil then
            skel.Transform:SetPosition(x, y, z)
            -- Set the description
            skel:SetSkeletonDescription(inst.prefab, inst:GetDisplayName(), inst.deathcause, inst.deathpkname)
            skel:SetSkeletonAvatarData(inst.deathclientobj)
        end
    end

    if data ~= nil and data.loading then
        -- Set temporary flag for resuming game as a ghost
        -- Used in ghost stategraph as well as below in this function
        inst.loading_ghost = true
    else
        local announcement_string = GetNewDeathAnnouncementString(inst, inst.deathcause, inst.deathpkname, inst.deathbypet)
        if announcement_string ~= "" then
            TheNet:AnnounceDeath(announcement_string, inst.entity)
        end

        -- Death FX
        SpawnPrefab("die_fx").Transform:SetPosition(x, y, z)
    end

    inst.AnimState:SetBank("ghost")

    inst.components.skinner:SetSkinMode("ghost_skin")

    inst.components.bloomer:PushBloom("playerghostbloom", "shaders/anim_bloom_ghost.ksh", 100)
    inst.AnimState:SetLightOverride(TUNING.GHOST_LIGHT_OVERRIDE)

    inst:SetStateGraph("SGwilsonghost")

    --Switch to ghost light values
    inst.Light:SetIntensity(.6)
    inst.Light:SetRadius(.5)
    inst.Light:SetFalloff(.6)
    inst.Light:SetColour(180/255, 195/255, 225/255)
    inst.Light:Enable(true)
    inst.DynamicShadow:Enable(false)

    MakeGhostPhysics(inst, 1, .5)
    inst.Physics:Teleport(x, y, z)

    inst:AddTag("playerghost")
    inst.Network:AddUserFlag(USERFLAGS.IS_GHOST)

    inst:RemoveComponent("burnable")

    inst.components.freezable:Reset()
    inst:RemoveComponent("freezable")
    inst:RemoveComponent("propagator")

    inst:RemoveComponent("grogginess")

    inst.components.moisture:ForceDry(true)

    inst.components.sheltered:Stop()

    inst.components.debuffable:Enable(false)

    inst.components.age:PauseAging()

    inst.components.health:SetCurrentHealth(TUNING.RESURRECT_HEALTH)
    inst.components.health:ForceUpdateHUD(true)
    inst.components.health:SetInvincible(true)
    inst.components.health.canheal = false

    inst.components.sanity:SetPercent(.5, true)
    inst.components.sanity.ignore = true

    inst.components.hunger:SetPercent(2 / 3, true)
    inst.components.hunger:Pause()

    inst.components.temperature:SetTemp(TUNING.STARTING_TEMP)
    inst.components.frostybreather:Disable()

    if inst.components.playercontroller ~= nil then
        inst.components.playercontroller:Enable(true)
    end
    inst.player_classified:SetGhostMode(true)

    ConfigureGhostLocomotor(inst)
    ConfigureGhostActions(inst)

    inst:PushEvent("ms_becameghost")

    if inst.loading_ghost then
        inst.loading_ghost = nil
        inst.components.inventory:Close()
    else
        inst.player_classified:AddMorgueRecord()
        SerializeUserSession(inst)
    end
end

local function OnSave(inst, data)
    data.is_ghost = inst:HasTag("playerghost") or nil

    --Shard stuff
    data.migration = inst.migration

    --V2C: UNFORTUNATLEY, the sleeping hacks still need to be
    --     saved for snapshots or c_saves while sleeping
    if inst._sleepinghandsitem ~= nil then
        data.sleepinghandsitem = inst._sleepinghandsitem:GetSaveRecord()
    end
    if inst._sleepingactiveitem ~= nil then
        data.sleepingactiveitem = inst._sleepingactiveitem:GetSaveRecord()
    end
    --

    --Special case entities, since save references do not apply to networked players
    if inst.wormlight ~= nil then
        data.wormlight = inst.wormlight:GetSaveRecord()
    end

    if inst._OnSave ~= nil then
        inst:_OnSave(data)
    end
end

local function OnPreLoad(inst, data)
    --Shard stuff
    inst.migration = data ~= nil and data.migration or nil
    inst.migrationpets = inst.migration ~= nil and {} or nil

    if inst._OnPreLoad ~= nil then
        inst:_OnPreLoad(data)
    end
	
end

local function OnLoad(inst, data)
    --If this character is being loaded then it isn't a new spawn
    inst.OnNewSpawn = nil
    inst._OnNewSpawn = nil

    if data ~= nil then
        if data.is_ghost then
            OnMakePlayerGhost(inst, { loading = true })
        end

        --V2C: Sleeping hacks from snapshots or c_saves while sleeping
        if data.sleepinghandsitem ~= nil then
            local item = SpawnSaveRecord(data.sleepinghandsitem)
            if item ~= nil then
                inst.components.inventory.silentfull = true
                inst.components.inventory:Equip(item)
                inst.components.inventory.silentfull = false
            end
        end
        if data.sleepingactiveitem ~= nil then
            local item = SpawnSaveRecord(data.sleepingactiveitem)
            if item ~= nil then
                inst.components.inventory.silentfull = true
                inst.components.inventory:GiveItem(item)
                inst.components.inventory.silentfull = false
            end
        end
        --

        --Special case entities, since save references do not apply to networked players
        if data.wormlight ~= nil and inst.wormlight == nil then
            local wormlight = SpawnSaveRecord(data.wormlight)
            if wormlight ~= nil and wormlight.components.spell ~= nil then
                wormlight.components.spell:SetTarget(inst)
                if wormlight:IsValid() then
                    if wormlight.components.spell.target == nil then
                        wormlight:Remove()
                    else
                        wormlight.components.spell:ResumeSpell()
                    end
                end
            end
        end
    end

    if inst._OnLoad ~= nil then
        inst:_OnLoad(data)
    end
		
end

--V2C: sleeping bag hacks
--     The gist of it is that when we sleep, we gotta temporarly unequip
--     our hand item so it doesn't drain fuel, and hide our active item
--     so that it doesn't show up on our cursor.  However, we do not want
--     anything to be dropped on the ground due to full inventory, and we
--     want everything restored silently to the same state when we wakeup.
local function OnSleepIn(inst)
    if inst._sleepinghandsitem ~= nil then
        --Should not get here...unless previously somehow got out of
        --sleeping state without properly going through wakeup state
        inst._sleepinghandsitem:Show()
        inst.components.inventory.silentfull = true
        inst.components.inventory:GiveItem(inst._sleepinghandsitem)
        inst.components.inventory.silentfull = false
    end
    if inst._sleepingactiveitem ~= nil then
        --Should not get here...unless previously somehow got out of
        --sleeping state without properly going through wakeup state
        inst.components.inventory.silentfull = true
        inst.components.inventory:GiveItem(inst._sleepingactiveitem)
        inst.components.inventory.silentfull = false
    end

    inst._sleepinghandsitem = inst.components.inventory:Unequip(EQUIPSLOTS.HANDS)
    if inst._sleepinghandsitem ~= nil then
        inst._sleepinghandsitem:Hide()
    end
    inst._sleepingactiveitem = inst.components.inventory:GetActiveItem()
    if inst._sleepingactiveitem ~= nil then
        inst.components.inventory:SetActiveItem(nil)
    end
end

--V2C: sleeping bag hacks
local function OnWakeUp(inst)
    if inst._sleepinghandsitem ~= nil then
        inst._sleepinghandsitem:Show()
        inst.components.inventory.silentfull = true
        inst.components.inventory:Equip(inst._sleepinghandsitem)
        inst.components.inventory.silentfull = false
        inst._sleepinghandsitem = nil
    end
    if inst._sleepingactiveitem ~= nil then
        inst.components.inventory.silentfull = true
        inst.components.inventory:GiveActiveItem(inst._sleepingactiveitem)
        inst.components.inventory.silentfull = false
        inst._sleepingactiveitem = nil
    end
end

--Player cleanup usually called just before save/delete
--just before the the player entity is actually removed
local function OnDespawn(inst)
    if inst._OnDespawn ~= nil then
        inst:_OnDespawn()
    end

    --V2C: Unfortunately the sleeping bag code is incredibly garbage
    --     so we need all this extra cleanup to cover its edge cases
    if inst.sg:HasStateTag("bedroll") or inst.sg:HasStateTag("tent") then
        inst:ClearBufferedAction()
    end
    if inst.sleepingbag ~= nil then
        inst.sleepingbag.components.sleepingbag:DoWakeUp(true)
        inst.sleepingbag = nil
    end
    inst:OnWakeUp()
    --

    inst.components.debuffable:RemoveOnDespawn()
    inst.components.rider:ActualDismount()
    inst.components.bundler:StopBundling()
    inst.components.inventory:DropEverythingWithTag("irreplaceable")
    inst.components.leader:RemoveAllFollowers()

    if inst.components.playercontroller ~= nil then
        inst.components.playercontroller:Enable(false)
    end
    inst.components.locomotor:StopMoving()
    inst.components.locomotor:Clear()
end

--------------------------------------------------------------------------
--Pet stuff
--------------------------------------------------------------------------

local function DoEffects(pet)
    SpawnPrefab(pet:HasTag("flying") and "spawn_fx_small_high" or "spawn_fx_small").Transform:SetPosition(pet.Transform:GetWorldPosition())
end

local function OnSpawnPet(inst, pet)
    --Delayed in case we need to relocate for migration spawning
    pet:DoTaskInTime(0, DoEffects)
    if pet.components.spawnfader ~= nil then
        pet.components.spawnfader:FadeIn()
    end
end

local function OnDespawnPet(inst, pet)
    DoEffects(pet)
    pet:Remove()
end

--------------------------------------------------------------------------
--HUD/Camera/FE interface
--------------------------------------------------------------------------

local function IsActionsVisible(inst)
    --V2C: This flag is a hack for hiding actions during sleep states
    --     since controls and HUD are technically not "disabled" then
    return inst.player_classified ~= nil and inst.player_classified.isactionsvisible:value()
end

local function IsHUDVisible(inst)
    return inst.player_classified.ishudvisible:value()
end

local function ShowActions(inst, show)
    if TheWorld.ismastersim then
        inst.player_classified:ShowActions(show)
    end
end

local function ShowHUD(inst, show)
    if TheWorld.ismastersim then
        inst.player_classified:ShowHUD(show)
    end
end

local function ShowWardrobePopUp(inst, show, target)
    if TheWorld.ismastersim then
        inst.player_classified:ShowWardrobePopUp(show, target)
    end
end

local function ShowGiftItemPopUp(inst, show)
    if TheWorld.ismastersim then
        inst.player_classified:ShowGiftItemPopUp(show)
    end
end

local function SetCameraDistance(inst, distance)
    if TheWorld.ismastersim then
        inst.player_classified.cameradistance:set(distance or 0)
    end
end

local function SetCameraZoomed(inst, iszoomed)
    if TheWorld.ismastersim then
        inst.player_classified.iscamerazoomed:set(iszoomed)
    end
end

local function SnapCamera(inst)
    if TheWorld.ismastersim then
        --Forces a netvar to be dirty regardless of value
        inst.player_classified.camerasnap:set_local(true)
        inst.player_classified.camerasnap:set(true)
    end
end

local function ShakeCamera(inst, mode, duration, speed, scale, source_or_pt, maxDist)
    if source_or_pt ~= nil and maxDist ~= nil then
        local distSq = source_or_pt.entity ~= nil and inst:GetDistanceSqToInst(source_or_pt) or inst:GetDistanceSqToPoint(source_or_pt:Get())
        local k = math.max(0, math.min(1, distSq / (maxDist * maxDist)))
        scale = easing.outQuad(k, scale, -scale, 1)
    end

    --normalize for net_byte
    duration = math.floor((duration >= 16 and 16 or duration) * 16 + .5) - 1
    speed = math.floor((speed >= 1 and 1 or speed) * 256 + .5) - 1
    scale = math.floor((scale >= 8 and 8 or scale) * 32 + .5) - 1

    if scale > 0 and speed > 0 and duration > 0 then
        if TheWorld.ismastersim then
            --Forces a netvar to be dirty regardless of value
            inst.player_classified.camerashakemode:set_local(mode)
            inst.player_classified.camerashakemode:set(mode)
            --
            inst.player_classified.camerashaketime:set(duration)
            inst.player_classified.camerashakespeed:set(speed)
            inst.player_classified.camerashakescale:set(scale)
        end
        if inst.HUD ~= nil then
            TheCamera:Shake(
                mode,
                (duration + 1) / 16,
                (speed + 1) / 256,
                (scale + 1) / 32
            )
        end
    end
end

local function ScreenFade(inst, isfadein, time, iswhite)
    if TheWorld.ismastersim then
        --truncate to half of net_smallbyte, so we can include iswhite flag
        time = time ~= nil and math.min(31, math.floor(time * 10 + .5)) or 0
        inst.player_classified.fadetime:set(iswhite and time + 32 or time)
        inst.player_classified.isfadein:set(isfadein)
    end
end

local function ScreenFlash(inst, intensity)
    if TheWorld.ismastersim then
        --normalize for net_tinybyte
        intensity = math.floor((intensity >= 1 and 1 or intensity) * 8 + .5) - 1
        if intensity >= 0 then
            --Forces a netvar to be dirty regardless of value
            inst.player_classified.screenflash:set_local(intensity)
            inst.player_classified.screenflash:set(intensity)
            TheWorld:PushEvent("screenflash", (intensity + 1) / 8)
        end
    end
end

--------------------------------------------------------------------------

local function ApplyScale(inst, source, scale)
    if TheWorld.ismastersim and source ~= nil then
        if scale ~= 1 and scale ~= nil then
            if inst._scalesource == nil then
                inst._scalesource = { [source] = scale }
                inst.Transform:SetScale(scale, scale, scale)
            elseif inst._scalesource[source] ~= scale then
                inst._scalesource[source] = scale
                local scale = 1
                for k, v in pairs(inst._scalesource) do
                    scale = scale * v
                end
                inst.Transform:SetScale(scale, scale, scale)
            end
        elseif inst._scalesource ~= nil and inst._scalesource[source] ~= nil then
            inst._scalesource[source] = nil
            if next(inst._scalesource) == nil then
                inst._scalesource = nil
                inst.Transform:SetScale(1, 1, 1)
            else
                local scale = 1
                for k, v in pairs(inst._scalesource) do
                    scale = scale * v
                end
                inst.Transform:SetScale(scale, scale, scale)
            end
        end
    end
end

--------------------------------------------------------------------------

local function MakePlayerCharacter(name, customprefabs, customassets, common_postinit, master_postinit, starting_inventory)
    local assets =
    {
        Asset("ANIM", "anim/player_basic.zip"),
        Asset("ANIM", "anim/player_idles_shiver.zip"),
        Asset("ANIM", "anim/player_actions.zip"),
        Asset("ANIM", "anim/player_actions_axe.zip"),
        Asset("ANIM", "anim/player_actions_pickaxe.zip"),
        Asset("ANIM", "anim/player_actions_shovel.zip"),
        Asset("ANIM", "anim/player_actions_blowdart.zip"),
        Asset("ANIM", "anim/player_actions_eat.zip"),
        Asset("ANIM", "anim/player_actions_item.zip"),
        Asset("ANIM", "anim/player_cave_enter.zip"),
        Asset("ANIM", "anim/player_actions_uniqueitem.zip"),
        Asset("ANIM", "anim/player_actions_bugnet.zip"),
        Asset("ANIM", "anim/player_actions_unsaddle.zip"),
        Asset("ANIM", "anim/player_actions_fishing.zip"),
        Asset("ANIM", "anim/player_actions_boomerang.zip"),
        Asset("ANIM", "anim/player_actions_whip.zip"),
        Asset("ANIM", "anim/player_bush_hat.zip"),
        Asset("ANIM", "anim/player_attacks.zip"),
        Asset("ANIM", "anim/player_idles.zip"),
        Asset("ANIM", "anim/player_rebirth.zip"),
        Asset("ANIM", "anim/player_jump.zip"),
        Asset("ANIM", "anim/player_amulet_resurrect.zip"),
        Asset("ANIM", "anim/player_teleport.zip"),
        Asset("ANIM", "anim/wilson_fx.zip"),
        Asset("ANIM", "anim/player_one_man_band.zip"),
        Asset("ANIM", "anim/player_slurtle_armor.zip"),
        Asset("ANIM", "anim/player_staff.zip"),
        Asset("ANIM", "anim/player_hit_darkness.zip"),
        Asset("ANIM", "anim/player_hit_spike.zip"),

        Asset("ANIM", "anim/player_frozen.zip"),
        Asset("ANIM", "anim/player_shock.zip"),
        Asset("ANIM", "anim/player_tornado.zip"),

        Asset("ANIM", "anim/goo.zip"),

        Asset("ANIM", "anim/shadow_hands.zip"),

        Asset("ANIM", "anim/player_wrap_bundle.zip"),
        Asset("ANIM", "anim/player_wardrobe.zip"),
        Asset("ANIM", "anim/player_skin_change.zip"),
        Asset("ANIM", "anim/player_receive_gift.zip"),
        Asset("ANIM", "anim/shadow_skinchangefx.zip"),
        Asset("ANIM", "anim/player_townportal.zip"),
        Asset("ANIM", "anim/player_channel.zip"),

        Asset("SOUND", "sound/sfx.fsb"),
        Asset("SOUND", "sound/wilson.fsb"),

        Asset("ANIM", "anim/player_ghost_withhat.zip"),
        Asset("ANIM", "anim/player_revive_ghosthat.zip"),
        Asset("ANIM", "anim/player_revive_to_character.zip"),
        Asset("ANIM", "anim/player_knockedout.zip"),
        Asset("ANIM", "anim/player_emotesxl.zip"),
        Asset("ANIM", "anim/player_emotes_dance0.zip"),
        Asset("ANIM", "anim/player_emotes_sit.zip"),
        Asset("ANIM", "anim/player_emotes.zip"),
        Asset("ANIM", "anim/player_hatdance.zip"),
        Asset("ANIM", "anim/player_bow.zip"),
        Asset("ANIM", "anim/tears.zip"),
        Asset("ANIM", "anim/puff_spawning.zip"),
        Asset("ANIM", "anim/attune_fx.zip"),

        Asset("ANIM", "anim/player_idles_groggy.zip"),
        Asset("ANIM", "anim/player_groggy.zip"),

        Asset("ANIM", "anim/player_encumbered.zip"),
        Asset("ANIM", "anim/player_encumbered_jump.zip"),

        Asset("ANIM", "anim/player_sandstorm.zip"),
        Asset("ANIM", "anim/player_tiptoe.zip"),

        Asset("ANIM", "anim/corner_dude.zip"),

        Asset("IMAGE", "images/colour_cubes/ghost_cc.tex"),
        Asset("IMAGE", "images/colour_cubes/mole_vision_on_cc.tex"),
        Asset("IMAGE", "images/colour_cubes/mole_vision_off_cc.tex"),

        Asset("ANIM", "anim/player_mount.zip"),
        Asset("ANIM", "anim/player_mount_travel.zip"),
        Asset("ANIM", "anim/player_mount_actions.zip"),
        Asset("ANIM", "anim/player_mount_actions_item.zip"),
        Asset("ANIM", "anim/player_mount_unique_actions.zip"),
        Asset("ANIM", "anim/player_mount_one_man_band.zip"),
        Asset("ANIM", "anim/player_mount_blowdart.zip"),
        Asset("ANIM", "anim/player_mount_shock.zip"),
        Asset("ANIM", "anim/player_mount_frozen.zip"),
        Asset("ANIM", "anim/player_mount_groggy.zip"),
        Asset("ANIM", "anim/player_mount_encumbered.zip"),
        Asset("ANIM", "anim/player_mount_sandstorm.zip"),
        Asset("ANIM", "anim/player_mount_hit_darkness.zip"),
        Asset("ANIM", "anim/player_mount_emotes.zip"),
        Asset("ANIM", "anim/player_mount_emotes_dance0.zip"),
        Asset("ANIM", "anim/player_mount_emotesxl.zip"),
        Asset("ANIM", "anim/player_mount_emotes_sit.zip"),
        Asset("ANIM", "anim/player_mount_bow.zip"),

        Asset("INV_IMAGE", "skull_"..name),
    }

    local clothing_assets = require("clothing_assets")
    for _, clothing_asset in pairs(clothing_assets) do
        table.insert(assets, clothing_asset)
    end

    local prefabs =
    {
        "brokentool",
        "frostbreath",
        "mining_fx",
        "mining_ice_fx",
        "die_fx",
        "ghost_transform_overlay_fx",
        "attune_out_fx",
        "attune_in_fx",
        "attune_ghost_in_fx",
        "staff_castinglight",
        "staffcastfx",
        "staffcastfx_mount",
        "book_fx",
        "book_fx_mount",
        "emote_fx",
        "tears",
        "shock_fx",
        "splash",
        "globalmapicon",

        -- Player specific classified prefabs
        "player_classified",
        "inventory_classified",
    }

    if starting_inventory ~= nil or customprefabs ~= nil then
        local prefabs_cache = {}
        for i, v in ipairs(prefabs) do
            prefabs_cache[v] = true
        end

        if starting_inventory ~= nil then
            for i, v in ipairs(starting_inventory) do
                if not prefabs_cache[v] then
                    table.insert(prefabs, v)
                    prefabs_cache[v] = true
                end
            end
        end

        if customprefabs ~= nil then
            for i, v in ipairs(customprefabs) do
                if not prefabs_cache[v] then
                    table.insert(prefabs, v)
                    prefabs_cache[v] = true
                end
            end
        end
    end

    if customassets ~= nil then
        for i, v in ipairs(customassets) do
            table.insert(assets, v)
        end
    end

    local function fn()
        local inst = CreateEntity()

        table.insert(AllPlayers, inst)

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddDynamicShadow()
        inst.entity:AddMiniMapEntity()
        inst.entity:AddLight()
        inst.entity:AddLightWatcher()
        inst.entity:AddNetwork()

        inst.Transform:SetFourFaced()

        inst.AnimState:SetBank("wilson")
        inst.AnimState:SetBuild(name) --do we still need to do this or can we assume that the skinner will be setting the appropriate build?
        inst.AnimState:PlayAnimation("idle")

        inst.AnimState:Hide("ARM_carry")
        inst.AnimState:Hide("HAT")
        inst.AnimState:Hide("HAIR_HAT")
        inst.AnimState:Show("HAIR_NOHAT")
        inst.AnimState:Show("HAIR")
        inst.AnimState:Show("HEAD")
        inst.AnimState:Hide("HEAD_HAT")

        inst.AnimState:OverrideSymbol("fx_wipe", "wilson_fx", "fx_wipe")
        inst.AnimState:OverrideSymbol("fx_liquid", "wilson_fx", "fx_liquid")
        inst.AnimState:OverrideSymbol("shadow_hands", "shadow_hands", "shadow_hands")

        --Additional effects symbols for hit_darkness animation
        inst.AnimState:AddOverrideBuild("player_hit_darkness")
        inst.AnimState:AddOverrideBuild("player_receive_gift")
        inst.AnimState:AddOverrideBuild("player_actions_uniqueitem")
        inst.AnimState:AddOverrideBuild("player_wrap_bundle")

        inst.DynamicShadow:SetSize(1.3, .6)

        inst.MiniMapEntity:SetIcon(name..".png")
        inst.MiniMapEntity:SetPriority(10)
        inst.MiniMapEntity:SetCanUseCache(false)
        inst.MiniMapEntity:SetDrawOverFogOfWar(true)

        --Default to electrocute light values
        inst.Light:SetIntensity(.8)
        inst.Light:SetRadius(.5)
        inst.Light:SetFalloff(.65)
        inst.Light:SetColour(255 / 255, 255 / 255, 236 / 255)
        inst.Light:Enable(false)

        inst.LightWatcher:SetLightThresh(.075)
        inst.LightWatcher:SetDarkThresh(.05)

        MakeCharacterPhysics(inst, 75, .5)

        inst:AddTag("player")
        inst:AddTag("scarytoprey")
        inst:AddTag("character")
        inst:AddTag("lightningtarget")

        inst.AttachClassified = AttachClassified
        inst.DetachClassified = DetachClassified
        inst.OnRemoveEntity = OnRemoveEntity
        inst.CanExamine = nil -- Can be overridden; Needs to be on client as well for actions
        inst.ActionStringOverride = nil -- Can be overridden; Needs to be on client as well for actions
        inst.CanUseTouchStone = CanUseTouchStone -- Didn't want to make touchstonetracker a networked component
        inst.GetTemperature = GetTemperature -- Didn't want to make temperature a networked component
        inst.IsFreezing = IsFreezing -- Didn't want to make temperature a networked component
        inst.IsOverheating = IsOverheating -- Didn't want to make temperature a networked component
        inst.GetMoisture = GetMoisture -- Didn't want to make moisture a networked component
        inst.GetMaxMoisture = GetMaxMoisture -- Didn't want to make moisture a networked component
        inst.GetMoistureRateScale = GetMoistureRateScale -- Didn't want to make moisture a networked component
        inst.GetSandstormLevel = GetSandstormLevel -- Didn't want to make stormwatcher a networked component
        inst.IsCarefulWalking = IsCarefulWalking -- Didn't want to make carefulwalking a networked component
        inst.EnableMovementPrediction = EnableMovementPrediction
        inst.ShakeCamera = ShakeCamera
        inst.SetGhostMode = SetGhostMode
        inst.IsActionsVisible = IsActionsVisible

        inst.foleysound = nil --Characters may override this in common_postinit
        inst.playercolour = DEFAULT_PLAYER_COLOUR --Default player colour used in case it doesn't get set properly
        inst.ghostenabled = GetGhostEnabled(TheNet:GetServerGameMode())

        inst.jointask = inst:DoTaskInTime(0, OnPlayerJoined)
        inst:ListenForEvent("setowner", OnSetOwner)

        inst:AddComponent("talker")
        inst.components.talker:SetOffsetFn(GetTalkerOffset)

        inst:AddComponent("frostybreather")
        inst.components.frostybreather:SetOffsetFn(GetFrostyBreatherOffset)

        inst:AddComponent("playervision")
        inst:AddComponent("areaaware")
        inst.components.areaaware:SetUpdateDist(2)
        
        inst:AddComponent("attuner")
        --attuner server listeners are not registered until after "ms_playerjoined" has been pushed

        inst:AddComponent("playeravatardata")

        if common_postinit ~= nil then
            common_postinit(inst)
        end

        --trader (from trader component) added to pristine state for optimization
        inst:AddTag("trader")

        --debuffable (from debuffable component) added to pristine state for optimization
        inst:AddTag("debuffable")

        --Sneak these into pristine state for optimization
        inst:AddTag("_health")
        inst:AddTag("_hunger")
        inst:AddTag("_sanity")
        inst:AddTag("_builder")
        inst:AddTag("_combat")
        inst:AddTag("_moisture")
        inst:AddTag("_sheltered")
        inst:AddTag("_rider")

        inst.userid = ""

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        inst.persists = false --handled in a special way

        --Remove these tags so that they can be added properly when replicating components below
        inst:RemoveTag("_health")
        inst:RemoveTag("_hunger")
        inst:RemoveTag("_sanity")
        inst:RemoveTag("_builder")
        inst:RemoveTag("_combat")
        inst:RemoveTag("_moisture")
        inst:RemoveTag("_sheltered")
        inst:RemoveTag("_rider")

        if inst.ghostenabled then
            inst.Network:RemoveUserFlag(USERFLAGS.IS_GHOST)
        end
        inst.Network:RemoveUserFlag(USERFLAGS.CHARACTER_STATE_1)
        inst.Network:RemoveUserFlag(USERFLAGS.CHARACTER_STATE_2)

        inst.player_classified = SpawnPrefab("player_classified")
        inst.player_classified.entity:SetParent(inst.entity)

        inst:ListenForEvent("death", OnPlayerDeath)
        if inst.ghostenabled then
            --Ghost events (Edit stategraph to push makeplayerghost instead of makeplayerdead to enter ghost state)
            inst:ListenForEvent("makeplayerghost", OnMakePlayerGhost)
            inst:ListenForEvent("respawnfromghost", OnRespawnFromGhost)
            inst:ListenForEvent("ghostdissipated", OnPlayerDied)
        else
            inst:ListenForEvent("playerdied", OnPlayerDied)
        end

        inst:AddComponent("bloomer")
        inst:AddComponent("birdattractor")

        inst:AddComponent("maprevealable")
        inst.components.maprevealable:SetIconPriority(10)

        inst:AddComponent("locomotor") -- locomotor must be constructed before the stategraph
        ConfigurePlayerLocomotor(inst)

        inst:AddComponent("combat")
        inst.components.combat:SetDefaultDamage(TUNING.UNARMED_DAMAGE)
        inst.components.combat.GetGiveUpString = giveupstring
        inst.components.combat.GetBattleCryString = battlecrystring
        inst.components.combat.hiteffectsymbol = "torso"
        inst.components.combat.pvp_damagemod = TUNING.PVP_DAMAGE_MOD -- players shouldn't hurt other players very much
        inst.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD)
        inst.components.combat:SetRange(2)

        MakeMediumBurnableCharacter(inst, "torso")
        inst.components.burnable:SetBurnTime(TUNING.PLAYER_BURN_TIME)
        inst.components.burnable.nocharring = true

        MakeLargeFreezableCharacter(inst, "torso")
        inst.components.freezable:SetResistance(4)
        inst.components.freezable:SetDefaultWearOffTime(TUNING.PLAYER_FREEZE_WEAR_OFF_TIME)

        inst:AddComponent("inventory")
        --players handle inventory dropping manually in their stategraph
        inst.components.inventory:DisableDropOnDeath()

        inst:AddComponent("bundler")

        -- Player labeling stuff
        inst:AddComponent("inspectable")
        inst.components.inspectable.getstatus = GetStatus
        inst.components.inspectable.getspecialdescription = GetDescription

        -- Player avatar popup inspection
        inst:AddComponent("playerinspectable")

        inst:AddComponent("temperature")
        inst.components.temperature.usespawnlight = true

        inst:AddComponent("moisture")
        inst:AddComponent("sheltered")
        inst:AddComponent("stormwatcher")
        inst:AddComponent("carefulwalker")

        -------

        inst:AddComponent("health")
        inst.components.health:SetMaxHealth(TUNING.WILSON_HEALTH)
        inst.components.health.nofadeout = true

        inst:AddComponent("hunger")
        inst.components.hunger:SetMax(TUNING.WILSON_HUNGER)
        inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE)
        inst.components.hunger:SetKillRate(TUNING.WILSON_HEALTH/TUNING.STARVE_KILL_TIME)

        inst:AddComponent("sanity")
        inst.components.sanity:SetMax(TUNING.WILSON_SANITY)

        inst:AddComponent("builder")

        -------

        inst:AddComponent("wisecracker")
        inst:AddComponent("distancetracker")

        inst:AddComponent("catcher")

        inst:AddComponent("playerlightningtarget")

        inst:AddComponent("trader")
        inst.components.trader:SetAcceptTest(ShouldAcceptItem)
        inst.components.trader.onaccept = OnGetItem
        inst.components.trader.deleteitemonaccept = false

        -------

        inst:AddComponent("eater")
        inst:AddComponent("leader")
        inst:AddComponent("age")
        inst:AddComponent("rider")

        inst:AddComponent("petleash")
        inst.components.petleash:SetMaxPets(1)
        inst.components.petleash:SetOnSpawnFn(OnSpawnPet)
        inst.components.petleash:SetOnDespawnFn(OnDespawnPet)

        inst:AddComponent("grue")
        inst.components.grue:SetSounds("dontstarve/charlie/warn","dontstarve/charlie/attack")

        inst:AddComponent("pinnable")
        inst:AddComponent("debuffable")
        inst.components.debuffable:SetFollowSymbol("headbase", 0, -200, 0)

        inst:AddComponent("grogginess")
        inst.components.grogginess:SetResistance(3)
        inst.components.grogginess:SetKnockOutTest(ShouldKnockout)

        inst:AddComponent("colourtweener")
        inst:AddComponent("touchstonetracker")

        inst:AddComponent("skinner")
        inst:AddComponent("giftreceiver")

        inst:AddInherentAction(ACTIONS.PICK)
        inst:AddInherentAction(ACTIONS.SLEEPIN)
        inst:AddInherentAction(ACTIONS.CHANGEIN)

        inst:SetStateGraph("SGwilson")

        RegisterMasterEventListeners(inst)

        --HUD interface
        inst.IsHUDVisible = IsHUDVisible
        inst.ShowActions = ShowActions
        inst.ShowHUD = ShowHUD
        inst.ShowWardrobePopUp = ShowWardrobePopUp
        inst.ShowGiftItemPopUp = ShowGiftItemPopUp
        inst.SetCameraDistance = SetCameraDistance
        inst.SetCameraZoomed = SetCameraZoomed
        inst.SnapCamera = SnapCamera
        inst.ScreenFade = ScreenFade
        inst.ScreenFlash = ScreenFlash

        --Other
        inst._scalesource = nil
        inst.ApplyScale = ApplyScale

        if master_postinit ~= nil then
            master_postinit(inst)
        end

        --V2C: sleeping bag hacks
        inst.OnSleepIn = OnSleepIn
        inst.OnWakeUp = OnWakeUp

        inst._OnSave = inst.OnSave
        inst._OnPreLoad = inst.OnPreLoad
        inst._OnLoad = inst.OnLoad
        inst._OnDespawn = inst.OnDespawn
        inst.OnSave = OnSave
        inst.OnPreLoad = OnPreLoad
        inst.OnLoad = OnLoad
        inst.OnDespawn = OnDespawn

        if starting_inventory ~= nil and #starting_inventory > 0 then
            --Will be triggered from SpawnNewPlayerOnServerFromSim
            --only if it is a new spawn
            inst._OnNewSpawn = inst.OnNewSpawn
            inst.OnNewSpawn = function()
                if inst.components.inventory ~= nil then
                    inst.components.inventory.ignoresound = true
                    for i, v in ipairs(starting_inventory) do
                        inst.components.inventory:GiveItem(SpawnPrefab(v))
                    end
                    inst.components.inventory.ignoresound = false
                end
                if inst._OnNewSpawn ~= nil then
                    inst:_OnNewSpawn()
                    inst._OnNewSpawn = nil
                end
            end
        end

        inst:ListenForEvent("startfiredamage", OnStartFireDamage)
        inst:ListenForEvent("stopfiredamage", OnStopFireDamage)

        TheWorld:PushEvent("ms_playerspawn", inst)
		
		----------------------修改上楼梯
		
		local function oncollide2(inst, other)
		if other == nil or not other:IsValid() or other.keyipanpa == nil then return end
		local p1x, p1y, p1z = inst.Transform:GetWorldPosition()
		 local p2x, p2y, p2z = other.Transform:GetWorldPosition()
		local cc = math.sqrt((p1x-p2x)*(p1x-p2x)+(p1z-p2z)*(p1z-p2z))
		if cc > 1.03 then
			inst.Transform:SetPosition(p2x,p2y+2.5,p2z)
		end
	    end
	    inst.Physics:SetCollisionCallback(oncollide2)
		
		-----------------------------------------------万妖塔修正
		inst:DoPeriodicTask(20, function()
		if inst.siwangzhita then
			local p2x, p2y, p2z = inst.Transform:GetWorldPosition()
			local cc = math.sqrt((TUNING.SIWANGZHITAx-p2x)*(TUNING.SIWANGZHITAx-p2x)+(TUNING.SIWANGZHITAz-p2z)*(TUNING.SIWANGZHITAz-p2z))
			if cc > 21 then
				inst.siwangzhita = nil
			end
		end
	    end)
		
		----------------修改在线天数
		
	inst:DoPeriodicTask(480.6, function()
	    inst.zaixiantianshu = (inst.zaixiantianshu or 0) + 1
    end)

--------------------------------修改 游戏说明
inst:DoTaskInTime(5.1, function()
	if (inst.zaixiantianshu or 0) <= 0 then
		inst.zaixiantianshu = (inst.zaixiantianshu or 0) + 0.1
		local item = SpawnPrefab("LIGHT_blueprint")
		if item.components.named then
			item.components.named:SetName("游戏说明")
		end
		--inst.components.inventory:GiveItem(item) 
		local shuoming = ""
		if inst.prefab == "wilson" then
			shuoming = "wilson人物说明"
		elseif inst.prefab == "willow" then
			shuoming = "willow人物说明"
		elseif inst.prefab == "wendy" then
			shuoming = "wendy人物说明"
		elseif inst.prefab == "wathgrithr" then
			shuoming = "wathgrithr人物说明"
		elseif inst.prefab == "wickerbottom" then
			shuoming = "wickerbottom人物说明"
		elseif inst.prefab == "wx78" then
			shuoming = "wx78人物说明"
		elseif inst.prefab == "madoka" then
			shuoming = "madoka人物说明"
		elseif inst.prefab == "faroz" then
			shuoming = "faroz人物说明"
		elseif inst.prefab == "horo" then
			shuoming = "horo人物说明"
		elseif inst.prefab == "wukong" then
			shuoming = "wukong人物说明"
		elseif inst.prefab == "webber" then
			shuoming = "webber人物说明"
		elseif inst.prefab == "wolfgang" then
			shuoming = "wolfgang人物说明"
		elseif inst.prefab == "broccoli" then
			shuoming = "broccoli人物说明"
		elseif inst.prefab == "cac" then
			shuoming = "cac人物说明"
		elseif inst.prefab == "reimu" then
			shuoming = "reimu人物说明"
		end
		local item = SpawnPrefab("LIGHT_blueprint")
		if item.components.named then
			item.components.named:SetName(shuoming)
		end
		---inst.components.inventory:GiveItem(item) 
	end
end)
		------------------------------------------------------------

		--------------------------------------------------------------
		inst.danseqiuhaoma = {}
		
		inst:AddComponent("named")--修改

		inst:DoTaskInTime(0, function()
			inst.wanjianame = inst.Network:GetClientName()
		end)
			
		inst:DoPeriodicTask(2, function(inst)
			local A = ""
			local B = ""
           A = "<称号>"..A
			B = "<战功>"..B
			if inst.wanjianame == "饥友在这里改名" then 
			   local  J = math.random () 
			   if J  < 0.2  then 
			   inst.wanjianame = "王大锤" 
			   elseif J < 0.3 then 
			   inst.wanjianame = "陈冠希" 
			   elseif J < 0.4 then 
			   inst.wanjianame = "周杰伦" 
			   elseif J < 0.5 then 
			   inst.wanjianame = "谢霆锋" 
			   end
			end
			--inst.components.named:SetName(A..B..(inst.wanjianame or ""))
			inst.components.named:SetName((inst.wanjianame or ""))
		end)
		
		
		
		
		
		-----inst.renwu = 0
		

        return inst
    end

    return Prefab(name, fn, assets, prefabs)
end

return MakePlayerCharacter
