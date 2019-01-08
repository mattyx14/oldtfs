function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	local split = param:split(",")
	local text = tostring(split[1])
	local color = split[2]
	Game.sendAnimatedText(text, player:getPosition(), color)
	return false
end
