local Spell = {id = 0}
Spell.__index = Spell

function Spell:New(id)
    return setmetatable({
        id= id
    }, Spell)
end

function Spell:CanBeCasted()
    
end

function Spell:IsInRange()
    
end

function Spell:IsReady(args)
    
end

function Spell:IsLearned(args)
    
end

return Spell