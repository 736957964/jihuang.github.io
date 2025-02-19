require "behaviours/runaway"
require "behaviours/wander"
require "behaviours/doaction"
require "behaviours/findflower"
require "behaviours/panic"

local RUN_AWAY_DIST = 5
local STOP_RUN_AWAY_DIST = 10
local POLLINATE_FLOWER_DIST = 10
local SEE_FLOWER_DIST = 30
local MAX_WANDER_DIST = 20


local function NearestFlowerPos(inst)
    local flower = GetClosestInstWithTag("flower", inst, SEE_FLOWER_DIST)
    if flower and 
       flower:IsValid() then
        return Vector3(flower.Transform:GetWorldPosition() )
    end
end

local function GoHomeAction(inst)
    local flower = GetClosestInstWithTag("flower", inst, SEE_FLOWER_DIST)
    if flower and 
       flower:IsValid() then
        return BufferedAction(inst, flower, ACTIONS.GOHOME, nil, Vector3(flower.Transform:GetWorldPosition() ))
    end
end

local ButterflyBrain = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

function ButterflyBrain:OnStart()

    local root =
        PriorityNode(
        {
            --WhileNode( function() return self.inst.components.hauntable and self.inst.components.hauntable.panic end, "PanicHaunted", Panic(self.inst)),
            --WhileNode( function() return self.inst.components.health.takingfiredamage end, "OnFire", Panic(self.inst)),
            --RunAway(self.inst, "scarytoprey", RUN_AWAY_DIST, STOP_RUN_AWAY_DIST),
			----	��λɱ		
			WhileNode( function() 
				return self.inst.components.combat.target == nil or not self.inst.components.combat:InCooldown() end, 			
				"AttackMomentarily",
				ChaseAndAttack(self.inst, 15, 15) ),      
			WhileNode( function() 
				return self.inst.components.combat.target and self.inst.components.combat:InCooldown() end, 
				"Dodge", RunAway(self.inst, function() 
				return self.inst.components.combat.target end,  6,  8) ),
			
            IfNode(function() return not TheWorld.state.isday end, "IsNight",
                DoAction(self.inst, GoHomeAction, "go home", true )),
            IfNode(function() return self.inst.components.pollinator:HasCollectedEnough() end, "IsFullOfPollen",
                DoAction(self.inst, GoHomeAction, "go home", true )),
            FindFlower(self.inst),
            Wander(self.inst, NearestFlowerPos, MAX_WANDER_DIST)            
        },1)
    
    
    self.bt = BT(self.inst, root)
    
         
end

return ButterflyBrain