local types = {
	[33240] = {2000000000, 'exp', 'EXP UP!'},
	[33241] = {1, 'magiclevel', 'MAGICLEVEL UP!'},
	[33242] = {1, 'skillsnormal', 'AXE UP!', SKILL_AXE},
	[33243] = {1, 'skillsnormal', 'SWORD UP!', SKILL_SWORD},
	[33244] = {1, 'skillsnormal', 'DISTANCE UP!', SKILL_DISTANCE},
	[33245] = {1, 'skillsnormal', 'SHIELD UP!', SKILL_SHIELD},
	[33246] = {1, 'skillsnormal', 'FISHING UP!', SKILL_FISHING},
	[33247] = {1, 'skillsnormal', 'FIST UP!', SKILL_FIST}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local skill = types[item.itemid]
	if not skill then
		return false
	end

	if skill[2] == 'exp' then
		if player:getLevel() < 2000 then
			player:addExperience(skill[1] * Game.getExperience(player:getLevel()), true)
			player:say(skill[3], TALKTYPE_MONSTER_SAY)
		end
	end

	if skill[2] == 'magiclevel' then
		player:addManaSpent(player:getVocation():getRequiredManaSpent(player:getBaseMagicLevel() + skill[1]) - player:getManaSpent())
		player:say(skill[3], TALKTYPE_MONSTER_SAY)
	end

	if skill[2] == 'skillsnormal' then
		local skillId = skill[4]
		player:addSkillTries(skillId, player:getVocation():getRequiredSkillTries(skillId, player:getSkillLevel(skillId) + skill[1]) - player:getSkillTries(skillId))
		player:say(skill[3], TALKTYPE_MONSTER_SAY)
	end

	return true
end
