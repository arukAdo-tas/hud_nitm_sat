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
			if prologue == false then
			gui.drawText(307, 358, room_text, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
			end
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
function build_pickup()
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
--------------------------------
function build_unlock()
--we are going now to draw stuff to reflect user data/pref and make the map accurate to their situation
data_title = {}
data_cutscene = {}
data_break = {}
data_wall = {}
data_switch = {}
if castleB then

	local readval = memory.readbyte(0x05CB35)
	if readval >= 1 then--marble switch 32,26
		gui.drawPixel(130+10, 88+5, 0xFF5070f8)
		table.insert(data_switch, 32) table.insert(data_switch, 27) table.insert(data_switch, true)
	else table.insert(data_switch, 32) table.insert(data_switch, 27) table.insert(data_switch, false) end
	readval = memory.readbyte(0x05CA69)
	if readval >= 1 then--wall break in 59,26
		table.insert(data_break, 59) table.insert(data_break, 26) table.insert(data_break, true)
	else table.insert(data_break, 59) table.insert(data_break, 26) table.insert(data_break, false) end
	readval = memory.readbyterange(0x05CA78, 2, "Work Ram High")
	if readval[0] >= 1 then--olrox wall 19,19
		gui.drawPixel(78+10, 56+5, 0xFF5070f8)
		table.insert(data_wall, 19) table.insert(data_wall, 18) table.insert(data_wall, true)
	else table.insert(data_wall, 19) table.insert(data_wall, 18) table.insert(data_wall, false) end
	if readval[1] >= 1 then--olrox wall 29,22
		gui.drawPixel(120+10, 70+5, 0xFF5070f8)
		table.insert(data_wall, 30) table.insert(data_wall, 22) table.insert(data_wall, true)
	else table.insert(data_wall, 30) table.insert(data_wall, 22) table.insert(data_wall, false) end
	readval = memory.readbyte(0x05CAC1)
	if readval >= 1 then--lib switch bookshelf 49,18 
		gui.drawPixel(200+10, 54+5, 0xFF5070f8)
		table.insert(data_switch, 50) table.insert(data_switch, 18) table.insert(data_switch, true)
	else table.insert(data_switch, 50) table.insert(data_switch, 18) table.insert(data_switch, false) end
	readval = memory.readbyterange(0x05CAD8, 2, "Work Ram High")
	if readval[0] >= 1 then--lab wall 12,34
		gui.drawPixel(48+10, 118+5, 0xFF5070f8)
		table.insert(data_wall, 11) table.insert(data_wall, 34) table.insert(data_wall, true)
	else table.insert(data_wall, 11) table.insert(data_wall, 34) table.insert(data_wall, false) end
	if readval[1] >= 1 then--lab wall 12,34
		gui.drawPixel(50+10, 120+5, 0xFF5070f8)
		table.insert(data_wall, 12) table.insert(data_wall, 35) table.insert(data_wall, true)
	else table.insert(data_wall, 12) table.insert(data_wall, 35) table.insert(data_wall, false) end
	readval = memory.readbyterange(0x05CAE8, 2, "Work Ram High")
	if readval[0] >= 1 then--keep break in 31,11
		table.insert(data_break, 31) table.insert(data_break, 11) table.insert(data_break, true)
	else table.insert(data_break, 31) table.insert(data_break, 11) table.insert(data_break, false) end
	if readval[1] >= 1 then--keep break in 31,9
		table.insert(data_break, 31) table.insert(data_break, 9) table.insert(data_break, true)
	else table.insert(data_break, 31) table.insert(data_break, 9) table.insert(data_break, false) end


else--FIRST CASTLE
--below is the unlock; walls, switches , cutscene and break
--the rest will be address read directly for the corresponding switch
--if the byte is 1 then the object is off so we cover with pixel and we write true in table
--each "area" is basicly 16 bytes, most are unused, and a very few are unknow (second castle probly)

--marble 1-3
	readval = memory.readbyterange(0x05CA50, 4, "Work Ram High")
	if readval[0] >= 1 then--marble switch blue door 46,24
		gui.drawPixel(162+10, 80+5, 0xFF5070f8)
		gui.drawPixel(178+10, 84+5, 0xFF5070f8)
		table.insert(data_switch, 40) table.insert(data_switch, 25) table.insert(data_switch, true)
		table.insert(data_switch, 44) table.insert(data_switch, 26) table.insert(data_switch, true)
		table.insert(data_switch, 46) table.insert(data_switch, 24) table.insert(data_switch, true)
	else
		table.insert(data_switch, 40) table.insert(data_switch, 25) table.insert(data_switch, false)
		table.insert(data_switch, 44) table.insert(data_switch, 26) table.insert(data_switch, false)
		table.insert(data_switch, 46) table.insert(data_switch, 24) table.insert(data_switch, false)
	end
	if readval[1] >= 1 then--marble switch clock room 32,26
		gui.drawPixel(130+10, 88+5, 0xFF5070f8)
		table.insert(data_switch, 32) table.insert(data_switch, 27) table.insert(data_switch, true)
	else table.insert(data_switch, 32) table.insert(data_switch, 27) table.insert(data_switch, false) end
	if readval[3] >= 1 then--marble title 22,26
		table.insert(data_title, 22) table.insert(data_title, 26) table.insert(data_title, true)
	else table.insert(data_title, 22) table.insert(data_title, 26) table.insert(data_title, false) end
	readval = nil
--wall 4-6
	local readval = memory.readbyterange(0x05CA60, 5, "Work Ram High")
	if readval[1] >= 1 then--wall elevator switch 60,15
		table.insert(data_switch, 60) table.insert(data_switch, 15) table.insert(data_switch, true)
	else table.insert(data_switch, 60) table.insert(data_switch, 15) table.insert(data_switch, false) end
	if readval[3] >= 1 then--wall break in 59,26
		table.insert(data_break, 59) table.insert(data_break, 26) table.insert(data_break, true)
	else table.insert(data_break, 59) table.insert(data_break, 26) table.insert(data_break, false) end
	if readval[4] >= 1 then--wall title 61,25
		table.insert(data_title, 61) table.insert(data_title, 25) table.insert(data_title, true)
	else table.insert(data_title, 61) table.insert(data_title, 25) table.insert(data_title, false) end
	readval = nil
--olrox 7-9
	local readval = memory.readbyterange(0x05CA70, 4, "Work Ram High")
	if readval[0] >= 1 then--olrox wall 19,19
		gui.drawPixel(78+10, 56+5, 0xFF5070f8)
		table.insert(data_wall, 19) table.insert(data_wall, 18) table.insert(data_wall, true)
	else table.insert(data_wall, 19) table.insert(data_wall, 18) table.insert(data_wall, false) end
	if readval[1] >= 1 then--olrox wall 29,22
		gui.drawPixel(120+10, 70+5, 0xFF5070f8)
		table.insert(data_wall, 30) table.insert(data_wall, 22) table.insert(data_wall, true)
	else table.insert(data_wall, 30) table.insert(data_wall, 22) table.insert(data_wall, false) end
	if readval[3] >= 1 then--olrox title 29,25
	table.insert(data_title, 29) table.insert(data_title, 25) table.insert(data_title, true)
	else table.insert(data_title, 29) table.insert(data_title, 25) table.insert(data_title, false) end
	readval = nil
--gate 10-15
	local readval = memory.readbyterange(0x05CA80, 13, "Work Ram High")
	if readval[0] >= 1 then--gate switch marble 19,36
		table.insert(data_switch, 20) table.insert(data_switch, 36) table.insert(data_switch, true)
	else table.insert(data_switch, 20) table.insert(data_switch, 36) table.insert(data_switch, false) end
	if readval[1] >= 1 then--gate switch cave 14,41
		table.insert(data_switch, 14) table.insert(data_switch, 41) table.insert(data_switch, true)
	else table.insert(data_switch, 14) table.insert(data_switch, 41) table.insert(data_switch, false) end
	if readval[2] >= 15 then--gate switch big rock
		table.insert(data_switch, 12) table.insert(data_switch, 40) table.insert(data_switch, true)
	else table.insert(data_switch, 12) table.insert(data_switch, 40) table.insert(data_switch, false) end
	if readval[3] >= 1 then--gate switch teleporter 17,38
		table.insert(data_switch, 16) table.insert(data_switch, 38) table.insert(data_switch, true)
	else table.insert(data_switch, 16) table.insert(data_switch, 38) table.insert(data_switch, false) end
	if readval[9] >= 1 then--gate break in 19,40
		table.insert(data_break, 19) table.insert(data_break, 40) table.insert(data_break, true)
	else table.insert(data_break, 19) table.insert(data_break, 40) table.insert(data_break, false) end
	if readval[11] >= 1 then--gate wall jewel sword 11,41
		gui.drawPixel(44+10, 146+5, 0xFF5070f8)
		table.insert(data_switch, 10) table.insert(data_switch, 41) table.insert(data_switch, true)
	else table.insert(data_switch, 10) table.insert(data_switch, 41) table.insert(data_switch, false) end
	readval = nil
--cata 16-20
	local readval = memory.readbyterange(0x05CA90, 13, "Work Ram High")
	if readval[0] >= 1 then--cata break in 28,50
		table.insert(data_break, 28) table.insert(data_break, 50) table.insert(data_break, true)
	else table.insert(data_break, 28) table.insert(data_break, 50) table.insert(data_break, false) end
	if readval[1] >= 1 then--cata wall 25,50
		gui.drawPixel(100+10, 182+5, 0xFF5070f8)
		table.insert(data_wall, 24) table.insert(data_wall, 50) table.insert(data_wall, true)
	else table.insert(data_wall, 24) table.insert(data_wall, 50) table.insert(data_wall, false) end
	if readval[2] >= 1 then--cata title 31,49
		table.insert(data_title, 31) table.insert(data_title, 49) table.insert(data_title, true)
	else table.insert(data_title, 31) table.insert(data_title, 49) table.insert(data_title, false) end
	if readval[3] >= 1 then--cata radar room switch 43,50
		table.insert(data_switch, 43) table.insert(data_switch, 50) table.insert(data_switch, true)
	else table.insert(data_switch, 43) table.insert(data_switch, 50) table.insert(data_switch, false) end
	if readval[5] >= 1 then--cata break in 41,51
		table.insert(data_break, 41) table.insert(data_break, 51) table.insert(data_break, true)
	else table.insert(data_break, 41) table.insert(data_break, 51) table.insert(data_break, false) end
	readval = nil
--mine 21-25
	local readval = memory.readbyterange(0x05CAA0, 6, "Work Ram High")
	if readval[0] >= 1 then--mine wall 37,41
		gui.drawPixel(148+10, 146+5, 0xFF5070f8)
		table.insert(data_wall, 36) table.insert(data_wall, 41) table.insert(data_wall, true)
	else table.insert(data_wall, 36) table.insert(data_wall, 41) table.insert(data_wall, false) end
	if readval[1] >= 1 then--mine switch 32,40
		gui.drawPixel(132+10, 142+5, 0xFF5070f8)
		table.insert(data_switch, 33) table.insert(data_switch, 40) table.insert(data_switch, true)
	else table.insert(data_switch, 33) table.insert(data_switch, 40) table.insert(data_switch, false) end
	if readval[2] >= 1 then--mine break step 32,47
		table.insert(data_break, 32) table.insert(data_break, 47) table.insert(data_break, true)
	else table.insert(data_break, 32) table.insert(data_break, 47) table.insert(data_break, false) end
	if readval[3] >= 1 then--mine break slope 
		table.insert(data_break, 32) table.insert(data_break, 42) table.insert(data_break, true)
	else table.insert(data_break, 32) table.insert(data_break, 42) table.insert(data_break, false) end
	if readval[5] >= 1 then--mine title 27,38
		table.insert(data_title, 27) table.insert(data_title, 38) table.insert(data_title, true)
	else table.insert(data_title, 27) table.insert(data_title, 38) table.insert(data_title, false) end
	readval = nil
--chapel 26-29
	local readval = memory.readbyterange(0x05CAB0, 4, "Work Ram High")
	if readval[0] >= 1 then--chapel title 3,28
		table.insert(data_title, 3) table.insert(data_title, 28) table.insert(data_title, true)
	else table.insert(data_switch, 3) table.insert(data_switch, 28) table.insert(data_switch, false) end
	if readval[1] >= 1 then--chapel switch to olrox 16,19
		table.insert(data_switch, 16) table.insert(data_switch, 19) table.insert(data_switch, true)
	else table.insert(data_switch, 16) table.insert(data_switch, 19) table.insert(data_switch, false) end
	if readval[2] >= 1 then--cutscene maria 9,15
		table.insert(data_cutscene, 9) table.insert(data_cutscene, 15) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 9) table.insert(data_cutscene, 15) table.insert(data_cutscene, false) end
	if readval[3] >= 1 then--cutscene maria 24,13
		table.insert(data_cutscene, 24) table.insert(data_cutscene, 13) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 24) table.insert(data_cutscene, 13) table.insert(data_cutscene, false) end
	readval = nil
--lib 30-33
	local readval = memory.readbyterange(0x05CAC0, 6, "Work Ram High")
	if readval[0] >= 1 then--lib title 58,21
		table.insert(data_title, 58) table.insert(data_title, 21) table.insert(data_title, true)
	else table.insert(data_title, 58) table.insert(data_title, 21) table.insert(data_title, false) end
	if readval[1] >= 1 then--lib switch bookshelf 49,18 
		gui.drawPixel(200+10, 54+5, 0xFF5070f8)
		table.insert(data_switch, 50) table.insert(data_switch, 18) table.insert(data_switch, true)
	else table.insert(data_switch, 50) table.insert(data_switch, 18) table.insert(data_switch, false) end
	if readval[3] >= 1 then--lib cutscene librarian 49,20
		table.insert(data_cutscene, 49) table.insert(data_cutscene, 20) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 49) table.insert(data_cutscene, 20) table.insert(data_cutscene, false) end
	if readval[5] >= 3 then--lib librarian seat
		table.insert(data_break, 49) table.insert(data_break, 21) table.insert(data_break, true)
	else table.insert(data_break, 49) table.insert(data_break, 21) table.insert(data_break, false) end
	readval = nil
--lab 34-38
	local readval = memory.readbyterange(0x05CAD0, 10, "Work Ram High")
	if readval[0] >= 1 then--lab wall 12,34
		gui.drawPixel(48+10, 118+5, 0xFF5070f8)
		table.insert(data_wall, 11) table.insert(data_wall, 34) table.insert(data_wall, true)
	else table.insert(data_wall, 11) table.insert(data_wall, 34) table.insert(data_wall, false) end
	if readval[1] >= 1 then--lab title 38,12
		table.insert(data_title, 38) table.insert(data_title, 12) table.insert(data_title, true)
	else table.insert(data_title, 38) table.insert(data_title, 12) table.insert(data_title, false) end
	if readval[2] >= 1 then--lab switch elevator 16,34
		table.insert(data_switch, 17) table.insert(data_switch, 34) table.insert(data_switch, true)
	else table.insert(data_switch, 17) table.insert(data_switch, 34) table.insert(data_switch, false) end
	if readval[3] >= 1 then--lab wall 12,34
		gui.drawPixel(50+10, 120+5, 0xFF5070f8)
		table.insert(data_wall, 12) table.insert(data_wall, 35) table.insert(data_wall, true)
	else table.insert(data_wall, 12) table.insert(data_wall, 35) table.insert(data_wall, false) end
	if readval[4] >= 1 then --lab maria cutscene 5,28
	table.insert(data_cutscene, 5) table.insert(data_cutscene, 28) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 5) table.insert(data_cutscene, 28) table.insert(data_cutscene, false) end
	readval = nil
--keep 39-44
	local readval = memory.readbyterange(0x05CAE0, 11, "Work Ram High")
	if readval[0] >= 1 then--keep break in 31,9
		table.insert(data_break, 31) table.insert(data_break, 9) table.insert(data_break, true)
	else table.insert(data_break, 31) table.insert(data_break, 9) table.insert(data_break, false) end
	if readval[1] >= 1 then--keep title 38,12
		table.insert(data_title, 38) table.insert(data_title, 12) table.insert(data_title, true)
	else table.insert(data_title, 38) table.insert(data_title, 12) table.insert(data_title, false) end
	if readval[2] >= 1 then--keep elevator 38,10
		table.insert(data_switch, 38) table.insert(data_switch, 9) table.insert(data_switch, true)
	else table.insert(data_switch, 38) table.insert(data_switch, 9) table.insert(data_switch, false) end
	if readval[3] >= 1 then--keep break in 31,11
		table.insert(data_break, 31) table.insert(data_break, 11) table.insert(data_break, true)
	else table.insert(data_break, 31) table.insert(data_break, 11) table.insert(data_break, false) end
	if readval[5] >= 1 then--keep switch 35,8
		gui.drawPixel(142+10, 12+5, 0xFF5070f8)
		table.insert(data_switch, 35) table.insert(data_switch, 7) table.insert(data_switch, true)
	else table.insert(data_switch, 35) table.insert(data_switch, 7) table.insert(data_switch, false) end
	if readval[7] >= 1 then--keep save richter cutscene 33,8
		table.insert(data_cutscene, 33) table.insert(data_cutscene, 8) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 33) table.insert(data_cutscene, 8) table.insert(data_cutscene, false) end
	readval = nil
--clock 45-48
	local readval = memory.readbyterange(0x05CAF0, 12, "Work Ram High")
	if readval[0] >= 1 then--clock wall 43,11
		gui.drawPixel(172+10, 26+5, 0xFF5070f8)
		table.insert(data_wall, 42) table.insert(data_wall, 11) table.insert(data_wall, true)
	else table.insert(data_wall, 42) table.insert(data_wall, 11) table.insert(data_wall, false) end
	if readval[1] >= 1 then--clock title 59,14
		table.insert(data_title, 59) table.insert(data_title, 14) table.insert(data_title, true)
	else table.insert(data_title, 59) table.insert(data_title, 14) table.insert(data_title, false) end
	if readval[2] >= 1 then --clock break in 3 wall 41,10 --its binary so this is wrong but whatever
		table.insert(data_break, 42) table.insert(data_break, 10) table.insert(data_break, true)
	else table.insert(data_break, 42) table.insert(data_break, 10) table.insert(data_break, false) end
	if readval[3] >= 1 then--clock wall 50,11
		gui.drawPixel(204+10, 26+5, 0xFF5070f8)
		table.insert(data_wall, 51) table.insert(data_wall, 11) table.insert(data_wall, true)
	else table.insert(data_wall, 51) table.insert(data_wall, 11) table.insert(data_wall, false) end
	readval = nil
--colosseum 49-52
	local readval = memory.readbyterange(0x05CB00, 4, "Work Ram High")
	if readval[0] >= 1 then--colos switch to mist elevator 21,22
		gui.drawPixel(86+10, 72+5, 0xFF5070f8)
		table.insert(data_switch, 21) table.insert(data_switch, 22) table.insert(data_switch, true)
	else table.insert(data_switch, 21) table.insert(data_switch, 22) table.insert(data_switch, false) end
	if readval[1] >= 1 then--colos title at 25,22
		table.insert(data_title, 25) table.insert(data_title, 22) table.insert(data_title, true)
	else table.insert(data_title, 25) table.insert(data_title, 22) table.insert(data_title, false) end
	if readval[2] >= 1 then--colos wall at 20,21
		gui.drawPixel(82+10, 64+5, 0xFF5070f8)
		table.insert(data_wall, 20) table.insert(data_wall, 20) table.insert(data_wall, true)
	else table.insert(data_wall, 20) table.insert(data_wall, 20) table.insert(data_wall, false) end
	if readval[3] >= 1 then--colos switch to chapel 14,22
		table.insert(data_switch, 14) table.insert(data_switch, 22) table.insert(data_switch, true)
	else table.insert(data_switch, 14) table.insert(data_switch, 22) table.insert(data_switch, false) end
	readval = nil
--cave 53-60
	local readval = memory.readbyterange(0x05CB10, 12, "Work Ram High")
	if readval[0] >= 1 then--cave switch 37,37 (box with water)
		table.insert(data_switch, 36) table.insert(data_switch, 37) table.insert(data_switch, true)
	else table.insert(data_switch, 36) table.insert(data_switch, 37) table.insert(data_switch, false) end
	if readval[1] >= 1 then--cave title 39,26
		table.insert(data_title, 39) table.insert(data_title, 26) table.insert(data_title, true)
	else table.insert(data_title, 39) table.insert(data_title, 26) table.insert(data_title, false) end
	if readval[3] >= 1 then--cave switch lake door 48,41
		table.insert(data_switch, 48) table.insert(data_switch, 41) table.insert(data_switch, true)
	else table.insert(data_switch, 48) table.insert(data_switch, 41) table.insert(data_switch, false) end
	if readval[5] >= 1 then--cave wall 39,39
		gui.drawPixel(158+10, 140+5, 0xFF5070f8)
		table.insert(data_wall, 39) table.insert(data_wall, 40) table.insert(data_wall, true)
	else table.insert(data_wall, 39) table.insert(data_wall, 40) table.insert(data_wall, false) end
	if readval[6] >= 3 then--cave switch to mine 29,37
		gui.drawPixel(118+10, 132+5, 0xFF5070f8)
		table.insert(data_switch, 29) table.insert(data_switch, 38) table.insert(data_switch, true)
	else table.insert(data_switch, 29) table.insert(data_switch, 38) table.insert(data_switch, false) end
	if readval[7] >= 1 then--cave wall 36,27
		gui.drawPixel(144+10, 90+5, 0xFF5070f8)
		table.insert(data_wall, 35) table.insert(data_wall, 27) table.insert(data_wall, true)
	else table.insert(data_wall, 35) table.insert(data_wall, 27) table.insert(data_wall, false) end
	if readval[8] >= 1 then--cave cutscene merman 13,42
		table.insert(data_cutscene, 13) table.insert(data_cutscene, 42) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 13) table.insert(data_cutscene, 42) table.insert(data_cutscene, false) end
	if readval[9] >= 1 then--cave cutscene lake 40,41
		table.insert(data_cutscene, 40) table.insert(data_cutscene, 41) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 40) table.insert(data_cutscene, 41) table.insert(data_cutscene, false) end
	readval = nil
--maria boss 61
	local readval = memory.readbyte(0x05CB29)
	if readval >= 1 then
			table.insert(data_cutscene, 32) table.insert(data_cutscene, 31) table.insert(data_cutscene, true)
	else table.insert(data_cutscene, 32) table.insert(data_cutscene, 31) table.insert(data_cutscene, false) end
	readval = nil
--extra 62-64
	local readval = memory.readbyterange(0x05CB40, 10, "Work Ram High")
	if readval[1] >= 1 then--title garden 4,44
		table.insert(data_title, 4) table.insert(data_title, 44) table.insert(data_title, true)
	else table.insert(data_title, 4) table.insert(data_title, 44) table.insert(data_title, false) end
	if readval[8] >= 1 then--prison switch 33,36
		table.insert(data_switch, 34) table.insert(data_switch, 36) table.insert(data_switch, true)
	else table.insert(data_switch, 34) table.insert(data_switch, 36) table.insert(data_switch, false) end
	if readval[9] >= 1 then--title prison 35,34 or 28,36
		table.insert(data_title, 28) table.insert(data_title, 36) table.insert(data_title, true)
		table.insert(data_title, 35) table.insert(data_title, 34) table.insert(data_title, true)
	else 
		table.insert(data_title, 28) table.insert(data_title, 36) table.insert(data_title, false)
		table.insert(data_title, 35) table.insert(data_title, 34) table.insert(data_title, false)
	end
	readval = nil

end
end
--------------------------------
function build_mapcolor()
--0xFF5070f8 the blue on map
--0xFF1b51ff  darker blue
--0xFFF8F8F8 the grey on map

--first thing is to change the colors of teleport, save, cdroom, mist gate and blue doors
if script_telR_color ~= "default" or script_saveR_color ~= "default" or script_cdR_color ~= "default" or script_mistR_color ~= "default" or script_doorR_color ~= "default" then
	if script_telR_color == "blue" then--paint all those rooms in dark blue
		for i = 1, 6, 1 do --10x is where we start, *4 because thats the size of square, 5y is where we start, -20 is the grid offset (5)
			gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF1b51ff)
		end
	end
	if script_saveR_color == "blue" then
		for i = 1, 24, 1 do
			gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF1b51ff)
		end
	end
	if script_cdR_color == "blue" then
		for i = 1, 27, 1 do
			gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF1b51ff)
		end
	end
	if script_mistR_color == "blue" then
		for i = 1, 4, 1 do
			gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF1b51ff)
		end
	end
	if script_doorR_color == "blue" then 
		if castleB then 
			for i = 1, 2, 1 do 
				gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF1b51ff) 
			end 
		else 
			for i = 1, 3, 1 do 
				gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF1b51ff) 
			end 
		end 
	end
--
	if script_telR_color == "red" then for i = 1, 6, 1 do gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf80000) end end
	if script_saveR_color == "red" then for i = 1, 24, 1 do gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf80000) end end
	if script_cdR_color == "red" then for i = 1, 27, 1 do gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf80000) end end
	if script_mistR_color == "red" then for i = 1, 4, 1 do gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf80000) end end
	if script_doorR_color == "red" then if castleB then for i = 1, 2, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf80000) end else for i = 1, 3, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf80000) end end end
--
	if script_telR_color == "orange" then for i = 1, 6, 1 do gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf88000) end end
	if script_saveR_color == "orange" then for i = 1, 24, 1 do gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf88000) end end
	if script_cdR_color == "orange" then for i = 1, 27, 1 do gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf88000) end end
	if script_mistR_color == "orange" then for i = 1, 4, 1 do gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf88000) end end
	if script_doorR_color == "orange" then if castleB then for i = 1, 2, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf88000) end else for i = 1, 3, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFf88000) end end end
--
	if script_telR_color == "green" then for i = 1, 6, 1 do gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00FF00) end end
	if script_saveR_color == "green" then for i = 1, 24, 1 do gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00FF00) end end
	if script_cdR_color == "green" then for i = 1, 27, 1 do gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00FF00) end end
	if script_mistR_color == "green" then for i = 1, 4, 1 do gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00FF00) end end
	if script_doorR_color == "green" then if castleB then for i = 1, 2, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00FF00) end else for i = 1, 3, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00FF00) end end end
--
	if script_telR_color == "yellow" then for i = 1, 6, 1 do gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFffff00) end end
	if script_saveR_color == "yellow" then for i = 1, 24, 1 do gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFffff00) end end
	if script_cdR_color == "yellow" then for i = 1, 27, 1 do gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFffff00) end end
	if script_mistR_color == "yellow" then for i = 1, 4, 1 do gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFffff00) end end
	if script_doorR_color == "yellow" then if castleB then for i = 1, 2, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFffff00) end else for i = 1, 3, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFffff00) end end end
--
	if script_telR_color == "cyan" then for i = 1, 6, 1 do gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00ffff) end end
	if script_saveR_color == "cyan" then for i = 1, 24, 1 do gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00ffff) end end
	if script_cdR_color == "cyan" then for i = 1, 27, 1 do gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00ffff) end end
	if script_mistR_color == "cyan" then for i = 1, 4, 1 do gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00ffff) end end
	if script_doorR_color == "cyan" then if castleB then for i = 1, 2, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00ffff) end else for i = 1, 3, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFF00ffff) end end end
--
	if script_telR_color == "pink" then for i = 1, 6, 1 do gui.drawRectangle( 10+teleports_roomX[i]*4, 5+teleports_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFff63f5) end end
	if script_saveR_color == "pink" then for i = 1, 24, 1 do gui.drawRectangle( 10+save_roomX[i]*4, 5+save_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFff63f5) end end
	if script_cdR_color == "pink" then for i = 1, 27, 1 do gui.drawRectangle( 10+cdr_roomX[i]*4, 5+cdr_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFff63f5) end end
	if script_mistR_color == "pink" then for i = 1, 4, 1 do gui.drawRectangle( 10+mist_roomX[i]*4, 5+mist_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFff63f5) end end
	if script_doorR_color == "pink" then if castleB then for i = 1, 2, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFff63f5) end else for i = 1, 3, 1 do gui.drawRectangle( 10+Bdoor_roomX[i]*4, 5+Bdoor_roomY[i]*4-20, 4, 4, 0x00000000, 0xFFff63f5) end end end
end

if script_saveR_color == "default" then gui.drawImage('.\\NitM\\hud\\saveR_off.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "red" then gui.drawImage('.\\NitM\\hud\\saveR_red.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "green" then gui.drawImage('.\\NitM\\hud\\saveR_green.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "yellow" then gui.drawImage('.\\NitM\\hud\\saveR_yellow.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "cyan" then gui.drawImage('.\\NitM\\hud\\saveR_cyan.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "orange" then gui.drawImage('.\\NitM\\hud\\saveR_orange.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "pink" then gui.drawImage('.\\NitM\\hud\\saveR_pink.png', 20, 1, 16, 16, true)
elseif script_saveR_color == "blue" then gui.drawImage('.\\NitM\\hud\\saveR_blue.png', 20, 1, 16, 16, true) end

if script_telR_color == "default" then gui.drawImage('.\\NitM\\hud\\telR_off.png', 40, 1, 16, 16, true)
elseif script_telR_color == "red" then gui.drawImage('.\\NitM\\hud\\telR_red.png', 40, 1, 16, 16, true)
elseif script_telR_color == "green" then gui.drawImage('.\\NitM\\hud\\telR_green.png', 40, 1, 16, 16, true)
elseif script_telR_color == "yellow" then gui.drawImage('.\\NitM\\hud\\telR_yellow.png', 40, 1, 16, 16, true)
elseif script_telR_color == "cyan" then gui.drawImage('.\\NitM\\hud\\telR_cyan.png', 40, 1, 16, 16, true)
elseif script_telR_color == "orange" then gui.drawImage('.\\NitM\\hud\\telR_orange.png', 40, 1, 16, 16, true)
elseif script_telR_color == "pink" then gui.drawImage('.\\NitM\\hud\\telR_pink.png', 40, 1, 16, 16, true)
elseif script_telR_color == "blue" then gui.drawImage('.\\NitM\\hud\\telR_blue.png', 40, 1, 16, 16, true) end

if script_cdR_color == "default" then gui.drawImage('.\\NitM\\hud\\cdR_off.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "red" then gui.drawImage('.\\NitM\\hud\\cdR_red.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "green" then gui.drawImage('.\\NitM\\hud\\cdR_green.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "yellow" then gui.drawImage('.\\NitM\\hud\\cdR_yellow.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "cyan" then gui.drawImage('.\\NitM\\hud\\cdR_cyan.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "orange" then gui.drawImage('.\\NitM\\hud\\cdR_orange.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "pink" then gui.drawImage('.\\NitM\\hud\\cdR_pink.png', 60, 1, 16, 16, true)
elseif script_cdR_color == "blue" then gui.drawImage('.\\NitM\\hud\\cdR_blue.png', 60, 1, 16, 16, true) end


if script_mistR_color == "default" then gui.drawImage('.\\NitM\\hud\\mistR_off.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "red" then gui.drawImage('.\\NitM\\hud\\mistR_red.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "green" then gui.drawImage('.\\NitM\\hud\\mistR_green.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "yellow" then gui.drawImage('.\\NitM\\hud\\mistR_yellow.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "cyan" then gui.drawImage('.\\NitM\\hud\\mistR_cyan.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "orange" then gui.drawImage('.\\NitM\\hud\\mistR_orange.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "pink" then gui.drawImage('.\\NitM\\hud\\mistR_pink.png', 80, 1, 16, 16, true)
elseif script_mistR_color == "blue" then gui.drawImage('.\\NitM\\hud\\mistR_blue.png', 80, 1, 16, 16, true) end


if script_doorR_color == "default" then gui.drawImage('.\\NitM\\hud\\blueD_off.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "red" then gui.drawImage('.\\NitM\\hud\\blueD_red.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "green" then gui.drawImage('.\\NitM\\hud\\blueD_green.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "yellow" then gui.drawImage('.\\NitM\\hud\\blueD_yellow.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "cyan" then gui.drawImage('.\\NitM\\hud\\blueD_cyan.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "orange" then gui.drawImage('.\\NitM\\hud\\blueD_orange.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "pink" then gui.drawImage('.\\NitM\\hud\\blueD_pink.png', 100, 1, 16, 16, true)
elseif script_doorR_color == "blue" then gui.drawImage('.\\NitM\\hud\\blueD_blue.png', 100, 1, 16, 16, true) end
end
--------------------------------
