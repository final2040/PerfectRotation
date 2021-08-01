local SpellStub = {    
    CanCast = true,
    IsInRange = true,
    IsReady = true,
    IsLearned = true,
}
SpellStub.__index = SpellStub

function SpellStub.New()
    return setmetatable({        
    }, SpellStub)
end

function SpellStub:CanBeCasted()
    return self.CanCast
end

function SpellStub:SetCanBeCasted(canCast)
    self.CanCast = canCast or true
    return self
end

return SpellStub