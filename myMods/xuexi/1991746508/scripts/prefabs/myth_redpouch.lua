local assets =
{
    Asset("ANIM", "anim/myth_redpouch.zip"),
    Asset("ANIM", "anim/redpouch.zip"),	
}

local prefabs =
{
    --"myth_redpouch_unwrap",
	"myth_goldnugget_ingot",
}

local FADE_FRAMES = 5
local FADE_INTENSITY = .8
local FADE_RADIUS = 1
local FADE_FALLOFF = .5

local function OnUpdateFade(inst)
    local k
    if inst._fade:value() <= FADE_FRAMES then
        inst._fade:set_local(math.min(inst._fade:value() + 1, FADE_FRAMES))
        k = inst._fade:value() / FADE_FRAMES
    else
        inst._fade:set_local(math.min(inst._fade:value() + 1, FADE_FRAMES * 2 + 1))
        k = (FADE_FRAMES * 2 + 1 - inst._fade:value()) / FADE_FRAMES
    end

    inst._light.Light:SetIntensity(FADE_INTENSITY * k)
    inst._light.Light:SetRadius(FADE_RADIUS * k)
    inst._light.Light:SetFalloff(1 - (1 - FADE_FALLOFF) * k)
    inst._light.Light:Enable(inst._fade:value() > 0 and inst._fade:value() <= FADE_FRAMES * 2)

    if inst._fade:value() == FADE_FRAMES or inst._fade:value() > FADE_FRAMES * 2 then
        inst._fadetask:Cancel()
        inst._fadetask = nil
    end
end

local function OnFadeDirty(inst)
    if inst._fadetask == nil then
        inst._fadetask = inst:DoPeriodicTask(FRAMES, OnUpdateFade)
    end
    OnUpdateFade(inst)
end

local function FadeOut(inst)
    inst._fade:set(FADE_FRAMES + 1)
    if inst._fadetask == nil then
        inst._fadetask = inst:DoPeriodicTask(FRAMES, OnUpdateFade)
    end
end

local function OnChangeFollowSymbol(inst, target, followsymbol, followoffset)
    inst.Follower:FollowSymbol(target.GUID, followsymbol, followoffset.x, followoffset.y, followoffset.z)
end

local function OnAttached(inst, target, followsymbol, followoffset)
    inst.entity:SetParent(target.entity)
    inst._light.entity:SetParent(target.entity)
    OnChangeFollowSymbol(inst, target, followsymbol, followoffset)
end

local function OnDetached(inst)
    local x, y, z
    local parent = inst.entity:GetParent()
    if parent ~= nil then
        x, y, z = parent.Transform:GetWorldPosition()
    else
        x, y, z = inst.Transform:GetWorldPosition()
    end	
	
	inst.AnimState:PlayAnimation("unwrap")
	inst.persists = false
    inst:ListenForEvent("animover", inst.Remove)
	
    local cloud = SpawnPrefab("myth_goldnugget_ingot")
    cloud:OnDrop(Vector3(x, 0, z))
end

local function OnTimerDone(inst, data)
    if data.name == "explode" then
        inst.components.debuff:Stop()
    end
end

local function CreateLight()
    local inst = CreateEntity()

    inst:AddTag("FX")
    --[[Non-networked entity]]
    inst.entity:SetCanSleep(false)
    inst.persists = false

    inst.entity:AddTransform()
    inst.entity:AddLight()

    inst.Light:SetFalloff(FADE_FALLOFF)
    inst.Light:SetIntensity(FADE_INTENSITY)
    inst.Light:SetRadius(FADE_RADIUS)
    inst.Light:SetColour(228 / 255, 69 / 255, 22 / 255)
    inst.Light:Enable(false)

    return inst
end

local function OnEntityReplicated(inst)
    local parent = inst.entity:GetParent()
    if parent ~= nil then
        inst._light.entity:SetParent(parent.entity)
    end
end

local function OnRemoveEntity(inst)
    if inst._light:IsValid() then
        inst._light:Remove()
    end
end

local function OnInit(inst)
    --local parent = inst.entity:GetParent()
    --if parent ~= nil then
    --    parent:PushEvent("startfumedebuff", inst)
    --end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddFollower()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst:AddTag("FX")
    inst:AddTag("NOCLICK")

    inst.AnimState:SetBank("redpouch")
    inst.AnimState:SetBuild("myth_redpouch")
    inst.AnimState:PlayAnimation("idle_onesize")
    inst.AnimState:SetLightOverride(.3)
    inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
    inst.AnimState:SetFinalOffset(3)

    inst._light = CreateLight()
    inst._light.entity:SetParent(inst.entity)

    inst._fade = net_smallbyte(inst.GUID, "myth_redpouch._fade", "fadedirty")

    inst._fadetask = inst:DoPeriodicTask(FRAMES, OnUpdateFade)

    inst.OnRemoveEntity = OnRemoveEntity
    inst:DoTaskInTime(0, OnInit)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        inst:ListenForEvent("fadedirty", OnFadeDirty)

        inst.OnEntityReplicated = OnEntityReplicated

        return inst
    end
    inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(OnAttached)
    inst.components.debuff:SetDetachedFn(OnDetached)
    inst.components.debuff:SetChangeFollowSymbolFn(OnChangeFollowSymbol)

    inst:AddComponent("timer")
    inst.components.timer:StartTimer("explode", 3.5)
    inst:ListenForEvent("timerdone", OnTimerDone)

    return inst
end

return Prefab("myth_redpouch", fn, assets, prefabs)
