local luaunit = require("lib.luaunit")
local skill = require("src.addon.skill")
local spellStub = require("tests.PerfectRotation.stubs.spellStub")

function TestNewRetunsDiferentInstances()
    local instance1 = skill.New(10)
    local instance2 = skill.New(24)

    luaunit.assertNotIs(instance1, instance2)
end

function TestWhenSkillIsAvailableReturnsWeight()
    local spellStub = spellStub.New():SetCanBeCasted(true)
    local instance1 = skill.New(10, 80, spellStub)  

    luaunit.assertEquals(instance1:GetWeight(), 80)
end


function TestWhenSkillIsNotAvailableReturnsWeight()
    local spellStub = spellStub.New():SetCanBeCasted(false)
    local instance1 = skill.New(10, 80, spellStub)  

    luaunit.assertEquals(instance1:GetWeight(), 80)
end

os.exit(luaunit.LuaUnit.run())






