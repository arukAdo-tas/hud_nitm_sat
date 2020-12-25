-------
function minimap_buttons()
--the 5 button on right of map button, to control the map special squares colors
if wait > 30 then
	if (mouse_X > -280 and mouse_X < -268 and mouse_Y > -77 and mouse_Y < -66 and mouse_B) then
		if script_saveR_color == "default" then script_saveR_color = "red"
		elseif script_saveR_color == "red" then script_saveR_color = "green" 
		elseif script_saveR_color == "green" then script_saveR_color = "yellow"
		elseif script_saveR_color == "yellow" then script_saveR_color = "cyan"
		elseif script_saveR_color == "cyan" then script_saveR_color = "orange"
		elseif script_saveR_color == "orange" then script_saveR_color = "pink"
		elseif script_saveR_color == "pink" then script_saveR_color = "blue"
		elseif script_saveR_color == "blue" then script_saveR_color = "default"
		end
	shot_refresh = true
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -260 and mouse_X < -248 and mouse_Y > -77 and mouse_Y < -66 and mouse_B) then
		if script_telR_color == "default" then script_telR_color = "orange"
		elseif script_telR_color == "orange" then script_telR_color = "green" 
		elseif script_telR_color == "green" then script_telR_color = "yellow"
		elseif script_telR_color == "yellow" then script_telR_color = "cyan"
		elseif script_telR_color == "cyan" then script_telR_color = "red"
		elseif script_telR_color == "red" then script_telR_color = "pink"
		elseif script_telR_color == "pink" then script_telR_color = "blue"
		elseif script_telR_color == "blue" then script_telR_color = "default"
		end
	shot_refresh = true
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -240 and mouse_X < -228 and mouse_Y > -77 and mouse_Y < -66 and mouse_B) then
		if script_cdR_color == "default" then script_cdR_color = "blue"
		elseif script_cdR_color == "blue" then script_cdR_color = "green" 
		elseif script_cdR_color == "green" then script_cdR_color = "yellow"
		elseif script_cdR_color == "yellow" then script_cdR_color = "cyan"
		elseif script_cdR_color == "cyan" then script_cdR_color = "orange"
		elseif script_cdR_color == "orange" then script_cdR_color = "pink"
		elseif script_cdR_color == "pink" then script_cdR_color = "red"
		elseif script_cdR_color == "red" then script_cdR_color = "default"
		end
	shot_refresh = true
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -220 and mouse_X < -208 and mouse_Y > -77 and mouse_Y < -66 and mouse_B) then
		if script_mistR_color == "default" then script_mistR_color = "yellow"
		elseif script_mistR_color == "yellow" then script_mistR_color = "green" 
		elseif script_mistR_color == "green" then script_mistR_color = "blue"
		elseif script_mistR_color == "blue" then script_mistR_color = "cyan"
		elseif script_mistR_color == "cyan" then script_mistR_color = "orange"
		elseif script_mistR_color == "orange" then script_mistR_color = "pink"
		elseif script_mistR_color == "pink" then script_mistR_color = "red"
		elseif script_mistR_color == "red" then script_mistR_color = "default"
		end
	shot_refresh = true
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -200 and mouse_X < -188 and mouse_Y > -77 and mouse_Y < -66 and mouse_B) then
		if script_doorR_color == "default" then script_doorR_color = "cyan"
		elseif script_doorR_color == "cyan" then script_doorR_color = "green" 
		elseif script_doorR_color == "green" then script_doorR_color = "yellow"
		elseif script_doorR_color == "yellow" then script_doorR_color = "blue"
		elseif script_doorR_color == "blue" then script_doorR_color = "orange"
		elseif script_doorR_color == "orange" then script_doorR_color = "pink"
		elseif script_doorR_color == "pink" then script_doorR_color = "red"
		elseif script_doorR_color == "red" then script_doorR_color = "default"
		end
	shot_refresh = true
	wait = 0
	end
end


--the 3 first button, #1 does on/off player progression, #2 does change the color of squares, #3 change opacity (delta)
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -77 and mouse_Y < -69 and mouse_B) then
		if script_map_mode == "ZZ" then
			script_map_mode = "RG"
		elseif script_map_mode == "GT" or script_map_mode == "BT" or script_map_mode == "RG" then
			script_map_mode = "ZZ"
		end
	shot_refresh = true
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -65 and mouse_Y < -57 and mouse_B) then
		if script_map_mode == "BT" then
			script_map_mode = "GT"
		elseif script_map_mode == "GT" then
			script_map_mode = "RG"
		elseif script_map_mode == "RG" then
			script_map_mode = "BT"
		end
	shot_refresh = true
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -53 and mouse_Y < -45 and mouse_B) then
		if script_map_mode_delta == 1 then script_map_mode_delta = 2 
		elseif script_map_mode_delta == 2 then script_map_mode_delta = 3 
		elseif script_map_mode_delta == 3 then script_map_mode_delta = 0 
		elseif script_map_mode_delta == 0 then script_map_mode_delta = 1 
		end
	shot_refresh = true
	wait = 0
	end
end
--the 4 next will do, player position on/off, the color of the cursor, the speed of the blink, trail data
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -36 and mouse_Y < -27 and mouse_B) then
		if cursor_player == true then cursor_player = false
		elseif cursor_player == false then cursor_player = true
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -23 and mouse_Y < -15 and mouse_B) then
		if cursor_player_color == 1 then cursor_player_color = 2 
		elseif cursor_player_color == 2 then cursor_player_color = 1
		-- elseif cursor_player_color == 3 then cursor_player_color = 1
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -11 and mouse_Y < -3 and mouse_B) then
		if cursor_player_speed == 1 then cursor_player_speed = 2 
		elseif cursor_player_speed == 2 then cursor_player_speed = 3
		elseif cursor_player_speed == 3 then cursor_player_speed = 0
		elseif cursor_player_speed == 0 then cursor_player_speed = 1
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 1 and mouse_Y < 9 and mouse_B) then
		if cursor_trail == true then cursor_trail = false
		elseif cursor_trail == false then cursor_trail = true
		end
	wait = 0
	end
end
--the 3 next will do, player time attack data on/off, color of the cursor, speed of the blink
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 19 and mouse_Y < 27 and mouse_B) then
		if cursor_boss == true then cursor_boss = false 
		elseif cursor_boss == false then cursor_boss = true
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 31 and mouse_Y < 39 and mouse_B) then
		if cursor_boss_color == 1 then cursor_boss_color = 2 
		elseif cursor_boss_color == 2 then cursor_boss_color = 3
		elseif cursor_boss_color == 3 then cursor_boss_color = 4
		elseif cursor_boss_color == 4 then cursor_boss_color = 5
		elseif cursor_boss_color == 5 then cursor_boss_color = 1
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 43 and mouse_Y < 51 and mouse_B) then
		if cursor_boss_speed == 1 then cursor_boss_speed = 2 
		elseif cursor_boss_speed == 2 then cursor_boss_speed = 3
		elseif cursor_boss_speed == 3 then cursor_boss_speed = 4
		elseif cursor_boss_speed == 4 then cursor_boss_speed = 5
		elseif cursor_boss_speed == 5 then cursor_boss_speed = 0
		elseif cursor_boss_speed == 0 then cursor_boss_speed = 1
		end
	wait = 0
	end
end
--the 3 next will do, player relic data on/off, color of the cursor, speed of the blink
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 61 and mouse_Y < 69 and mouse_B) then
		if cursor_relic == true then cursor_relic = false 
		elseif cursor_relic == false then cursor_relic = true
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 73 and mouse_Y < 81 and mouse_B) then
		if cursor_relic_color == 1 then cursor_relic_color = 2 
		elseif cursor_relic_color == 2 then cursor_relic_color = 3
		elseif cursor_relic_color == 3 then cursor_relic_color = 4
		elseif cursor_relic_color == 4 then cursor_relic_color = 5
		elseif cursor_relic_color == 5 then cursor_relic_color = 1
		end
	wait = 0
	end
end
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 85 and mouse_Y < 93 and mouse_B) then
		if cursor_relic_speed == 1 then cursor_relic_speed = 2 
		elseif cursor_relic_speed == 2 then cursor_relic_speed = 3
		elseif cursor_relic_speed == 3 then cursor_relic_speed = 4
		elseif cursor_relic_speed == 4 then cursor_relic_speed = 5
		elseif cursor_relic_speed == 5 then cursor_relic_speed = 0
		elseif cursor_relic_speed == 0 then cursor_relic_speed = 1
		end
	wait = 0
	end
end
--the on /off button
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if script_map_cursor then script_map_cursor = false 
		else script_map_cursor = true
		end
	wait = 0
	end
end
--reset to default values button
if wait > 30 then
	if (mouse_X > -285 and mouse_X < -274 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
	script_map_cursor = true
	script_map_mode = "ZZ"
	script_map_mode_delta = 2
	cursor_trail = false
	cursor_user = false
	cursor_user_color = 4
	cursor_color_invert = false
	cursor_player = false
	cursor_player_color = 1
	cursor_player_speed = 2
	cursor_boss = false
	cursor_boss_color = 2
	cursor_boss_speed = 3
	cursor_relic = false
	cursor_relic_color = 3
	cursor_relic_speed = 3
	cursor_user = false
	cursor_user_color = 4
	cursor_joker_color = 6
	cursor_joker_speed = 6
	shot_refresh = true
	wait = 0
	end
end
--revert button
if wait > 30 then
	if (mouse_X > -270 and mouse_X < -262 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if cursor_color_invert == true then 
		cursor_color_invert = false 
		shot_refresh = true
		elseif cursor_color_invert == false then 
		cursor_color_invert = true 
		shot_refresh = true
		end
	wait = 0
	end
end
--joker color
if wait > 30 then
	if (mouse_X > -258 and mouse_X < -250 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if cursor_joker_color == 1 then 
		cursor_joker_color = 2 
		script_map_mode = "GT"
		script_map_mode_delta = 2
		cursor_player_color = 1
		cursor_boss_color = 2
		cursor_relic_color = 2
		elseif cursor_joker_color == 2 then 
		cursor_joker_color = 3
		script_map_mode = "BT"
		script_map_mode_delta = 2
		cursor_player_color = 2
		cursor_boss_color = 3
		cursor_relic_color = 3
		elseif cursor_joker_color == 3 then 
		cursor_joker_color = 4
		script_map_mode = "RG"
		script_map_mode_delta = 2
		cursor_player_color = 2
		cursor_boss_color = 4
		cursor_relic_color = 4
		elseif cursor_joker_color == 4 then 
		cursor_joker_color = 5
		script_map_mode = "GT"
		script_map_mode_delta = 2
		cursor_player_color = 2
		cursor_boss_color = 5
		cursor_relic_color = 5
		elseif cursor_joker_color == 5 then 
		cursor_joker_color = 6
		script_map_mode = "ZZ"
		script_map_mode_delta = 2
		cursor_player_color = 1
		cursor_boss_color = 2
		cursor_relic_color = 3
		elseif cursor_joker_color == 6 then 
		cursor_joker_color = 1
		script_map_mode = "RG"
		script_map_mode_delta = 2
		cursor_player_color = 1
		cursor_boss_color = 1
		cursor_relic_color = 1
		end
	shot_refresh = true
	wait = 0
	end
end
--joker speed
if wait > 30 then
	if (mouse_X > -248 and mouse_X < -242 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if cursor_joker_speed == 1 then 
			cursor_joker_speed = 2 
			cursor_player_speed = 2
			cursor_boss_speed = 2
			cursor_relic_speed = 2
		elseif cursor_joker_speed == 2 then 
			cursor_joker_speed = 3
			cursor_player_speed = 3
			cursor_boss_speed = 3
			cursor_relic_speed = 3		
		elseif cursor_joker_speed == 3 then 
			cursor_joker_speed = 4
			cursor_player_speed = 3
			cursor_boss_speed = 4
			cursor_relic_speed = 4		
		elseif cursor_joker_speed == 4 then 
			cursor_joker_speed = 5
			cursor_player_speed = 3
			cursor_boss_speed = 5
			cursor_relic_speed = 5		
		elseif cursor_joker_speed == 5 then 
			cursor_joker_speed = 6
			cursor_player_speed = 2
			cursor_boss_speed = 3
			cursor_relic_speed = 3
		elseif cursor_joker_speed == 6 then 
			cursor_joker_speed = 0
			cursor_player_speed = 0
			cursor_boss_speed = 0
			cursor_relic_speed = 0		
		elseif cursor_joker_speed == 0 then 
			cursor_joker_speed = 1
			cursor_player_speed = 1
			cursor_boss_speed = 1
			cursor_relic_speed = 1
		end
	wait = 0
end
end
--super joker, turn on and off everything
if wait > 30 then
	if (mouse_X > -238 and mouse_X < -232 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if cursor_joker_all == true then
		cursor_joker_all = false
		script_map_cursor = true
		script_map_mode = "ZZ"
		script_map_mode_delta = 2
		cursor_trail = false
		cursor_player = false
		cursor_boss = false
		cursor_relic = false
		cursor_wall = false
		cursor_switch = false
		cursor_cutscene = false
		cursor_break = false
		cursor_heartup = false
		cursor_lifeup = false
		cursor_pickup = false
		script_telR_color = "default"
		script_saveR_color = "default"
		script_cdR_color = "default"
		script_mistR_color = "default"
		script_doorR_color = "default"
		shot_refresh = true
		elseif cursor_joker_all == false then 
		cursor_joker_all = true
		script_map_cursor = true
		script_map_mode = "RG"
		script_map_mode_delta = 2
		cursor_trail = true
		cursor_player = true
		cursor_boss = true
		cursor_relic = true
		cursor_wall = true
		cursor_switch = true
		cursor_cutscene = true
		cursor_break = true
		cursor_heartup = true
		cursor_lifeup = true
		cursor_pickup = true
		script_telR_color = "default"
		script_saveR_color = "default"
		script_cdR_color = "default"
		script_mistR_color = "default"
		script_doorR_color = "default"
		shot_refresh = true
		end
	wait = 0
	end
end
--the user querry cursor (bottom right)
if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if cursor_user_color == 1 then cursor_user_color = 2 cursor_user = true
		elseif cursor_user_color == 2 then cursor_user_color = 3 cursor_user = true
		elseif cursor_user_color == 3 then cursor_user_color = 4 cursor_user = false
		elseif cursor_user_color == 4 then cursor_user_color = 1 cursor_user = true
		end
	wait = 0
	end
end

--

if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > -77 and mouse_Y < -64 and mouse_B) then
		if cursor_switch then cursor_switch = false
		else cursor_switch = true
		end
	wait = 0
	end
end

if wait > 30 then
	if (mouse_X > -60 and mouse_X < -46 and mouse_Y > -77 and mouse_Y < -64 and mouse_B) then
		if cursor_cutscene then cursor_cutscene = false
		else cursor_cutscene = true
		end
	wait = 0
	end
end

if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > -60 and mouse_Y < -47 and mouse_B) then
		if cursor_wall then cursor_wall = false
		else cursor_wall = true
		end
	wait = 0
	end
end

if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > 86 and mouse_Y < 97 and mouse_B) then
		if cursor_pickup then cursor_pickup = false
		else cursor_pickup = true
		end
	wait = 0
	end
end

if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > 70 and mouse_Y < 80 and mouse_B) then
		if cursor_lifeup then cursor_lifeup = false
		else cursor_lifeup = true
		end
	wait = 0
	end
end

if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > 54 and mouse_Y < 64 and mouse_B) then
		if cursor_heartup then cursor_heartup = false
		else cursor_heartup = true
		end
	wait = 0
	end
end

if wait > 30 then
	if (mouse_X > -38 and mouse_X < -26 and mouse_Y > 40 and mouse_Y < 50 and mouse_B) then
		if cursor_break then cursor_break = false
		else cursor_break = true
		end
	wait = 0
	end
end


--hitbox
if game_is_alt_rez == false and game_is_menu == false and game_is_map == false then
	if wait > 30 then
		if (mouse_X > -22 and mouse_X < 10 and mouse_Y > 267 and mouse_Y < 275 and mouse_B) then
			if script_hitbox then script_hitbox = false
			else script_hitbox = true
			end
		wait = 0
		end
	end
	if script_hitbox then
		gui.drawImage('.\\NitM\\hud\\button_on.png', 276, 348, 36, 12, true)
	else
		gui.drawImage('.\\NitM\\hud\\button_off.png', 276, 348, 36, 12, true)
	end
end
--debug switch
if script_super_debug then
	if wait > 30 then
		if (mouse_X > 341 and mouse_X < 371 and mouse_Y > 267 and mouse_Y < 275 and mouse_B) then
			if script_debug then script_debug = false
			else script_debug = true
			end
		wait = 0
		end
	end
	if script_debug then
		gui.drawImage('.\\NitM\\hud\\button_on.png', 639, 348, 36, 12, true)
	else
		gui.drawImage('.\\NitM\\hud\\button_off.png', 639, 348, 36, 12, true)
	end
end


end
