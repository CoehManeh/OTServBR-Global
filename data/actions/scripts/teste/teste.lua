function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	-- local ID_MOUNT = 119
	-- if not player:hasMount(ID_MOUNT) then
	-- 	player:say('nao tenho a montaria com ID: '..ID_MOUNT, TALKTYPE_MONSTER_SAY)
	-- else
	-- 	player:say('tenho a montaria com ID: '..ID_MOUNT, TALKTYPE_MONSTER_SAY)
	-- end

	--player:say(player:getStorageValue(Storage.AdventurersGuild.Stone), TALKTYPE_MONSTER_SAY)

	local position = player:getPosition()
	coordenate = string.format("%d, %d, %d", position.x, position.y, position.z)
	player:say(coordenate, TALKTYPE_SAY)

	return true
end