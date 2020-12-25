--------------------------------
--------------------------------
function rng()
	gui.drawBox(676, 40, 791, 55, 0xCF646464, nil)
	gui.drawText(684, 40, "RNG", 0xCFFFFFFF, nil, 13, "Arial", "bold", nil, nil)
	gui.drawText(714, 40, ""..(bizstring.hex(state_rng)), 0xCFFFFFFF, nil, 13, "Arial", "bold", nil, nil)
	state_rng = nil
end
--------------------------------
function map_info()
	gui.drawBox(0, 195, 275, 220, 0xCF646464, nil)
	gui.drawText(2, 193, "X"..room_grid_X.."Y"..room_grid_Y.." - "..room_text.." - "..room_special, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)--first line
	gui.drawText(2, 204, room_boss.." "..room_relic.." "..room_lifeup.." "..room_heartup.." "..room_pickup, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)--second line
end
--------------------------------
function game_box()
	gui.drawBox(315, 79, 636, 320, 0x61FF0000, nil) --game box, slightly red
	gui.drawBox(275, 40, 676, 360, 0xCF646464, nil) --objects draw limits
end
--------------------------------
function info_time()
	gui.drawBox(581, 360, 676, 399, 0xCF646464, nil)
--FRAMES/LAG/REAL TIME COUNTER/IN GAME TIME RAM WATCH
	--if its a movie, we want to turn all the text into red when its over
	if movie.mode() == 'FINISHED' and the_frame >= movie.length() then	color_frame_text = 0xCFFF0000 else color_frame_text = 0xCFFFFFFF end
--IN GAME TIME
	gui.drawText(581, 372, "Game Time:", color_frame_text, nil, 10, "impact",  nil, nil, nil)
	if stat_gametime_hours >= 0 and stat_gametime_hours < 10  then
	stat_gametime_hours = "0"..stat_gametime_hours
	end
	gui.drawText(629, 372, ""..stat_gametime_hours, color_frame_text, nil, 10, "impact",  nil, nil, nil)
	if stat_gametime_minutes >= 0 and stat_gametime_minutes < 10  then
	stat_gametime_minutes = "0"..stat_gametime_minutes
	end
	gui.drawText(639, 372, ":"..stat_gametime_minutes, color_frame_text, nil, 10, "impact",  nil, nil, nil)
	if stat_gametime_seconds >= 0 and stat_gametime_seconds < 10  then
	stat_gametime_seconds = "0"..stat_gametime_seconds
	end
	gui.drawText(651, 372, ":"..stat_gametime_seconds, color_frame_text, nil, 10, "impact",  nil, nil, nil)
--REAL TIME
	local fps = 60
	local tseconds = (the_frame / fps)
	local secondsraw = tseconds % 60;
	local shift = 10 ^ 2;
	local seconds = math.floor((secondsraw * shift) + 0.5) / shift;
	local secondsstr = string.format("%.1f", seconds)
	if (seconds < 10) then
		secondsstr = "0" .. secondsstr;
	end
	local minutes = (math.floor(tseconds / 60)) % 60;
	local minutesstr = minutes;
	if (minutes < 10) then
		minutesstr = "0" .. minutesstr;
	end
	local hours = (math.floor(tseconds / 60 / 60)) % 24;
	local time = minutesstr .. ":" .. secondsstr;
		if hours >= 0 and hours < 10  then
			time = "0" .. hours .. ":" .. time;
			else
			time = hours .. ":" .. time;
		end
	gui.drawText(581, 360, "Real   Time:", color_frame_text, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(629, 360, time, color_frame_text, nil, 10, "impact",  nil, nil, nil)
--FRAMES/LAG
	gui.drawText(581, 384, "Frame:", color_frame_text, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(611, 384, the_frame, color_frame_text, nil, 10, "impact",  nil, nil, nil)
	color_frame_text = nil
end
--------------------------------
function position()
	gui.drawBox(275, 0, 791, 20, 0xCF646464, nil)
	gui.drawText(275, -2, "X :"..player_X_position_absolute, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil) 
	gui.drawText(275, 7, "Y :"..player_Y_position_absolute, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(315, -2, "Relative:"..player_X_position_relative, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(315, 7, "Relative:"..player_Y_position_relative, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(382, -2, "Scroll:"..player_X_scroll, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(382, 7, "Scroll:"..player_Y_scroll, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(440, -2, "Speed:"..player_X_speed, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(440, 7, "Speed:"..player_Y_speed, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(480, -2, "Subpixel:"..player_X_subpixel, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(480, 7, "Subpixel:"..player_Y_subpixel, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(531, -2, "Motion:"..player_X_motion, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(531, 7, "Motion:"..player_Y_motion, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
--
	gui.drawBox(578, 0, 640, 20, 0xCF646464, nil)
	gui.drawText(577, -2, "Box "..player_X_hitbox_radius, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(577, 7, "Box "..player_Y_hitbox_radius, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(604, -2, "offset"..player_X_hitbox_offset, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(604, 7, "offset"..player_Y_hitbox_offset, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
--
	gui.drawBox(275+365, 0, 791, 20, 0xCF646464, nil)
	gui.drawText(639, -2, "Grid "..room_grid_X, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(639, 7, "Grid "..room_grid_Y, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(670, -2, "Start "..room_X_origin_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(670, 7, "Start "..room_Y_origin_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(703, -2, "Size "..room_X_size_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(703, 7, "Size "..room_Y_size_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(733, -2, "Min "..room_X_min_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(733, 7, "Min "..room_Y_min_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(761, -2, "Max "..room_X_max_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	gui.drawText(761, 7, "Max "..room_Y_max_grid, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
--
end
--------------------------------
function status()
	gui.drawBox(324, 20, 375, 40, 0xCF646464, nil)
if player_character_ID == 0 then --its alucard
	player_status_normal = true

	if player_action_ID == 24 and player_morph == 1 then --alucard is the wolf
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[25])
		gui.drawImage('.\\NitM\\relic\\relic_wolf_soul.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end

	if player_action_ID == 7 and player_morph == 1 then --alucard is the mist
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[57])
		if relic_data[8] == 3 then --its poison gaz
			gui.drawImage('.\\NitM\\relic\\relic_mist_gaz.png', 342+2, 22+1, 14, 14, true)
		else
			gui.drawImage('.\\NitM\\relic\\relic_mist_form.png', 342+2, 22+1, 14, 14, true)
		end
		player_status_normal = false
	end

	if player_action_ID == 5 and player_morph == 1 then --alucard is the bat
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[1])
		gui.drawImage('.\\NitM\\relic\\relic_bat_soul.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end
	
	if player_action_ID == 24 and player_morph == 1 and player_invincible_timer >= 10 then --alucard is the wolf but no control
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[25])
		gui.drawImage('.\\NitM\\relic\\relic_wolf_soul_grey.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end

	if player_action_ID == 5 and player_morph == 1 and player_invincible_timer >= 10 then --alucard is the bat but no control
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[1])
		gui.drawImage('.\\NitM\\relic\\relic_bat_soul_grey.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end
	
	if player_action_ID == 25 and player_morph == 1 then --alucard unmorph wolf
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[25])
		gui.drawImage('.\\NitM\\relic\\relic_wolf_soul_grey.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end

	if player_action_ID == 14 and player_morph == 1 then --alucard unmorph mist
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[57])
		gui.drawImage('.\\NitM\\relic\\relic_mist_form_grey.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end

	if player_action_ID == 9 and player_morph == 1 then --alucard unmorph bat
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[1])
		gui.drawImage('.\\NitM\\relic\\relic_bat_soul_grey.png', 342+2, 22+1, 14, 14, true)
		player_status_normal = false
	end

	if player_status_flag == 8 then --alucard is either poison or curse (or something else?)
	
		if player_status_poison_timer > 0 or player_status_poison_mult > 0 then --alucard is poison
			gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[49])
			poison_time_left = (player_status_poison_timer + (256*player_status_poison_mult))/60 
			poison_time_left = string.sub(poison_time_left, 1,2)
			gui.drawText(324, 18, poison_time_left.."s", "red", nil, 10, "impact",  nil, nil, nil)	
			if player_action_ID == 24 or player_action_ID == 7 or player_action_ID == 5 then
			else
				if player_orientation == 0 then --its right		
					gui.drawImage('.\\NitM\\player\\Alucard_right_poison.png', 342, 22, 17, 18, true)
				else--its left
					gui.drawImage('.\\NitM\\player\\Alucard_left_poison.png', 342, 22, 17, 18, true)
				end
			end
			player_status_normal = false
		end
		
		if player_status_curse_timer > 0 or player_status_curse_mult > 0 then --alucard is curse
			gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[41])
			curse_time_left = (player_status_curse_timer + (256*player_status_curse_mult))/60 
			curse_time_left = string.sub(curse_time_left, 1,2)
			gui.drawText(324, 18+9, curse_time_left.."s", "red", nil, 10, "impact",  nil, nil, nil)
			if player_action_ID == 24 or player_action_ID == 7 or player_action_ID == 5 then
			else
				if player_orientation == 0 then --its right		
					gui.drawImage('.\\NitM\\player\\Alucard_right_curse.png', 342, 22, 17, 18, true)
				else--its left
					gui.drawImage('.\\NitM\\player\\Alucard_left_curse.png', 342, 22, 17, 18, true)
				end
			end
			player_status_normal = false
		end
	end

	if player_action_ID == 10 or player_action_ID == 16 then --alucard is taking damage10 or is dead16
		if player_orientation == 0 then --its right		
			gui.drawImage('.\\NitM\\player\\Alucard_right_red.png', 342, 22, 17, 18, true)
		else--its left
			gui.drawImage('.\\NitM\\player\\Alucard_left_red.png', 342, 22, 17, 18, true)
		end
		player_status_normal = false
	end

	if player_action_ID == 11 then--alucard is stone
		--stone A and B are set to 128 when alucard is stone
		--player_status_stoneA --player_status_stoneB
		gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[65])
		if player_orientation == 0 then --its right		
			gui.drawImage('.\\NitM\\player\\Alucard_right_grey.png', 342, 22, 17, 18, true)
		else--its left
			gui.drawImage('.\\NitM\\player\\Alucard_left_grey.png', 342, 22, 17, 18, true)
		end
		player_status_normal = false
	end

	if player_morph_timer >= 1 then
		gui.drawText(361, 18, player_morph_timer, 0xFF00FF00, nil, 10, "impact",  nil, nil, nil)
	end

	if player_invincible_timer >= 1 then
		if player_orientation == 0 and player_action_ID ~= 5 and player_action_ID ~= 7 and player_action_ID ~= 9 and player_action_ID ~= 14 and player_action_ID ~= 24 and player_action_ID ~= 25 then --its right		
			gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[73])
			gui.drawImage('.\\NitM\\player\\Alucard_right_invul.png', 342, 22, 17, 18, true)
		end
		if player_orientation == 1 and player_action_ID ~= 5 and player_action_ID ~= 7 and player_action_ID ~= 9 and player_action_ID ~= 14 and player_action_ID ~= 24 and player_action_ID ~= 25 then --its left		
			gui.drawBox(324, 20, 375, 40, 0xCF646464, Zcolor[73])
			gui.drawImage('.\\NitM\\player\\Alucard_left_invul.png', 342, 22, 17, 18, true)
		end
		gui.drawText(361, 18+9, player_invincible_timer, 0xFFFFFFFF, nil, 10, "impact",  nil, nil, nil)
		player_status_normal = false
	end

	if player_status_normal == true then --ok alucard is neither damage, poison, curse, stone, bat, mist, wolf   (hes normal lol)
		if player_orientation == 0 then --its right
			gui.drawImage('.\\NitM\\player\\Alucard_right.png', 342, 22, 17, 18, true)
		else--its left
			gui.drawImage('.\\NitM\\player\\Alucard_left.png', 342, 22, 17, 18, true)	
		end
	end

end
	--ok lol, this need more work obviously....
	if player_character_ID == 1 then
	gui.drawImage('.\\NitM\\player\\Richter.png', 342, 22, 17, 19, true)
	end
	if player_character_ID == 2 then 
	gui.drawImage('.\\NitM\\player\\Maria.png', 342, 22, 17, 16, true) 
	end
end
--------------------------------
function monitor()
	if player_action_ID ~= 0 then
		gui.drawBox(375, 20, 485, 30, 0xCF646464, Zcolor[4])
	else
		gui.drawBox(375, 20, 485, 30, 0xCF646464, Zcolor[60])	
	end
	if player_character_ID == 0 then --of course richter and maria have different action ID than alucard !
		if player_action_ID == 0 then
			action_text = player_action_ID.." idle"	
		elseif player_action_ID == 1 then
			action_text = player_action_ID.." walking"
		elseif player_action_ID == 2 then
			action_text = player_action_ID.." crouch"
		elseif player_action_ID == 3 then
			action_text = player_action_ID.." fall"
		elseif player_action_ID == 4 then
			action_text = player_action_ID.." jump"
		elseif player_action_ID == 5 then
			action_text = player_action_ID.." bat"
		elseif player_action_ID == 6 then
			action_text = player_action_ID
		elseif player_action_ID == 7 then
			action_text = player_action_ID.." mist"
		elseif player_action_ID == 8 then
			action_text = player_action_ID.." G-jump"
		elseif player_action_ID == 9 then
			action_text = player_action_ID.." bat un-morph"
		elseif player_action_ID == 10 then
			action_text = player_action_ID.." hurt"
		elseif player_action_ID == 11 then
			action_text = player_action_ID.." stone"
		elseif player_action_ID == 12 then
			action_text = player_action_ID
		elseif player_action_ID == 13 then
			action_text = player_action_ID
		elseif player_action_ID == 14 then
			action_text = player_action_ID.." mist un-morph"
		elseif player_action_ID == 15 then
			action_text = player_action_ID
		elseif player_action_ID == 16 then
			action_text = player_action_ID.." dead"
		elseif player_action_ID == 17 then
			action_text = player_action_ID.." resurection"
		elseif player_action_ID == 18 then
			action_text = player_action_ID.." teleport"
		elseif player_action_ID == 19 then
			action_text = player_action_ID.." running"
		elseif player_action_ID == 24 then
			action_text = player_action_ID.." wolf"
		elseif player_action_ID == 25 then
			action_text = player_action_ID.." wolf un-morph"
		elseif player_action_ID == 32 then
			action_text = player_action_ID.." spell dark"
		elseif player_action_ID == 33 then
			action_text = player_action_ID.." spell spirit"
		elseif player_action_ID == 34 then
			action_text = player_action_ID.." spell hellfire"
		elseif player_action_ID == 35 then
			action_text = player_action_ID.." spell tetraspirit"
		elseif player_action_ID == 37 then
			action_text = player_action_ID.." spell soulsteal"
		else
		action_text = player_action_ID
		end
	end
	gui.drawText(375, 17, "Action "..action_text, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
--
	if player_ground == 0 then 
	gui.drawBox(375, 30, 419, 40, 0xCF646464, Zcolor[4])
	gui.drawText(383, 27, "air "..player_air, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	end
	if player_ground >= 1 then 
	gui.drawBox(375, 30, 419, 40, 0xCF646464, Zcolor[60])--Zcolor[60]
	gui.drawText(375, 27, "ground "..player_ground, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)	
	end
--
	if player_script[0] == 5 and player_script[2] == 1 and player_script[4] == 1 then 
		gui.drawBox(419, 30, 485, 40, 0xCF646464, Zcolor[60])
	else
		gui.drawBox(419, 30, 485, 40, 0xCF646464, Zcolor[4])
	end	
	gui.drawText(419, 27, "script "..player_script[0].." "..player_script[2].." "..player_script[4], 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)	
--
	if player_status_flag ~= 0 then 
		gui.drawBox(485, 20, 525, 30, 0xCF646464, Zcolor[4])
	else
		gui.drawBox(485, 20, 525, 30, 0xCF646464, Zcolor[60])	
	end
	gui.drawText(485, 17, "status "..player_status_flag, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)	
--
	if game_is_loaded == 1 then 
		gui.drawBox(485, 30, 525, 40, 0xCF646464, Zcolor[60])	
	else
		gui.drawBox(485, 30, 525, 40, 0xCF646464, Zcolor[4])
	end
	gui.drawText(487, 27, "loading", 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
end
--------------------------------
function stat()
	gui.drawBox(400, 360, 581, 399, 0xCF646464, nil)
--
	gui.drawText(400, 358, "Hp:"..stat_hp.."/"..stat_hp_max, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(400, 367, "Mp:"..stat_mp.."/"..stat_mp_max, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(400, 376, "Heart:"..stat_heart.."/"..stat_heart_max, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(400, 385, "Beat:"..stat_beat, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
--
	gui.drawText(468, 358, "Level:"..stat_level, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(468, 367, "Exp:"..stat_exp, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	if stat_rooms > 1989 then
	gui.drawText(468, 376, "Room:"..stat_rooms, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(512, 378, "ALL", 0xCFFF0000, nil, 8, "Ebrima", nil, nil, nil)
	else
	gui.drawText(468, 376, "Room:"..stat_rooms, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)	
	end
	gui.drawText(468, 385, "DEF:"..stat_def, 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
--
	gui.drawText(525, 358, "STR:"..stat_str.."|"..stat_str_mod..":"..(stat_str + stat_str_mod), 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(525, 367, "CON:"..stat_con.."|"..stat_con_mod..":"..(stat_con + stat_con_mod), 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(525, 376, "INT:"..stat_int.."|"..stat_int_mod..":"..(stat_int + stat_int_mod), 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
	gui.drawText(525, 385, "LCK:"..stat_lck.."|"..stat_lck_mod..":"..(stat_lck + stat_lck_mod), 0xCFFFFFFF, nil, 10, "impact", nil, nil, nil)
end
--------------------------------
function pickup()
	local pickup_cave = false
	gui.drawBox(275, 360, 400, 399, 0xCF646464, nil)
	if cursor_user then
			gui.drawText(307, 358, "Selected", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	else
			gui.drawText(307, 358, room_text, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	end
	gui.drawText(276, 358, "Pickup:", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	for i = 1, 5, 1 do --max pickup is 6 bytes (caves)
		if pickup_cur[i] ~= nil then
			if pickup_cur[i] == 18 or pickup_cur[i] == 20 or pickup_cur[i] == 21 or pickup_cur[i] == 22 or pickup_cur[i] == 23 then
			pickup_cave = true
			else
			gui.drawText(275, 357+(i*10), "byte#"..i.." - ", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
--			gui.drawText(310, 360+(i*10), bizstring.binary(pickup_data[pickup_cur[i]]), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)
			gui.drawText(310, 360+(i*10), string.format("%08s", bizstring.binary(pickup_data[pickup_cur[i]])), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)
			end
		end
	end
	if pickup_cave then
		gui.drawText(275, 367, "byte#1", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
		gui.drawText(275, 376, "byte#2", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
		gui.drawText(275, 385, "byte#3", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
		gui.drawText(336, 367, "byte#4", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
		gui.drawText(336, 376, "byte#5", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
		gui.drawText(305, 369, string.format("%08s", bizstring.binary(pickup_data[18])), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)
		gui.drawText(305, 379, string.format("%08s", bizstring.binary(pickup_data[20])), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)
		gui.drawText(305, 389, string.format("%08s", bizstring.binary(pickup_data[21])), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)
		gui.drawText(367, 369, string.format("%08s", bizstring.binary(pickup_data[22])), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)
		gui.drawText(367, 379, string.format("%08s", bizstring.binary(pickup_data[23])), 0xCFFFFFFF, nil, 7, "Ebrima", nil, nil, nil)	
	end
	pickup_cave = nil
end
--------------------------------