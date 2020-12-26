while true do
	player_character_ID = memory.readbyte(0x05C6D2)
	game_is_loaded = memory.readbyte(0x05CEB2)
	player_script = memory.readbyte(0x05CD70)
	if game_is_loaded == 1 then
		client.frameskip(0)
		client.speedmode(100)
		if player_script == 145 then
			client.frameskip(9)
			client.speedmode(400)		
		end
	else
		if player_character_ID == 0 then
			if player_script == 6 or player_script == 7 or player_script == 8 or player_script == 9 or player_script == 10 
			or player_script == 11 or player_script == 20 or player_script == 21 then
				client.frameskip(0)
				client.speedmode(100)
			else
			client.frameskip(9)
			client.speedmode(400)
			end
		else
			client.frameskip(9)
			client.speedmode(400)
		end
	end
emu.frameadvance()
end