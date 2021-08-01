local Skill = {
    SkillId = 0,
    Weight = 0,   
    Spell = nil,
    Modifiers = {}
}
Skill.__index = Skill


function Skill.New(skillId, weight ,spell)
    return setmetatable({
        SkillId = skillId,  
        Weight = weight,      
        Spell = spell
    }, Skill)
end

function Skill:GetWeight()
    if self.Spell:CanBeCasted() then
        return self.Weight
    end    
    return 0
end

return Skill