local Modifier = {
    Id = 0,
    Source = "",
    CalculateWeight = nil
}
Modifier.__index = Modifier

function Modifier:New(id)
    return setmetatable({
        Id= id
    }
    , Modifier)
end

function Modifier:GetWeight()
    if self.CalculateWeight == nil then
        error("You Must define CalculateWight methods in ineritance class")
    end
    return self.CalculateWeight()
end



local LifeModifier = {
    RemainingLife = 0    
}

local AuraModifier = {
    Aura = nil,
    RemainingTime = 0,
    MinStacks = 0,
    MaxStacks = 0
}

local ResourceModifier = {
    PrimaryResource = 0,
    SecondaryResource = 0
}