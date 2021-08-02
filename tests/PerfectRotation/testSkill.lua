local luaunit = require("lib.luaunit")
local skill = require("src.addon.skill")
local spellStub = require("tests.PerfectRotation.stubs.spellStub")

function TestNewRetunsDiferentInstances()
    local instance1 = skill.New(10)
    local instance2 = skill.New(24)

    luaunit.assertNotIs(instance1, instance2)    
end

function TestWhenSkillIsAvailableThenReturnsWeight()
    local spellStub = spellStub.New():SetCanBeCasted(true)
    local skill = skill.New(10, 80, spellStub)  

    luaunit.assertEquals(skill:GetWeight(), 80)
end


function TestWhenSkillIsNotAvailableThenReturnsWeight()
    -- arrange
    local spellStub = spellStub.New():SetCanBeCasted(false)
    local skill = skill.New(10, 80, spellStub)  
    -- act 
    local result = skill:GetWeight()
    -- assert    
    luaunit.assertEquals(result, 80)
end

os.exit(luaunit.LuaUnit.run())






