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
--------------------------------
function where_is_player()
if game_is_boot == false and stat_level > 0 and stat_gametime_seconds ~= 1 then
--then we are no longer in the bios or file select... I think... but if you soft reset you will still have player data in ram
--if u started with alucard, the timer will start after the fmv
--if u start with richter or maria, script will kick at "now loadind" (you become level1)
	game_is_boot = true
end

--not a good idea as sometime theres no sound
-- if music == 5632 then
-- game_is_boot = false
-- else
-- game_is_boot = true
-- end

if castleB then
end

if player_character_ID == 0 then
	if player_script[2] == 4 and player_script[4] == 1 and player_script[0] ~= 5 then 
		game_is_menu = true
		if player_script[0] == 7 then
			game_is_inventory = true
		else
			game_is_inventory = false
		end
		if player_script[0] == 9 then
			game_is_relic = true
		else
			game_is_relic = false
		end
		if player_script[0] == 6 or player_script[0] == 10 or player_script[0] == 11 then
			game_is_alt_rez = true
		else
			game_is_alt_rez = false
		end
		if player_script[0] == 20 or player_script[0] == 21 then
			game_is_map = true
		else
			game_is_map = false
		end
	else
		game_is_menu = false
		game_is_inventory = false
		game_is_relic = false
		game_is_alt_rez = false
		game_is_map = false
	end
end
if game_is_inventory then game_was_inventory = true end
if game_is_inventory == false and game_was_inventory == true and game_is_menu == false then shot_refresh = true game_was_inventory = false end
if game_is_relic then game_was_relic = true end
if game_is_relic == false and game_was_relic == true and game_is_menu == false then shot_refresh = true game_was_relic = false end
if room_X_size_grid == 1 and room_Y_size_grid == 1 then --its 1x1 and room grid is always the min (or the max)
	room_grid_X = room_X_min_grid
	room_grid_Y = room_Y_min_grid
else
	-- ok this is not a 1x1 room, we gotta calculate like the game does
	-- whenever alucard increase X of 320, or Y of 256 we gotta incremente the current grid room
	-- but unlike the game, we dont set the map data bit for it, lol
	-- if the pos is 15, the data is 0, if its between 321 and 640 its 1, if its between 641 and 860 its 2, ect...
	-- room x size in absolute is 320, room y is 256
	-- get the current position of the player and transform it into grid data
	if player_X_position_absolute < 65000 and player_Y_position_absolute < 65000 then
		curX = player_X_position_absolute/320
		curY = player_Y_position_absolute/256
		curX = math.floor(curX)
		curY = math.floor(curY)
		if castleB then
		room_grid_X = room_X_max_grid - curX --reverse
		room_grid_Y = room_Y_min_grid - curY --reverse
		else
		room_grid_X = room_X_min_grid + curX --from min coz grid orientation is from left to right
		room_grid_Y = room_Y_max_grid + curY --from max coz we go from top to bottom
		end
	else--safeguard?
		room_grid_X = 0 
		room_grid_Y = 0
	end
end



if room_grid_X >= 1 and room_grid_Y >= 1 then
	room_1D = room_grid_X + room_grid_Y * 64
	theroomX = room_grid_X * 4
	theroomY = room_grid_Y * 4 -20-- 20 is the number of row ive removed to make the map shorter, 5 rows x 4 px
else--safeguard?
	theroomX = 0
	theroomY = 0
	room_1D = nil
end


if castleB then
	if cursor_user == false then
		if area_roomB[room_1D] == nil then area_ID = "no" else area_ID = area_roomB[room_1D] end
	else
		if area_roomB[querry_1D] == nil then area_ID = "no" else area_ID = area_roomB[querry_1D] end	
	end
else
	if cursor_user == false then
		if area_roomA[room_1D] == nil then area_ID = "no" else area_ID = area_roomA[room_1D] end
	else
		if area_roomA[querry_1D] == nil then area_ID = "no" else area_ID = area_roomA[querry_1D] end	
	end
end


pickup_cur = {}
if castleB then
for i = 1, 36, 1 do
	if area_ID == pickupB_byte[i] then
		table.insert(pickup_cur, i-1) --pickup_data[i-1]
	end
end
else
	for i = 1, 36, 1 do
		if area_ID == pickupA_byte[i] then
			table.insert(pickup_cur, i-1) --pickup_data[i-1]
		end
	end
end

if room_1D then 
	if cursor_user == false then
		if castleB then 
		if boss_roomB[room_1D] then room_boss = boss_roomB[room_1D] else room_boss = "- - -" end
		if relic_roomB[room_1D] then room_relic = relic_roomB[room_1D] else room_relic = "- - -" end
		if lifeup_roomA[room_1D] then room_lifeup = lifeup_roomA[room_1D] else room_lifeup = "- - -" end
		if heartup_roomA[room_1D] then room_heartup = heartup_roomA[room_1D] else room_heartup = "- - -" end 
		if pickup_roomA[room_1D] then room_pickup = pickup_roomA[room_1D] else room_pickup = "- - -" end
		if special_roomB[room_1D] then room_special = special_roomB[room_1D] else room_special = "- - -" end 
		if text_roomB[room_1D] then room_text = text_roomB[room_1D] else room_text = "- - -" end 
		else
		if boss_roomA[room_1D] then room_boss = boss_roomA[room_1D] else room_boss = "- - -" end
		if relic_roomA[room_1D] then room_relic = relic_roomA[room_1D] else room_relic = "- - -" end
		if lifeup_roomA[room_1D] then room_lifeup = lifeup_roomA[room_1D] else room_lifeup = "- - -" end
		if heartup_roomA[room_1D] then room_heartup = heartup_roomA[room_1D] else room_heartup = "- - -" end 
		if pickup_roomA[room_1D] then room_pickup = pickup_roomA[room_1D] else room_pickup = "- - -" end
		if special_roomA[room_1D] then room_special = special_roomA[room_1D] else room_special = "- - -" end 
		if text_roomA[room_1D] then room_text = text_roomA[room_1D] else room_text = "- - -" end 
		end
	end
else--safeguard?
	room_text = "- - -"
	room_special = "- - -"
	room_boss = "- - -"
	room_relic = "- - -"
	room_lifeup = "- - -"
	room_heartup = "- - -"
	room_pickup = "- - -"
end
if trail_data[251] ~= nil then trail_data = { 0, 0, 0, 0, 0} end --empty the table after 50 rooms...
if room_1D ~= trail_data[#trail_data-4] and player_X_position_absolute < 65000 and player_Y_position_absolute < 65000 and game_is_loaded == 1 then
table.insert(trail_data, room_1D)
table.insert(trail_data, room_grid_X)
table.insert(trail_data, room_grid_Y)
table.insert(trail_data, room_X_origin_grid)
table.insert(trail_data, room_Y_origin_grid)
end
if area_ID ~= nil and script_debug then debug_data = debug_data.." area:"..area_ID end
if trail_data[#trail_data-4] ~= nil and script_debug then
debug_data = debug_data.." trail 1D:"..trail_data[#trail_data-4].." X:"..trail_data[#trail_data-3].." Y:"..trail_data[#trail_data-2].." OX:"..trail_data[#trail_data-1].." OY:"..trail_data[#trail_data] 
end
if cursor_user == false		-- if the cursor_user is up, it will update the room text so we gotta skip that
and room_boss ~= "- - -"	-- player is in a boos room
and game_is_loaded == 0		-- and its not yet loaded !
and room_boss_origin[1] == 0	-- this mean we want to set the origin of the boss room
then	--othen we check if player has beat the already
	for i = 1, 28, 1 do --theres 28 bosses ok
		if room_boss == time_attack_text[i] then --because we matched string data with byte order that mean (4*i)-1 is the boss address
			if time_attack_data[(4*i)-1] == 0 and  time_attack_data[(4*i)-2] == 0 and time_attack_data[(4*i)-4] == 0 then --if they are 0 the boss is "locked", when you beat it (room_boss is NOW ---), we will update timeattack
				room_boss_origin = { room_X_origin_grid, room_Y_origin_grid } --set the boss room origin
			end
		end
	end
end
if room_boss_origin[1] ~= 0 --if true then we have a boss origin set from above
and room_boss == "- - -" --and the room is no longer the boss room....
and game_is_loaded == 0 --and the next room is loading
then --then we can regen the data
	shot_refresh = true
	room_boss_origin = { 0, 0} --reset boss room
end
if cursor_user == false	-- if the cursor_user is up, it will update the room text so we gotta skip that
and room_relic ~= "- - -"	-- player is in a relic room
and room_relic_origin[1] == 0	-- this mean we want to set the origin of the relic room
then--then we check if player has the relic already
	for i = 1, 32, 1 do --theres 32 relics ok
		if room_relic == relic_text[i+32] then --because we matched string data with byte order that mean i-1 is the relic address
			if relic_data[i-1] == 0 then --if its 0 the relic is "locked", when you pick it (and room_relic is NOW ---), we will update data
				room_relic_origin = { room_X_origin_grid, room_Y_origin_grid } --set the relic room origin
			end
		end
	end
end
if room_relic_origin[1] ~= 0 --if true then we have a relic origin set from above
and room_relic == "- - -" --and the room is no longer the relic room....
and game_is_loaded == 0 --and the next room is loading
then --then we can regen data
		shot_refresh = true
		room_relic_origin = { 0, 0} --reset relic room
end
if script_map_mode ~= "ZZ" --of course check if map progression is on otherwise theres no point in regen the data, it will regen when turn on
and stat_rooms ~= script_room_count -- the room count changed... so the map data too
and game_is_loaded == 0 -- coz it mean its a room transition, and we dont want to update in big rooms, just in between, so theres no blink
then --ok we can regenerate map data
	script_room_count = stat_rooms
	shot_refresh = true
end

if area_ID == "cd" and game_is_loaded == 0 and cursor_user == false and game_was_cdroom == false then shot_refresh = true game_was_cdroom = true end
if area_ID ~= "cd" and game_was_cdroom then game_was_cdroom = false end

end
-------
function refresh_data()
--ideally, this will be the exact same than ram.lua minus the comments
--ordered from lowest ram address to highest

---crapzone
	-- castle_flag = (memory.readbyte(0x065488))--wrong too probly
	-- castle_flag = (memory.readbyte(0x05CA62))--wrong
	-- state_menu = (memory.readbyte(0x048211))


--	area_ID = memory.read_u32_be(0x058C84)

--wrong
	player_use_first_hand = mainmemory.readbyte(0x05C462)
	player_use_second_hand = mainmemory.readbyte(0x05C574)
	player_use_third_hand = mainmemory.readbyte(0x050B03)
---


	music = memory.read_u32_be(0x058C84)

	the_frame = emu.framecount()
	mouse_X = input.getmouse()['X']
	mouse_Y = input.getmouse()['Y']
	mouse_B = input.getmouse()['Left']

--
	state_rng = (memory.read_u32_be(0x0482b8))
--
	player_ground = mainmemory.readbyte(0x05C166)
--
	local player_status_data = memory.readbyterange(0x05C508, 51, "Work Ram High")
	player_status_poison_timer = player_status_data[0]
	player_status_poison_mult = player_status_data[1]
	player_status_curse_timer = player_status_data[2]
	player_status_curse_mult = player_status_data[3]
	player_invincible_timer = player_status_data[28]
	player_status_flag = player_status_data[30]
	player_status_stoneA = player_status_data[46]
	player_air = player_status_data[47]
	player_status_stoneB = player_status_data[50]
	player_status_data = nil
--
	stat_rooms = (memory.read_u16_le(0x05C5B2)) --used to check if the map changed
--
	player_Y_position_absolute = memory.read_u16_le(0x05C5B6)
--
	player_character_ID = (memory.readbyte(0x05C6D2))
	if player_character_ID == 0 then alucard = true else alucard = false end
--
if shot_refresh then --regenerate data
	relic_data = memory.readbyterange(0x05C6F0, 32, "Work Ram High")
	script_relic = true
end
--
	local data_stats = memory.readbyterange(0x05C942, 138, "Work Ram High")
	local stat_data = byterange_decode(data_stats, 2, false, true)
	stat_hp = stat_data[0]
	stat_hp_max = stat_data[2]
	stat_heart = stat_data[4]
	stat_heart_max = stat_data[6]
	stat_mp = stat_data[8]
	stat_mp_max = stat_data[10]
	stat_str = stat_data[12]
	stat_con = stat_data[14]
	stat_int = stat_data[16]
	stat_lck = stat_data[18]
	stat_str_mod = stat_data[20]
	stat_con_mod = stat_data[22]
	stat_int_mod = stat_data[24]
	stat_lck_mod = stat_data[26]
	stat_level = stat_data[36]
	stat_exp = stat_data[38]
	stat_gold = stat_data[40]
	stat_beat = stat_data[42]
	stat_def = stat_data[68]
	stat_data = nil
	data_stats = nil
--
	player_morph = (memory.readbyte(0x05C99A))
--
	player_subweapon = (memory.readbyte(0x05C99E))
--
if shot_refresh then --we dont need to regenerate this data until the menu is call...
	gear_data = memory.readbyterange(0x05C9A2, 29, "Work Ram High")
	script_gear = true
end
--
	stat_gametime_data = memory.readbyterange(0x05C9D6, 9, "Work Ram High")
	stat_gametime_hours = stat_gametime_data[0]
	stat_gametime_minutes = stat_gametime_data[4]
	stat_gametime_seconds = stat_gametime_data[8]
	stat_gametime_data = nil
--
if shot_refresh then --regenerate data every xx frames
	familiar_data = memory.readbyterange(0x05C9EA, 85, "Work Ram High")
	familiar_data_level = {}
	table.insert(familiar_data_level, 1, ""..familiar_data[0])--ghost
	table.insert(familiar_data_level, 2, ""..familiar_data[12])--bat
	table.insert(familiar_data_level, 3, ""..familiar_data[36])--demon
	table.insert(familiar_data_level, 4, ""..familiar_data[24])--fairy
	table.insert(familiar_data_level, 5, ""..familiar_data[60])--half fairy
	table.insert(familiar_data_level, 6, ""..familiar_data[48])--sword
	table.insert(familiar_data_level, 8, ""..familiar_data[72])--nose
	script_familiar = true
	familiar_data = nil
end
--
if shot_refresh then --regenerate data
unlock_data = nil
if area_ID == "marble" then unlock_data = memory.readbyterange(0x05CA50, 16, "Work Ram High")
elseif area_ID == "wall" then unlock_data = memory.readbyterange(0x05CA60, 16, "Work Ram High")
elseif area_ID == "olrox" then unlock_data = memory.readbyterange(0x05CA70, 16, "Work Ram High")
elseif area_ID == "gate" then unlock_data = memory.readbyterange(0x05CA80, 16, "Work Ram High")
elseif area_ID == "cata" then unlock_data = memory.readbyterange(0x05CA90, 16, "Work Ram High")
elseif area_ID == "mine" then unlock_data = memory.readbyterange(0x05CAA0, 16, "Work Ram High")
elseif area_ID == "chapel" then unlock_data = memory.readbyterange(0x05CAB0, 16, "Work Ram High")
elseif area_ID == "lib" then unlock_data = memory.readbyterange(0x05CAC0, 16, "Work Ram High")
elseif area_ID == "lab" then unlock_data = memory.readbyterange(0x05CAD0, 16, "Work Ram High")
elseif area_ID == "keep" then unlock_data = memory.readbyterange(0x05CAE0, 16, "Work Ram High")
elseif area_ID == "clock" then unlock_data = memory.readbyterange(0x05CAF0, 16, "Work Ram High")
elseif area_ID == "colos" then unlock_data = memory.readbyterange(0x05CB00, 16, "Work Ram High")
elseif area_ID == "cave" then unlock_data = memory.readbyterange(0x05CB10, 16, "Work Ram High")
elseif area_ID == "tele" then unlock_data = memory.readbyterange(0x05CB20, 16, "Work Ram High")
elseif area_ID == "unknow" then unlock_data = memory.readbyterange(0x05CB30, 16, "Work Ram High")
elseif area_ID == "prison" or area_ID == "garden" then unlock_data = memory.readbyterange(0x05CB40, 16, "Work Ram High")
else unlock_data = memory.readbyterange(0x05CB30, 16, "Work Ram High")
end
teleportA = memory.readbyte(0x05CB20)
teleportB = memory.readbyte(0x05CB21)
script_unlock = true
end
--
if shot_refresh then --regenerate data
	bestiary_data = memory.readbyterange(0x05CBE0, 22, "Work Ram High")
	script_bestiary = true
end
--
	player_X_position_absolute = memory.read_u16_le(0x05CD5A)
--
	player_script = memory.readbyterange(0x05CD70, 5, "Work Ram High")
--
	game_is_loaded = (memory.readbyte(0x05CEB2))
--
	local room_data = memory.readbyterange(0x05CE5E, 25, "Work Ram High")
	room_X_size_grid = room_data[0]
	room_Y_size_grid = room_data[4]
	room_X_min_grid = room_data[12]
	room_Y_max_grid = room_data[16]
	room_X_max_grid = room_data[20]
	room_Y_min_grid = room_data[24]
	room_data = nil
--
--
	local room_data_bis = memory.readbyterange(0x05D75E, 5, "Work Ram High")
	room_X_origin_grid = room_data_bis[0]
	room_Y_origin_grid = room_data_bis[4]
	room_data_bis = nil
--
if shot_refresh then --we need to regenerate this data...
	time_attack_data = memory.readbyterange(0x05D830, 112, "Work Ram High")
	script_timeattack = true --the data is up so we call our timeattack module
end
--
	player_X_scroll = (memory.read_u16_le(0x0860B6))
	player_Y_scroll = (memory.read_u16_le(0x0860BA))
--
	player_X_position_relative = memory.read_u16_le(0x0997FC)
	player_Y_position_relative = memory.read_u16_le(0x099800)
	familiar_X_position = memory.read_s16_le(0x099ADC)
	familiar_Y_position = memory.read_s16_le(0x099AE0)
--
	local player_data = memory.readbyterange(0x0997FF, 63, "Work Ram High")
	player_X_subpixel = player_data[0]
	player_Y_subpixel = player_data[4]
	if player_data[5] >= 128 then player_X_speed = player_data[5] - 2 * 128 else player_X_speed = player_data[5] end
	player_X_motion = player_data[8]
	if player_data[9] >= 128 then player_Y_speed = player_data[9] - 2 * 128 else player_Y_speed = player_data[9] end
	player_Y_motion = player_data[12]
--	if player_data[13] >= 128 then player_X_hitbox_offset = player_data[14] - 2 * 128 else player_X_hitbox_offset = player_data[14] end
--	if player_data[15] >= 128 then player_Y_hitbox_offset = player_data[16] - 2 * 128 else player_Y_hitbox_offset = player_data[16] end
	player_X_hitbox_offset = memory.read_s8(0x09980C)
	player_Y_hitbox_offset = memory.read_s8(0x09980E)
	player_orientation = player_data[17]	
	player_Y_hitbox_radius = player_data[61]
	player_X_hitbox_radius = player_data[62]
	player_data = nil
--
	player_action_ID = memory.readbyte(0x099824)
--
	player_morph_timer = memory.readbyte(0x0C850A)
--
--	objects_data = memory.readbyterange(0x099F20, 60000, "Work Ram High")
--
	if music == 0 then
	game_is_boot = false
	end
	--then it switch to 19968(??), then 21248 (nagoya logo), then 3585 (main screen)
	if music == 23808 or music == 19968 or music == 21248 or music == 3585 then --its the konami logo 23808
	game_is_boot = false	
	end
	if castleB and room_Y_min_grid == 33 and room_Y_max_grid == 33 then
	game_is_dracula = true
	castleB = true
	end
	if music == 6144 or music == 4352 or music == 4608 or music == 11520 or music == 10752 or music == 4864 and alucard then
		castleB = true
	else
		if music == 6912 or music == 5376 or music == 5120 and castleB then --boss or silence, we have a problem houston
			castleB = true
		else
			if game_is_shaft == false or game_is_dracula == false then
				castleB = false		
			end
		end
	end
	if music == 48128 or music == 7680 then --ending? + iamthewind
		game_is_dracula = false 
		game_is_shaft = false 
		castleB = true
	end
	if music == 11520 and alucard == false then --its maria entrance
		castleB = false
	end
	if music == 2304 then --its the keep
		if room_Y_min_grid > 50  then
			castleB = true
		else
			castleB = false
		end
	end
	if music == 1024 then --its the mines
	--room_Y_min_grid --31-50 max/min in RC --25-14 max/min in IC
		if room_Y_min_grid > 30  then
			castleB = false
		else
			castleB = true
		end
	end
	if music == 3840 then --its central area...
		if room_Y_origin_grid == 33 or room_Y_origin_grid == 34 or room_Y_origin_grid == 35 then
			castleB = true
			game_is_shaft = true
		elseif room_Y_origin_grid == 28 or room_Y_origin_grid == 29 or room_Y_origin_grid == 30 then
			castleB = false
		end
	end
	--need a fix
	if music == 5376 and room_Y_origin_grid == 30 then castleB = true end --dracula?.. worked for a second at good position then warped a bit after dialogue

	if music == 6656 then
		game_is_prologue = true
		if cursor_trail then cursor_was_trail = true end
		cursor_trail = false
		if cursor_player then cursor_was_player = true end
		cursor_player = false
	end

	if game_is_prologue and music == 6400 then
		prologue_is_dracula = true
	end

	if prologue_is_dracula and music == 8704 then
		prologue_is_dracula = false
		game_is_prologue = false
		if cursor_was_trail then cursor_trail = true end
		cursor_was_trail = false
		if cursor_was_player then cursor_player = true end
		cursor_was_player = false
	end


if castleB then
	--first fix y
	-- room_Y_min_grid = room_Y_min_grid - 8
	-- room_Y_max_grid = room_Y_max_grid - 8
	-- room_Y_origin_grid = room_Y_origin_grid - 8
	room_Y_min_grid = room_Y_min_grid -7
	room_Y_max_grid = room_Y_max_grid -7
	room_Y_origin_grid = room_Y_origin_grid - 7
	--then invert min and max
	local val = room_X_min_grid
	room_X_min_grid = room_X_max_grid
	room_X_max_grid = val
	val = room_Y_min_grid
	room_Y_min_grid = room_Y_max_grid
	room_Y_max_grid = val
	-- now apply the offset so that the grid actually match the first castle grid ...
	room_Y_max_grid = 56 - room_Y_max_grid
	room_Y_min_grid = 56 - room_Y_min_grid
	room_Y_origin_grid = 56 - room_Y_origin_grid
	room_X_max_grid = 63 - room_X_max_grid
	room_X_min_grid = 63 - room_X_min_grid
	room_X_origin_grid = 63 - room_X_origin_grid
end


if shot_refresh then
	if castleB then
		map_data = memory.readbyterange(0x05D310, 752, "Work Ram High")
	else
		map_data = memory.readbyterange(0x05CF10, 752, "Work Ram High")
	end
	script_map = true
	if stat_rooms ~= script_room_count then script_room_count = stat_rooms end
end


if shot_refresh or game_is_loaded == 0 then
--the lifeup/maxup/pickup
	if castleB then
	pickup_data = memory.readbyterange(0x05CB75, 41, "Work Ram High")
	else
	pickup_data = memory.readbyterange(0x05CB50, 36, "Work Ram High")
	end
end

if shot_refresh or game_is_loaded == 0 then
data_lifeup = {}
data_heartup = {}
data_pickup = {}

if castleB then --reverse castle data
--sort the data into the tables we need


--lab byte38
--lab byte39
	if bit.check(pickup_data[2], 1) then table.insert(data_pickup, 14) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	else table.insert(data_pickup, 14) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
	if bit.check(pickup_data[2], 0) then table.insert(data_pickup, 13) table.insert(data_pickup, 27) table.insert(data_pickup, true)
	else table.insert(data_pickup, 13) table.insert(data_pickup, 27) table.insert(data_pickup, false) end
--lab byte40
	if bit.check(pickup_data[2], 1) then table.insert(data_heartup, 11) table.insert(data_heartup, 34) table.insert(data_heartup, true)
	else table.insert(data_heartup, 11) table.insert(data_heartup, 34) table.insert(data_heartup, false) end
	if bit.check(pickup_data[2], 2) then table.insert(data_lifeup, 10) table.insert(data_lifeup, 29) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 10) table.insert(data_lifeup, 29) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[2], 3) then table.insert(data_pickup, 16) table.insert(data_pickup, 31) table.insert(data_pickup, true)
	else table.insert(data_pickup, 16) table.insert(data_pickup, 31) table.insert(data_pickup, false) end
	if bit.check(pickup_data[2], 4) then table.insert(data_pickup, 13) table.insert(data_pickup, 35) table.insert(data_pickup, true)
	else table.insert(data_pickup, 13) table.insert(data_pickup, 35) table.insert(data_pickup, false) end
	if bit.check(pickup_data[2], 5) then table.insert(data_pickup, 12) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	else table.insert(data_pickup, 12) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
	if bit.check(pickup_data[2], 6) then table.insert(data_pickup, 15) table.insert(data_pickup, 33) table.insert(data_pickup, true)
	else table.insert(data_pickup, 15) table.insert(data_pickup, 33) table.insert(data_pickup, false) end
	if bit.check(pickup_data[2], 7) then table.insert(data_pickup, 19) table.insert(data_pickup, 26) table.insert(data_pickup, true)
	else table.insert(data_pickup, 19) table.insert(data_pickup, 26) table.insert(data_pickup, false) end




--garden byte78
	if bit.check(pickup_data[40], 0) then table.insert(data_pickup, 21) table.insert(data_pickup, 44) table.insert(data_pickup, true)
	else table.insert(data_pickup, 21) table.insert(data_pickup, 44) table.insert(data_pickup, false) end

--garden
	if bit.check(pickup_data[40], 0) then table.insert(data_pickup, 21) table.insert(data_pickup, 44) table.insert(data_pickup, true)
	else table.insert(data_pickup, 21) table.insert(data_pickup, 44) table.insert(data_pickup, false) end

	-- if bit.check(pickup_data[z], 7) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 6) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 5) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 4) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 3) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 2) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 1) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[z], 0) then table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, x) table.insert(data_pickup, y) table.insert(data_pickup, false) end



--table.insert(data_lifeup, 32) table.insert(data_lifeup, 27) table.insert(data_lifeup, true)
--table.insert(data_heartup, 32) table.insert(data_heartup, 27) table.insert(data_heartup, true)
--table.insert(data_pickup, 32) table.insert(data_pickup, 27) table.insert(data_pickup, true)



else --normal castle pickup data
--gateA byte1
--maybe skip this for now
	-- if bit.check(pickup_data[0], 0) then table.insert(data_lifeup, 3) table.insert(data_lifeup, 38) table.insert(data_lifeup, true)
	-- else table.insert(data_lifeup, 3) table.insert(data_lifeup, 38) table.insert(data_lifeup, false) end
--gateA byte2
--maybe skip this for now
	-- if bit.check(pickup_data[1], 7) then table.insert(data_heartup, 17) table.insert(data_heartup, 38) table.insert(data_heartup, true)
	-- else table.insert(data_heartup, 17) table.insert(data_heartup, 38) table.insert(data_heartup, false) end
	-- if bit.check(pickup_data[1], 6) then table.insert(data_lifeup, 14) table.insert(data_lifeup, 41) table.insert(data_lifeup, true)
	-- else table.insert(data_lifeup, 14) table.insert(data_lifeup, 41) table.insert(data_lifeup, false) end
	-- if bit.check(pickup_data[1], 5) then table.insert(data_pickup, 5) table.insert(data_pickup, 38) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, 5) table.insert(data_pickup, 38) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[1], 4) then table.insert(data_pickup, 19) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, 19) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[1], 2) then table.insert(data_pickup, 10) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	-- else table.insert(data_pickup, 10) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	-- if bit.check(pickup_data[1], 1) then table.insert(data_lifeup, 20) table.insert(data_lifeup, 37) table.insert(data_lifeup, true)
	-- else table.insert(data_lifeup, 20) table.insert(data_lifeup, 37) table.insert(data_lifeup, false) end
	-- if bit.check(pickup_data[1], 0) then table.insert(data_heartup, 19) table.insert(data_heartup, 39) table.insert(data_heartup, true)
	-- else table.insert(data_heartup, 19) table.insert(data_heartup, 39) table.insert(data_heartup, false) end
--gateB byte3
	if bit.check(pickup_data[2], 1) then table.insert(data_pickup, 10) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 10) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[2], 0) then table.insert(data_lifeup, 3) table.insert(data_lifeup, 38) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 3) table.insert(data_lifeup, 38) table.insert(data_lifeup, false) end
--gateB byte4
	if bit.check(pickup_data[3], 7) then table.insert(data_heartup, 17) table.insert(data_heartup, 38) table.insert(data_heartup, true)
	else table.insert(data_heartup, 17) table.insert(data_heartup, 38) table.insert(data_heartup, false) end
	if bit.check(pickup_data[3], 6) then table.insert(data_lifeup, 14) table.insert(data_lifeup, 41) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 14) table.insert(data_lifeup, 41) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[3], 5) then table.insert(data_pickup, 5) table.insert(data_pickup, 38) table.insert(data_pickup, true)
	else table.insert(data_pickup, 5) table.insert(data_pickup, 38) table.insert(data_pickup, false) end
	if bit.check(pickup_data[3], 4) then table.insert(data_pickup, 19) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	else table.insert(data_pickup, 19) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
	if bit.check(pickup_data[3], 2) then table.insert(data_pickup, 10) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 10) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[3], 1) then table.insert(data_lifeup, 20) table.insert(data_lifeup, 37) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 20) table.insert(data_lifeup, 37) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[3], 0) then table.insert(data_heartup, 19) table.insert(data_heartup, 39) table.insert(data_heartup, true)
	else table.insert(data_heartup, 19) table.insert(data_heartup, 39) table.insert(data_heartup, false) end
--lab byte5
	if bit.check(pickup_data[4], 2) then table.insert(data_pickup, 19) table.insert(data_pickup, 27) table.insert(data_pickup, true)
	else table.insert(data_pickup, 19) table.insert(data_pickup, 27) table.insert(data_pickup, false) end
	if bit.check(pickup_data[4], 1) then table.insert(data_pickup, 16) table.insert(data_pickup, 34) table.insert(data_pickup, true)
	else table.insert(data_pickup, 16) table.insert(data_pickup, 34) table.insert(data_pickup, false) end
	if bit.check(pickup_data[4], 0) then table.insert(data_pickup, 13) table.insert(data_pickup, 35) table.insert(data_pickup, true)
	else table.insert(data_pickup, 13) table.insert(data_pickup, 35) table.insert(data_pickup, false) end
--lab byte6
	if bit.check(pickup_data[5], 7) then table.insert(data_pickup, 11) table.insert(data_pickup, 32) table.insert(data_pickup, true)
	else table.insert(data_pickup, 11) table.insert(data_pickup, 32) table.insert(data_pickup, false) end
	if bit.check(pickup_data[5], 6) then table.insert(data_pickup, 16) table.insert(data_pickup, 31) table.insert(data_pickup, true)
	else table.insert(data_pickup, 16) table.insert(data_pickup, 31) table.insert(data_pickup, false) end
	if bit.check(pickup_data[5], 3) then table.insert(data_lifeup, 12) table.insert(data_lifeup, 36) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 12) table.insert(data_lifeup, 36) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[5], 2) then table.insert(data_pickup, 10) table.insert(data_pickup, 29) table.insert(data_pickup, true)
	else table.insert(data_pickup, 10) table.insert(data_pickup, 29) table.insert(data_pickup, false) end
	if bit.check(pickup_data[5], 1) then table.insert(data_heartup, 11) table.insert(data_heartup, 34) table.insert(data_heartup, true)
	else table.insert(data_heartup, 11) table.insert(data_heartup, 34) table.insert(data_heartup, false) end
	if bit.check(pickup_data[5], 0) then table.insert(data_pickup, 14) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	else table.insert(data_pickup, 14) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
--marble byte7
	if bit.check(pickup_data[6], 5) then table.insert(data_pickup, 26) table.insert(data_pickup, 28) table.insert(data_pickup, true)
	else table.insert(data_pickup, 26) table.insert(data_pickup, 28) table.insert(data_pickup, false) end
	if bit.check(pickup_data[6], 4) then table.insert(data_pickup, 26) table.insert(data_pickup, 30) table.insert(data_pickup, true)
	else table.insert(data_pickup, 26) table.insert(data_pickup, 30) table.insert(data_pickup, false) end
	if bit.check(pickup_data[6], 3) then table.insert(data_pickup, 44) table.insert(data_pickup, 26) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 26) table.insert(data_pickup, false) end
	if bit.check(pickup_data[6], 2) then table.insert(data_pickup, 44) table.insert(data_pickup, 26) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 26) table.insert(data_pickup, false) end
	if bit.check(pickup_data[6], 1) then table.insert(data_heartup, 33) table.insert(data_heartup, 27) table.insert(data_heartup, true)
	else table.insert(data_heartup, 33) table.insert(data_heartup, 27) table.insert(data_heartup, false) end
	if bit.check(pickup_data[6], 0) then table.insert(data_lifeup, 33) table.insert(data_lifeup, 27) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 33) table.insert(data_lifeup, 27) table.insert(data_lifeup, false) end
--marble byte8
	if bit.check(pickup_data[7], 7) then table.insert(data_pickup, 34) table.insert(data_pickup, 25) table.insert(data_pickup, true)
	else table.insert(data_pickup, 34) table.insert(data_pickup, 25) table.insert(data_pickup, false) end
	if bit.check(pickup_data[7], 6) then table.insert(data_pickup, 34) table.insert(data_pickup, 25) table.insert(data_pickup, true)
	else table.insert(data_pickup, 34) table.insert(data_pickup, 25) table.insert(data_pickup, false) end
	if bit.check(pickup_data[7], 5) then table.insert(data_pickup, 30) table.insert(data_pickup, 23) table.insert(data_pickup, true)
	else table.insert(data_pickup, 30) table.insert(data_pickup, 23) table.insert(data_pickup, false) end
	if bit.check(pickup_data[7], 4) then table.insert(data_pickup, 30) table.insert(data_pickup, 23) table.insert(data_pickup, true)
	else table.insert(data_pickup, 30) table.insert(data_pickup, 23) table.insert(data_pickup, false) end
	if bit.check(pickup_data[7], 3) then table.insert(data_pickup, 30) table.insert(data_pickup, 23) table.insert(data_pickup, true)
	else table.insert(data_pickup, 30) table.insert(data_pickup, 23) table.insert(data_pickup, false) end
	if bit.check(pickup_data[7], 2) then table.insert(data_heartup, 33) table.insert(data_heartup, 25) table.insert(data_heartup, true)
	else table.insert(data_heartup, 33) table.insert(data_heartup, 25) table.insert(data_heartup, false) end
	if bit.check(pickup_data[7], 1) then table.insert(data_pickup, 33) table.insert(data_pickup, 25) table.insert(data_pickup, true)
	else table.insert(data_pickup, 33) table.insert(data_pickup, 25) table.insert(data_pickup, false) end
	if bit.check(pickup_data[7], 0) then table.insert(data_lifeup, 31) table.insert(data_lifeup, 25) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 31) table.insert(data_lifeup, 25) table.insert(data_lifeup, false) end
--lib byte9
	if bit.check(pickup_data[8], 7) then table.insert(data_pickup, 46) table.insert(data_pickup, 21) table.insert(data_pickup, true)
	else table.insert(data_pickup, 46) table.insert(data_pickup, 21) table.insert(data_pickup, false) end
	if bit.check(pickup_data[8], 6) then table.insert(data_pickup, 46) table.insert(data_pickup, 21) table.insert(data_pickup, true)
	else table.insert(data_pickup, 46) table.insert(data_pickup, 21) table.insert(data_pickup, false) end
	if bit.check(pickup_data[8], 5) then table.insert(data_pickup, 46) table.insert(data_pickup, 21) table.insert(data_pickup, true)
	else table.insert(data_pickup, 46) table.insert(data_pickup, 21) table.insert(data_pickup, false) end
	if bit.check(pickup_data[8], 4) then table.insert(data_pickup, 49) table.insert(data_pickup, 21) table.insert(data_pickup, true)
	else table.insert(data_pickup, 49) table.insert(data_pickup, 21) table.insert(data_pickup, false) end
	if bit.check(pickup_data[8], 2) then table.insert(data_pickup, 50) table.insert(data_pickup, 18) table.insert(data_pickup, true)
	else table.insert(data_pickup, 50) table.insert(data_pickup, 18) table.insert(data_pickup, false) end
	if bit.check(pickup_data[8], 1) then table.insert(data_pickup, 49) table.insert(data_pickup, 18) table.insert(data_pickup, true)
	else table.insert(data_pickup, 49) table.insert(data_pickup, 18) table.insert(data_pickup, false) end
--wall byte10
	if bit.check(pickup_data[9], 6) then table.insert(data_pickup, 61) table.insert(data_pickup, 25) table.insert(data_pickup, true)
	else table.insert(data_pickup, 61) table.insert(data_pickup, 25) table.insert(data_pickup, false) end
	if bit.check(pickup_data[9], 5) then table.insert(data_lifeup, 61) table.insert(data_lifeup, 23) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 61) table.insert(data_lifeup, 23) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[9], 4) then table.insert(data_pickup, 59) table.insert(data_pickup, 23) table.insert(data_pickup, true)
	else table.insert(data_pickup, 59) table.insert(data_pickup, 23) table.insert(data_pickup, false) end
	if bit.check(pickup_data[9], 3) then table.insert(data_pickup, 61) table.insert(data_pickup, 24) table.insert(data_pickup, true)
	else table.insert(data_pickup, 61) table.insert(data_pickup, 24) table.insert(data_pickup, false) end
	if bit.check(pickup_data[9], 2) then table.insert(data_heartup, 60) table.insert(data_heartup, 15) table.insert(data_heartup, true)
	else table.insert(data_heartup, 60) table.insert(data_heartup, 15) table.insert(data_heartup, false) end
	if bit.check(pickup_data[9], 1) then table.insert(data_pickup, 59) table.insert(data_pickup, 27) table.insert(data_pickup, true)
	else table.insert(data_pickup, 59) table.insert(data_pickup, 27) table.insert(data_pickup, false) end
	if bit.check(pickup_data[9], 0) then table.insert(data_pickup, 59) table.insert(data_pickup, 27) table.insert(data_pickup, true)
	else table.insert(data_pickup, 59) table.insert(data_pickup, 27) table.insert(data_pickup, false) end
--chapel byte11
	if bit.check(pickup_data[10], 7) then table.insert(data_pickup, 5) table.insert(data_pickup, 24) table.insert(data_pickup, true)
	else table.insert(data_pickup, 5) table.insert(data_pickup, 24) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 6) then table.insert(data_pickup, 4) table.insert(data_pickup, 25) table.insert(data_pickup, true)
	else table.insert(data_pickup, 4) table.insert(data_pickup, 25) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 5) then table.insert(data_pickup, 3) table.insert(data_pickup, 26) table.insert(data_pickup, true)
	else table.insert(data_pickup, 3) table.insert(data_pickup, 26) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 4) then table.insert(data_pickup, 3) table.insert(data_pickup, 26) table.insert(data_pickup, true)
	else table.insert(data_pickup, 3) table.insert(data_pickup, 26) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 3) then table.insert(data_pickup, 2) table.insert(data_pickup, 27) table.insert(data_pickup, true)
	else table.insert(data_pickup, 2) table.insert(data_pickup, 27) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 2) then table.insert(data_pickup, 8) table.insert(data_pickup, 15) table.insert(data_pickup, true)
	else table.insert(data_pickup, 8) table.insert(data_pickup, 15) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 1) then table.insert(data_pickup, 9) table.insert(data_pickup, 21) table.insert(data_pickup, true)
	else table.insert(data_pickup, 9) table.insert(data_pickup, 21) table.insert(data_pickup, false) end
	if bit.check(pickup_data[10], 0) then table.insert(data_pickup, 6) table.insert(data_pickup, 23) table.insert(data_pickup, true)
	else table.insert(data_pickup, 6) table.insert(data_pickup, 23) table.insert(data_pickup, false) end
--lib byte12
	if bit.check(pickup_data[11], 2) then table.insert(data_pickup, 50) table.insert(data_pickup, 18) table.insert(data_pickup, true)
	else table.insert(data_pickup, 50) table.insert(data_pickup, 18) table.insert(data_pickup, false) end
	if bit.check(pickup_data[11], 1) then table.insert(data_pickup, 52) table.insert(data_pickup, 18) table.insert(data_pickup, true)
	else table.insert(data_pickup, 52) table.insert(data_pickup, 18) table.insert(data_pickup, false) end
	if bit.check(pickup_data[11], 0) then table.insert(data_pickup, 52) table.insert(data_pickup, 18) table.insert(data_pickup, true)
	else table.insert(data_pickup, 52) table.insert(data_pickup, 18) table.insert(data_pickup, false) end
--unused byte13
--chapel byte14
	if bit.check(pickup_data[13], 7) then table.insert(data_pickup, 27) table.insert(data_pickup, 11) table.insert(data_pickup, true)
	else table.insert(data_pickup, 27) table.insert(data_pickup, 11) table.insert(data_pickup, false) end
	if bit.check(pickup_data[13], 6) then table.insert(data_pickup, 27) table.insert(data_pickup, 10) table.insert(data_pickup, true)
	else table.insert(data_pickup, 27) table.insert(data_pickup, 10) table.insert(data_pickup, false) end
	if bit.check(pickup_data[13], 5) then table.insert(data_pickup, 19) table.insert(data_pickup, 11) table.insert(data_pickup, true)
	else table.insert(data_pickup, 19) table.insert(data_pickup, 11) table.insert(data_pickup, false) end
	if bit.check(pickup_data[13], 4) then table.insert(data_lifeup, 14) table.insert(data_lifeup, 13) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 14) table.insert(data_lifeup, 13) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[13], 3) then table.insert(data_pickup, 15) table.insert(data_pickup, 13) table.insert(data_pickup, true)
	else table.insert(data_pickup, 15) table.insert(data_pickup, 13) table.insert(data_pickup, false) end
	if bit.check(pickup_data[13], 2) then table.insert(data_pickup, 14) table.insert(data_pickup, 12) table.insert(data_pickup, true)
	else table.insert(data_pickup, 14) table.insert(data_pickup, 12) table.insert(data_pickup, false) end
	if bit.check(pickup_data[13], 1) then table.insert(data_pickup, 10) table.insert(data_pickup, 21) table.insert(data_pickup, true)
	else table.insert(data_pickup, 10) table.insert(data_pickup, 21) table.insert(data_pickup, false) end
	if bit.check(pickup_data[13], 0) then table.insert(data_pickup, 7) table.insert(data_pickup, 22) table.insert(data_pickup, true)
	else table.insert(data_pickup, 7) table.insert(data_pickup, 22) table.insert(data_pickup, false) end
--keep byte15
	if bit.check(pickup_data[14], 7) then table.insert(data_heartup, 39) table.insert(data_heartup, 6) table.insert(data_heartup, true)
	else table.insert(data_heartup, 39) table.insert(data_heartup, 6) table.insert(data_heartup, false) end
	if bit.check(pickup_data[14], 6) then table.insert(data_lifeup, 38) table.insert(data_lifeup, 7) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 38) table.insert(data_lifeup, 7) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[14], 5) then table.insert(data_lifeup, 38) table.insert(data_lifeup, 6) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 38) table.insert(data_lifeup, 6) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[14], 4) then table.insert(data_pickup, 39) table.insert(data_pickup, 8) table.insert(data_pickup, true)
	else table.insert(data_pickup, 39) table.insert(data_pickup, 8) table.insert(data_pickup, false) end
	if bit.check(pickup_data[14], 3) then table.insert(data_pickup, 35) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[14], 2) then table.insert(data_pickup, 36) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[14], 1) then table.insert(data_pickup, 35) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[14], 0) then table.insert(data_pickup, 35) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
--keep byte16
	if bit.check(pickup_data[15], 7) then table.insert(data_pickup, 34) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 34) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 6) then table.insert(data_pickup, 33) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 33) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 5) then table.insert(data_pickup, 33) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 33) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 4) then table.insert(data_pickup, 33) table.insert(data_pickup, 6) table.insert(data_pickup, true)
	else table.insert(data_pickup, 33) table.insert(data_pickup, 6) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 3) then table.insert(data_pickup, 39) table.insert(data_pickup, 11) table.insert(data_pickup, true)
	else table.insert(data_pickup, 39) table.insert(data_pickup, 11) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 2) then table.insert(data_pickup, 31) table.insert(data_pickup, 9) table.insert(data_pickup, true)
	else table.insert(data_pickup, 31) table.insert(data_pickup, 9) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 1) then table.insert(data_pickup, 31) table.insert(data_pickup, 11) table.insert(data_pickup, true)
	else table.insert(data_pickup, 31) table.insert(data_pickup, 11) table.insert(data_pickup, false) end
	if bit.check(pickup_data[15], 0) then table.insert(data_pickup, 31) table.insert(data_pickup, 11) table.insert(data_pickup, true)
	else table.insert(data_pickup, 31) table.insert(data_pickup, 11) table.insert(data_pickup, false) end
--clock byte17
	if bit.check(pickup_data[16], 7) then table.insert(data_pickup, 55) table.insert(data_pickup, 13) table.insert(data_pickup, true)
	else table.insert(data_pickup, 55) table.insert(data_pickup, 13) table.insert(data_pickup, false) end
	if bit.check(pickup_data[16], 6) then table.insert(data_pickup, 42) table.insert(data_pickup, 11) table.insert(data_pickup, true)
	else table.insert(data_pickup, 42) table.insert(data_pickup, 11) table.insert(data_pickup, false) end
	if bit.check(pickup_data[16], 5) then table.insert(data_pickup, 49) table.insert(data_pickup, 14) table.insert(data_pickup, true)
	else table.insert(data_pickup, 49) table.insert(data_pickup, 14) table.insert(data_pickup, false) end
	if bit.check(pickup_data[16], 4) then table.insert(data_pickup, 49) table.insert(data_pickup, 14) table.insert(data_pickup, true)
	else table.insert(data_pickup, 49) table.insert(data_pickup, 14) table.insert(data_pickup, false) end
	if bit.check(pickup_data[16], 3) then table.insert(data_pickup, 49) table.insert(data_pickup, 14) table.insert(data_pickup, true)
	else table.insert(data_pickup, 49) table.insert(data_pickup, 14) table.insert(data_pickup, false) end
	if bit.check(pickup_data[16], 1) then table.insert(data_pickup, 55) table.insert(data_pickup, 14) table.insert(data_pickup, true)
	else table.insert(data_pickup, 55) table.insert(data_pickup, 14) table.insert(data_pickup, false) end
	if bit.check(pickup_data[16], 0) then table.insert(data_pickup, 56) table.insert(data_pickup, 14) table.insert(data_pickup, true)
	else table.insert(data_pickup, 56) table.insert(data_pickup, 14) table.insert(data_pickup, false) end
--keep byte18
	if bit.check(pickup_data[17], 2) then table.insert(data_heartup, 35) table.insert(data_heartup, 8) table.insert(data_heartup, true)
	else table.insert(data_heartup, 35) table.insert(data_heartup, 8) table.insert(data_heartup, false) end
	if bit.check(pickup_data[17], 0) then table.insert(data_heartup, 38) table.insert(data_heartup, 7) table.insert(data_heartup, true)
	else table.insert(data_heartup, 38) table.insert(data_heartup, 7) table.insert(data_heartup, false) end
--cave byte18
	if bit.check(pickup_data[18], 7) then table.insert(data_pickup, 22) table.insert(data_pickup, 37) table.insert(data_pickup, true)
	else table.insert(data_pickup, 22) table.insert(data_pickup, 37) table.insert(data_pickup, false) end
	if bit.check(pickup_data[18], 6) then table.insert(data_lifeup, 25) table.insert(data_lifeup, 42) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 25) table.insert(data_lifeup, 42) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[18], 5) then table.insert(data_lifeup, 30) table.insert(data_lifeup, 38) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 30) table.insert(data_lifeup, 38) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[18], 4) then table.insert(data_pickup, 30) table.insert(data_pickup, 38) table.insert(data_pickup, true)
	else table.insert(data_pickup, 30) table.insert(data_pickup, 38) table.insert(data_pickup, false) end
	if bit.check(pickup_data[18], 2) then table.insert(data_pickup, 40) table.insert(data_pickup, 38) table.insert(data_pickup, true)
	else table.insert(data_pickup, 40) table.insert(data_pickup, 38) table.insert(data_pickup, false) end
	if bit.check(pickup_data[18], 1) then table.insert(data_lifeup, 37) table.insert(data_lifeup, 32) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 37) table.insert(data_lifeup, 32) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[18], 0) then table.insert(data_lifeup, 36) table.insert(data_lifeup, 27) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 36) table.insert(data_lifeup, 27) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[18], 0) then table.insert(data_lifeup, 9) table.insert(data_lifeup, 43) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 9) table.insert(data_lifeup, 43) table.insert(data_lifeup, false) end
--olock byte20
	if bit.check(pickup_data[19], 4) then table.insert(data_pickup, 51) table.insert(data_pickup, 9) table.insert(data_pickup, true)
	else table.insert(data_pickup, 51) table.insert(data_pickup, 9) table.insert(data_pickup, false) end
	if bit.check(pickup_data[19], 3) then table.insert(data_heartup, 52) table.insert(data_heartup, 9) table.insert(data_heartup, true)
	else table.insert(data_heartup, 52) table.insert(data_heartup, 9) table.insert(data_heartup, false) end
	if bit.check(pickup_data[19], 2) then table.insert(data_lifeup, 50) table.insert(data_lifeup, 9) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 50) table.insert(data_lifeup, 9) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[19], 1) then table.insert(data_pickup, 55) table.insert(data_pickup, 13) table.insert(data_pickup, true)
	else table.insert(data_pickup, 55) table.insert(data_pickup, 13) table.insert(data_pickup, false) end
	if bit.check(pickup_data[19], 0) then table.insert(data_pickup, 55) table.insert(data_pickup, 13) table.insert(data_pickup, true)
	else table.insert(data_pickup, 55) table.insert(data_pickup, 13) table.insert(data_pickup, false) end
--caves byte21
	if bit.check(pickup_data[20], 7) then table.insert(data_pickup, 40) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 40) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 6) then table.insert(data_pickup, 45) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 45) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 5) then table.insert(data_pickup, 45) table.insert(data_pickup, 38) table.insert(data_pickup, true)
	else table.insert(data_pickup, 45) table.insert(data_pickup, 38) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 4) then table.insert(data_pickup, 43) table.insert(data_pickup, 39) table.insert(data_pickup, true)
	else table.insert(data_pickup, 43) table.insert(data_pickup, 39) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 3) then table.insert(data_pickup, 45) table.insert(data_pickup, 39) table.insert(data_pickup, true)
	else table.insert(data_pickup, 45) table.insert(data_pickup, 39) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 2) then table.insert(data_pickup, 44) table.insert(data_pickup, 33) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 33) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 1) then table.insert(data_pickup, 44) table.insert(data_pickup, 33) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 33) table.insert(data_pickup, false) end
	if bit.check(pickup_data[20], 0) then table.insert(data_pickup, 44) table.insert(data_pickup, 32) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 32) table.insert(data_pickup, false) end
--caves byte22
	if bit.check(pickup_data[21], 7) then table.insert(data_pickup, 44) table.insert(data_pickup, 32) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 32) table.insert(data_pickup, false) end
	if bit.check(pickup_data[21], 6) then table.insert(data_pickup, 44) table.insert(data_pickup, 32) table.insert(data_pickup, true)
	else table.insert(data_pickup, 44) table.insert(data_pickup, 32) table.insert(data_pickup, false) end
	if bit.check(pickup_data[21], 5) then table.insert(data_pickup, 43) table.insert(data_pickup, 29) table.insert(data_pickup, true)
	else table.insert(data_pickup, 43) table.insert(data_pickup, 29) table.insert(data_pickup, false) end
	if bit.check(pickup_data[21], 4) then table.insert(data_pickup, 38) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	else table.insert(data_pickup, 38) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
	if bit.check(pickup_data[21], 3) then table.insert(data_pickup, 35) table.insert(data_pickup, 27) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 27) table.insert(data_pickup, false) end
	if bit.check(pickup_data[21], 2) then table.insert(data_pickup, 45) table.insert(data_pickup, 33) table.insert(data_pickup, true)
	else table.insert(data_pickup, 45) table.insert(data_pickup, 33) table.insert(data_pickup, false) end
	if bit.check(pickup_data[21], 1) then table.insert(data_pickup, 39) table.insert(data_pickup, 26) table.insert(data_pickup, true)
	else table.insert(data_pickup, 39) table.insert(data_pickup, 26) table.insert(data_pickup, false) end
--caves byte23
	if bit.check(pickup_data[22], 4) then table.insert(data_pickup, 38) table.insert(data_pickup, 38) table.insert(data_pickup, true)
	else table.insert(data_pickup, 38) table.insert(data_pickup, 38) table.insert(data_pickup, false) end
	if bit.check(pickup_data[22], 3) then table.insert(data_pickup, 17) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 17) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[22], 1) then table.insert(data_pickup, 23) table.insert(data_pickup, 42) table.insert(data_pickup, true)
	else table.insert(data_pickup, 23) table.insert(data_pickup, 42) table.insert(data_pickup, false) end
	if bit.check(pickup_data[22], 0) then table.insert(data_pickup, 23) table.insert(data_pickup, 40) table.insert(data_pickup, true)
	else table.insert(data_pickup, 23) table.insert(data_pickup, 40) table.insert(data_pickup, false) end
--caves byte24
	if bit.check(pickup_data[23], 7) then table.insert(data_pickup, 24) table.insert(data_pickup, 39) table.insert(data_pickup, true)
	else table.insert(data_pickup, 24) table.insert(data_pickup, 39) table.insert(data_pickup, false) end
	if bit.check(pickup_data[23], 6) then table.insert(data_pickup, 25) table.insert(data_pickup, 37) table.insert(data_pickup, true)
	else table.insert(data_pickup, 25) table.insert(data_pickup, 37) table.insert(data_pickup, false) end
	if bit.check(pickup_data[23], 5) then table.insert(data_heartup, 29) table.insert(data_heartup, 37) table.insert(data_heartup, true)
	else table.insert(data_heartup, 29) table.insert(data_heartup, 37) table.insert(data_heartup, false) end
	if bit.check(pickup_data[23], 4) then table.insert(data_lifeup, 29) table.insert(data_lifeup, 37) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 29) table.insert(data_lifeup, 37) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[23], 3) then table.insert(data_pickup, 37) table.insert(data_pickup, 37) table.insert(data_pickup, true)
	else table.insert(data_pickup, 37) table.insert(data_pickup, 37) table.insert(data_pickup, false) end
	if bit.check(pickup_data[23], 2) then table.insert(data_pickup, 38) table.insert(data_pickup, 37) table.insert(data_pickup, true)
	else table.insert(data_pickup, 38) table.insert(data_pickup, 37) table.insert(data_pickup, false) end
	if bit.check(pickup_data[23], 1) then table.insert(data_pickup, 52) table.insert(data_pickup, 42) table.insert(data_pickup, true)
	else table.insert(data_pickup, 52) table.insert(data_pickup, 42) table.insert(data_pickup, false) end
	if bit.check(pickup_data[23], 0) then table.insert(data_lifeup, 42) table.insert(data_lifeup, 42) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 42) table.insert(data_lifeup, 42) table.insert(data_lifeup, false) end
--olrox byte25
	if bit.check(pickup_data[24], 3) then table.insert(data_pickup, 22) table.insert(data_pickup, 16) table.insert(data_pickup, true)
	else table.insert(data_pickup, 22) table.insert(data_pickup, 16) table.insert(data_pickup, false) end
	if bit.check(pickup_data[24], 2) then table.insert(data_pickup, 30) table.insert(data_pickup, 15) table.insert(data_pickup, true)
	else table.insert(data_pickup, 30) table.insert(data_pickup, 15) table.insert(data_pickup, false) end
	if bit.check(pickup_data[24], 1) then table.insert(data_pickup, 35) table.insert(data_pickup, 17) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 17) table.insert(data_pickup, false) end
	if bit.check(pickup_data[24], 0) then table.insert(data_pickup, 35) table.insert(data_pickup, 19) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 19) table.insert(data_pickup, false) end
--olrox byte26
	if bit.check(pickup_data[25], 7) then table.insert(data_pickup, 35) table.insert(data_pickup, 20) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 20) table.insert(data_pickup, false) end
	if bit.check(pickup_data[25], 6) then table.insert(data_pickup, 32) table.insert(data_pickup, 22) table.insert(data_pickup, true)
	else table.insert(data_pickup, 32) table.insert(data_pickup, 22) table.insert(data_pickup, false) end
	if bit.check(pickup_data[25], 5) then table.insert(data_pickup, 32) table.insert(data_pickup, 22) table.insert(data_pickup, true)
	else table.insert(data_pickup, 32) table.insert(data_pickup, 22) table.insert(data_pickup, false) end
	if bit.check(pickup_data[25], 4) then table.insert(data_pickup, 32) table.insert(data_pickup, 22) table.insert(data_pickup, true)
	else table.insert(data_pickup, 32) table.insert(data_pickup, 22) table.insert(data_pickup, false) end
	if bit.check(pickup_data[25], 1) then table.insert(data_heartup, 21) table.insert(data_heartup, 19) table.insert(data_heartup, true)
	else table.insert(data_heartup, 21) table.insert(data_heartup, 19) table.insert(data_heartup, false) end
--mine byte27
	if bit.check(pickup_data[26], 7) then table.insert(data_pickup, 32) table.insert(data_pickup, 46) table.insert(data_pickup, true)
	else table.insert(data_pickup, 32) table.insert(data_pickup, 46) table.insert(data_pickup, false) end
	if bit.check(pickup_data[26], 6) then table.insert(data_pickup, 32) table.insert(data_pickup, 47) table.insert(data_pickup, true)
	else table.insert(data_pickup, 32) table.insert(data_pickup, 47) table.insert(data_pickup, false) end
	if bit.check(pickup_data[26], 5) then table.insert(data_pickup, 31) table.insert(data_pickup, 48) table.insert(data_pickup, true)
	else table.insert(data_pickup, 31) table.insert(data_pickup, 48) table.insert(data_pickup, false) end
	if bit.check(pickup_data[26], 4) then table.insert(data_pickup, 37) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 37) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[26], 3) then table.insert(data_pickup, 37) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 37) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[26], 1) then table.insert(data_pickup, 31) table.insert(data_pickup, 48) table.insert(data_pickup, true)
	else table.insert(data_pickup, 31) table.insert(data_pickup, 48) table.insert(data_pickup, false) end
	if bit.check(pickup_data[26], 0) then table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
--colos byte28
	if bit.check(pickup_data[27], 6) then table.insert(data_pickup, 19) table.insert(data_pickup, 24) table.insert(data_pickup, true)
	else table.insert(data_pickup, 19) table.insert(data_pickup, 24) table.insert(data_pickup, false) end
	if bit.check(pickup_data[27], 5) then table.insert(data_pickup, 18) table.insert(data_pickup, 22) table.insert(data_pickup, true)
	else table.insert(data_pickup, 18) table.insert(data_pickup, 22) table.insert(data_pickup, false) end
	if bit.check(pickup_data[27], 4) then table.insert(data_pickup, 14) table.insert(data_pickup, 22) table.insert(data_pickup, true)
	else table.insert(data_pickup, 14) table.insert(data_pickup, 22) table.insert(data_pickup, false) end
	if bit.check(pickup_data[27], 3) then table.insert(data_pickup, 20) table.insert(data_pickup, 24) table.insert(data_pickup, true)
	else table.insert(data_pickup, 20) table.insert(data_pickup, 24) table.insert(data_pickup, false) end
	if bit.check(pickup_data[27], 1) then table.insert(data_pickup, 13) table.insert(data_pickup, 24) table.insert(data_pickup, true)
	else table.insert(data_pickup, 13) table.insert(data_pickup, 24) table.insert(data_pickup, false) end
	if bit.check(pickup_data[27], 0) then table.insert(data_heartup, 26) table.insert(data_heartup, 24) table.insert(data_heartup, true)
	else table.insert(data_heartup, 26) table.insert(data_heartup, 24) table.insert(data_heartup, false) end
--cata byte29
	if bit.check(pickup_data[28], 7) then table.insert(data_pickup, 26) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 26) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[28], 6) then table.insert(data_heartup, 26) table.insert(data_heartup, 50) table.insert(data_heartup, true)
	else table.insert(data_heartup, 26) table.insert(data_heartup, 50) table.insert(data_heartup, false) end
	if bit.check(pickup_data[28], 4) then table.insert(data_pickup, 41) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 41) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[28], 3) then table.insert(data_pickup, 17) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 17) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[28], 2) then table.insert(data_pickup, 23) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 23) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[28], 1) then table.insert(data_pickup, 24) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 24) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[28], 0) then table.insert(data_pickup, 28) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 28) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
--mine byte30
	if bit.check(pickup_data[29], 4) then table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[29], 3) then table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[29], 2) then table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[29], 1) then table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
	if bit.check(pickup_data[29], 0) then table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, true)
	else table.insert(data_pickup, 36) table.insert(data_pickup, 41) table.insert(data_pickup, false) end
--cata byte31
	if bit.check(pickup_data[30], 5) then table.insert(data_pickup, 20) table.insert(data_pickup, 51) table.insert(data_pickup, true)
	else table.insert(data_pickup, 20) table.insert(data_pickup, 51) table.insert(data_pickup, false) end
	if bit.check(pickup_data[30], 1) then table.insert(data_pickup, 33) table.insert(data_pickup, 51) table.insert(data_pickup, true)
	else table.insert(data_pickup, 33) table.insert(data_pickup, 51) table.insert(data_pickup, false) end
	if bit.check(pickup_data[30], 0) then table.insert(data_pickup, 41) table.insert(data_pickup, 51) table.insert(data_pickup, true)
	else table.insert(data_pickup, 41) table.insert(data_pickup, 51) table.insert(data_pickup, false) end
--cata byte32
	if bit.check(pickup_data[31], 7) then table.insert(data_pickup, 48) table.insert(data_pickup, 51) table.insert(data_pickup, true)
	else table.insert(data_pickup, 48) table.insert(data_pickup, 51) table.insert(data_pickup, false) end
	if bit.check(pickup_data[31], 6) then table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[31], 5) then table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[31], 4) then table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[31], 3) then table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 48) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
	if bit.check(pickup_data[31], 2) then table.insert(data_heartup, 32) table.insert(data_heartup, 51) table.insert(data_heartup, true)
	else table.insert(data_heartup, 32) table.insert(data_heartup, 51) table.insert(data_heartup, false) end
	if bit.check(pickup_data[31], 1) then table.insert(data_lifeup, 32) table.insert(data_lifeup, 51) table.insert(data_lifeup, true)
	else table.insert(data_lifeup, 32) table.insert(data_lifeup, 51) table.insert(data_lifeup, false) end
	if bit.check(pickup_data[31], 0) then table.insert(data_pickup, 28) table.insert(data_pickup, 50) table.insert(data_pickup, true)
	else table.insert(data_pickup, 28) table.insert(data_pickup, 50) table.insert(data_pickup, false) end
--garden byte33
	if bit.check(pickup_data[32], 0) then table.insert(data_pickup, 6) table.insert(data_pickup, 44) table.insert(data_pickup, true)
	else table.insert(data_pickup, 6) table.insert(data_pickup, 44) table.insert(data_pickup, false) end
--prison byte36
	if bit.check(pickup_data[35], 2) then table.insert(data_pickup, 35) table.insert(data_pickup, 36) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 36) table.insert(data_pickup, false) end
	if bit.check(pickup_data[35], 1) then table.insert(data_pickup, 33) table.insert(data_pickup, 35) table.insert(data_pickup, true)
	else table.insert(data_pickup, 33) table.insert(data_pickup, 35) table.insert(data_pickup, false) end
	if bit.check(pickup_data[35], 0) then table.insert(data_pickup, 35) table.insert(data_pickup, 35) table.insert(data_pickup, true)
	else table.insert(data_pickup, 35) table.insert(data_pickup, 35) table.insert(data_pickup, false) end
end



end

--


--music_text = music_ID.music.name   -- music_ID.music.name
--print(music_ID[music])

--if script_debug then debug_data = debug_data.."      music: "..music.."  " end

if script_debug then debug_data = debug_data.." mouseX:"..mouse_X.." mouseY:"..mouse_Y end
if script_debug then debug_data = debug_data.."      music: "..music.." " end
if script_debug and music_ID[music] ~= nil then debug_data = debug_data.." "..music_ID[music] end
if script_debug and castleB then debug_data = debug_data.." inverted castle " else debug_data = debug_data.." normal castle " end
end
--------------------------------
function resolution_switch()
--the following is to make sure everything is proper when the game change its resolution
	if game_is_alt_rez then --second resolution
		script_gamebox = false
		script_player_hitbox = false
		script_objects_hitbox = false
		script_position = false
		script_vpad = false
		script_status = false
		script_monitor = false
		script_stat = false
		script_pickup = false
		script_info_time = false
		script_rng = false
		client.SetGameExtraPadding(235, -44, -40, -36) --menu resize coz they did bad stuff here with resolution
	elseif game_is_map then--map is a different (third) resolution
		script_gamebox = false
		script_player_hitbox = false
		script_objects_hitbox = false
		script_position = false
		script_vpad = false
		script_status = false
		script_monitor = false
		script_stat = false
		script_pickup = false
		script_info_time = false
		script_rng = false
		script_map_cursor = false
		script_map_info = false
		client.SetGameExtraPadding(0, 0, 0, 0) --resize on map
	else--its the rest... the resolution is normal
		if script_hitbox then script_player_hitbox = true script_objects_hitbox = true end
		script_gamebox = true
		script_position = true
		script_vpad = true
		script_status = true
		script_monitor = true
		script_stat = true
		script_pickup = true
		script_info_time = true
		script_rng = true
--		script_map_cursor = true --erh, this would mean the on/off button never work...
		script_map_info = true
		client.SetGameExtraPadding(300, 80, 140, 80)--see init for values
		if game_is_menu then --relic, inventory, spells
			script_gamebox = true
			script_player_hitbox = false
			script_objects_hitbox = false
		end 
	end
end
--------------------------------
--------------------------------