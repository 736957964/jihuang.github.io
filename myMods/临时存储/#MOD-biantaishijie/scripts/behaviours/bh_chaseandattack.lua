Bh_ChaseAndAttack = Class(BehaviourNode, function(self, inst, max_chase_time, give_up_dist, max_attacks, findnewtargetfn, walk)
    BehaviourNode._ctor(self, "Bh_ChaseAndAttack")
    self.inst = inst
    self.findnewtargetfn = findnewtargetfn
    self.max_chase_time = max_chase_time
    self.give_up_dist = give_up_dist
    self.max_attacks = max_attacks
    self.numattacks = 0
    self.walk = walk
    
    -- we need to store this function as a key to use to remove itself later
    self.onattackfn = function(inst, data)
        self:OnAttackOther(data.target) 
    end

    self.inst:ListenForEvent("onattackother", self.onattackfn)
    self.inst:ListenForEvent("onmissother", self.onattackfn)
end)

function Bh_ChaseAndAttack:__tostring()
    return string.format("target %s", tostring(self.inst.components.combat.target))
end

function Bh_ChaseAndAttack:OnStop()
    self.inst:RemoveEventCallback("onattackother", self.onattackfn)
    self.inst:RemoveEventCallback("onmissother", self.onattackfn)
end

function Bh_ChaseAndAttack:OnAttackOther(target)
    --print ("on attack other", target)
    self.numattacks = self.numattacks + 1
    self.startruntime = nil -- reset max chase time timer
end

function Bh_ChaseAndAttack:Visit()
    
    local combat = self.inst.components.combat
    if self.status == READY then
        
        combat:ValidateTarget()
        
        if not combat.target and self.findnewtargetfn then
            combat.target = self.findnewtargetfn(self.inst)
        end
        
        --没有目标则失败
        if combat.target then
            self.inst.components.combat:BattleCry()
            self.startruntime = GetTime()
            self.numattacks = 0
            self.status = RUNNING
        else
            self.status = FAILED
        end
        
    end

    if self.status == RUNNING then
        
       local is_attacking = self.inst.sg:HasStateTag("attack")
        
		--没有目标则失败
        if not combat.target or not combat.target.entity:IsValid() then
            self.status = FAILED
            combat:SetTarget(nil)
            self.inst.components.locomotor:Stop()
			
		--目标死了才成功
        elseif combat.target.components.health and combat.target.components.health:IsDead() then
            self.status = SUCCESS
            combat:SetTarget(nil)
            self.inst.components.locomotor:Stop()
        else
            
            local hp = Point(combat.target.Transform:GetWorldPosition())
            local pt = Point(self.inst.Transform:GetWorldPosition())
            local dsq = distsq(hp, pt)
            local angle = self.inst:GetAngleToPoint(hp)
            local r= self.inst.Physics:GetRadius()+ (combat.target.Physics and combat.target.Physics:GetRadius() + .1 or 0)
            local running = self.inst.components.locomotor:WantsToRun()
            
            if (running and dsq > r*r) or (not running and dsq > combat:CalcAttackRangeSq() ) then
                --self.inst.components.locomotor:RunInDirection(angle)
                local shouldRun = not self.walk
				
				--走向目标，一般都是跑过去攻击
                self.inst.components.locomotor:GoToPoint(hp, nil, shouldRun)
				
            elseif not (self.inst.sg and self.inst.sg:HasStateTag("jumping")) then
                self.inst.components.locomotor:Stop()
                if self.inst.sg:HasStateTag("canrotate") then
                    self.inst:FacePoint(hp)
                end                
            end
                
            if combat:TryAttack() then
                -- reset chase timer when attack hits, not on attempts
            else
                if not self.startruntime then
                    self.startruntime = GetTime()
                    self.inst.components.combat:BattleCry()
                end
            end

            --达到最大攻击次数则成功
            if self.max_attacks and self.numattacks >= self.max_attacks then
                self.status = SUCCESS
                self.inst.components.combat:SetTarget(nil)
                self.inst.components.locomotor:Stop()
                return
            end
            
			--距离大于放弃距离，则失败
            if self.give_up_dist then
                if dsq >= self.give_up_dist*self.give_up_dist then
                    self.status = FAILED
                    self.inst.components.combat:GiveUp()
                    self.inst.components.locomotor:Stop()
                    return
                end
            end
            
			--时间大于追踪时间，则失败
            if self.max_chase_time and self.startruntime then
                local time_running = GetTime() - self.startruntime
                if time_running > self.max_chase_time then
                    self.status = FAILED
                    self.inst.components.combat:GiveUp()
                    self.inst.components.locomotor:Stop()
                    return
                end
            end
            self:Sleep(self.inst.zg_chaseandattack_period)
            
        end
        
    end
end
