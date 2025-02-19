require "prefabutil"

local tacklecontainer_sounds =
{
    open = "hookline_2/characters/hermit/tacklebox/small_open",
    close = "hookline_2/characters/hermit/tacklebox/small_close",
}

local function onopen(inst)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("open")
        inst.AnimState:PushAnimation("opened", false)
        inst.SoundEmitter:PlaySound("saltydog/common/saltbox/open")
    end
end

local function onclose(inst)
    if not inst:HasTag("burnt") then
        --inst.AnimState:PlayAnimation("close")
        inst.AnimState:PushAnimation("closed", false)
        inst.SoundEmitter:PlaySound("saltydog/common/saltbox/close")
    end
end

local function OnPutInInventory(inst)
	inst.components.container:Close()
	inst.AnimState:PlayAnimation("closed", false)
end

local function onburnt(inst)
	inst.components.container:DropEverything()
	DefaultBurntFn(inst)
end

local function onsave(inst, data)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() or inst:HasTag("burnt") then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt and inst.components.burnable ~= nil then
        inst.components.burnable.onburnt(inst)
    end
end

local function MakeTackleContainer(name, bank, build, assets)
    assets = assets or {}
    table.insert(assets, Asset("ANIM", "anim/"..build..".zip"))

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddMiniMapEntity()
        inst.entity:AddNetwork()

		--inst.MiniMapEntity:SetIcon(name..".png")

        inst.AnimState:SetBank("myth_mooncake_box")
        inst.AnimState:SetBuild("myth_mooncake_box")
        inst.AnimState:PlayAnimation("closed")

		MakeInventoryPhysics(inst)
		MakeInventoryFloatable(inst, "med")

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

		inst:AddComponent("inspectable")

        inst:AddComponent("container")
        inst.components.container:WidgetSetup(name)
        inst.components.container.onopenfn = onopen
		inst.components.container.onclosefn = onclose
        inst.components.container.skipclosesnd = true
        inst.components.container.skipopensnd = true
		inst.components.container.droponopen = true

		inst:AddComponent("inventoryitem")
		inst.components.inventoryitem:SetOnPutInInventoryFn(OnPutInInventory)
        inst.components.inventoryitem.atlasname = "images/inventoryimages/myth_mooncake_box.xml"

		inst:AddComponent("lootdropper")

		MakeSmallBurnable(inst)
		inst.components.burnable:SetOnBurntFn(onburnt)
		MakeMediumPropagator(inst)

        inst:AddComponent("hauntable")
        inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

        --if name == "supertacklecontainer" then
        --    inst._sounds = supertacklecontainer_sounds
        --else
            inst._sounds = tacklecontainer_sounds
        --end

        inst.OnSave = onsave
        inst.OnLoad = onload

        return inst
    end

    return Prefab(name, fn, assets, prefabs)
end

return MakeTackleContainer("myth_mooncake_box", "myth_mooncake_box", "myth_mooncake_box", { Asset("ANIM", "anim/ui_tacklecontainer_3x2.zip"),Asset("ATLAS", "images/inventoryimages/myth_mooncake_box.xml"), })