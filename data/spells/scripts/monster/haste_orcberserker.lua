local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, 0)

local condition = Condition(CONDITION_HASTE)
condition:setParameter(CONDITION_PARAM_TICKS, 6*1000)
condition:setFormula(0, 90, 0, 110)
combat:addCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
