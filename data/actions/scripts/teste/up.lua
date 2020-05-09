function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item.itemid == 1945 and item.actionid == 100 then
        if player:getLevel() < 2000 then
            player:addExperience(2000000000, true)
            player:say('EXP UP!', TALKTYPE_MONSTER_SAY)
            item:transform(1946)
        end
    elseif item.itemid == 1946 and item.actionid == 100 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 101 then
		player:addManaSpent(player:getVocation():getRequiredManaSpent(player:getBaseMagicLevel() + 1) - player:getManaSpent())
        player:say('MAGICLEVEL UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 101 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 102 then
		player:addSkillTries(SKILL_FIST, player:getVocation():getRequiredSkillTries(SKILL_FIST, player:getSkillLevel(SKILL_FIST) + 1) - player:getSkillTries(SKILL_FIST))
        player:say('FIST UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 102 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 103 then
		player:addSkillTries(SKILL_CLUB, player:getVocation():getRequiredSkillTries(SKILL_CLUB, player:getSkillLevel(SKILL_CLUB) + 1) - player:getSkillTries(SKILL_CLUB))
        player:say('CLUB UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 103 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 104 then
		player:addSkillTries(SKILL_SWORD, player:getVocation():getRequiredSkillTries(SKILL_SWORD, player:getSkillLevel(SKILL_SWORD) + 1) - player:getSkillTries(SKILL_SWORD))
        player:say('SWORD UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 104 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 105 then
		player:addSkillTries(SKILL_AXE, player:getVocation():getRequiredSkillTries(SKILL_AXE, player:getSkillLevel(SKILL_AXE) + 1) - player:getSkillTries(SKILL_AXE))
        player:say('AXE UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 105 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 106 then
		player:addSkillTries(SKILL_DISTANCE, player:getVocation():getRequiredSkillTries(SKILL_DISTANCE, player:getSkillLevel(SKILL_DISTANCE) + 1) - player:getSkillTries(SKILL_DISTANCE))
        player:say('DISTANCE UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 106 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 107 then
		player:addSkillTries(SKILL_SHIELD, player:getVocation():getRequiredSkillTries(SKILL_SHIELD, player:getSkillLevel(SKILL_SHIELD) + 1) - player:getSkillTries(SKILL_SHIELD))
        player:say('SHIELD UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 107 then
        item:transform(1945)
    end

    if item.itemid == 1945 and item.actionid == 108 then
		player:addSkillTries(SKILL_FISHING, player:getVocation():getRequiredSkillTries(SKILL_FISHING, player:getSkillLevel(SKILL_FISHING) + 1) - player:getSkillTries(SKILL_FISHING))
        player:say('FISHING UP!', TALKTYPE_MONSTER_SAY)
        item:transform(1946)
    elseif item.itemid == 1946 and item.actionid == 108 then
        item:transform(1945)
    end

end
