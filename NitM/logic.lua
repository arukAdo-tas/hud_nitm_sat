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
	-- player_use_first_hand = mainmemory.readbyte(0x05C462)
	-- player_use_second_hand = mainmemory.readbyte(0x05C574)
	-- player_use_third_hand = mainmemory.readbyte(0x050B03)
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
	if player_character_ID == 0 then alucard = true richter = false maria = false
	elseif player_character_ID == 1 then alucard = false richter = true maria = false
	elseif player_character_ID == 2 then alucard = false richter = false maria = true
	end

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
if shot_refresh then --regenerate data
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
	if player_action_ID == 18 and game_is_loaded == 0 then -- this ensure we will switch castle when the player use teleport or lib card
		if emu.framecount() % 60 == 0 then
			castle_check = true
			shot_refresh = true
			extra_refresh = true
--			teleport_check = true
			print("yo")
		end
	end
--
	player_morph_timer = memory.readbyte(0x0C850A)
--
--	objects_data = memory.readbyterange(0x099F20, 60000, "Work Ram High")
--

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

build_pickup()

end


if script_debug then debug_data = debug_data.." mouseX:"..mouse_X.." mouseY:"..mouse_Y end
if script_debug then debug_data = debug_data.." musicID: "..music.." " end
if script_debug and music_ID[music] ~= nil then debug_data = debug_data.." track:"..music_ID[music] end
if script_debug and castleB then debug_data = debug_data.." inverted castle " else debug_data = debug_data.." normal castle " end
end
--------------------------------
function where_is_player()
	if music == 0 then
	game_is_boot = false
	end
	--then it switch to 19968(??), then 21248 (nagoya logo), then 3585 (main screen)
	if music == 23808 or music == 19968 or music == 21248 or music == 3585 then --its the konami logo 23808
	game_is_boot = false	
	end

	if music == 48128 or music == 7680 then --ending? + iamthewind
		game_is_ending = true --not doing anything with this yet
		game_is_dracula = false --useless for now
	end
	
	if music == 6656 or music == 6400 then prologue = true  end
	
	if prologue and script_map_mode ~= "ZZ" then
		--this is not enought of course, we have to turn everything off except cursor_player, and turn them back on eventually after the prologue...
		script_map_mode_was = script_map_mode
		script_map_mode = "ZZ" 
		shot_refresh = true 
	end
	
	if prologue then --check until we out of it
		if music == 7168 then 
			prologue = false 
			castleB = false 
			script_map_mode = script_map_mode_was 
			script_map_mode_was = nil
			shot_refresh = true 
		end
	end



if game_is_boot == false and stat_level > 0 and music ~= 5632 and music ~= 3585 then
--then we are no longer in the bios or file select... I think... but if you soft reset you will still have player data in ram
--if u started with alucard, the timer will start after the fmv
--if u start with richter or maria, script will kick at "now loadind" (you become level1)
	game_is_boot = true
end

if stat_level == 0 then --we just started from bios and havent select anything yet
	game_is_boot = false
	castleB = false
end

if music == 3585 then --we (back?) at start menu
	game_is_boot = false
	castleB = false
end

if music == 5632 and game_is_boot == false and game_is_loaded == 1 then --its "prayers" file select
			game_is_boot = true
			castle_check = true
			shot_refresh = true
			trail_data = { 0, 0, 0, 0, 0}
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
--		if castleB then
--		room_grid_X = room_X_max_grid - curX --reverse
--		room_grid_Y = room_Y_min_grid - curY --reverse
--		else
		room_grid_X = room_X_min_grid + curX --from min coz grid orientation is from left to right
		room_grid_Y = room_Y_max_grid + curY --from max coz we go from top to bottom
--		end
	else--safeguard?
		if prologue == false then
			room_grid_X = 0 
			room_grid_Y = 0
		end
	end
end



if room_grid_X >= 1 and room_grid_Y >= 1 then
	room_1D = room_grid_X + room_grid_Y * 64
	theroomX = room_grid_X * 4
	theroomY = room_grid_Y * 4 -20-- 20 is the number of row ive removed to make the map shorter, 5 rows x 4 px
else--safeguard?
	if prologue == false then
		theroomX = 0
		theroomY = 0
		room_1D = nil
	end
end



if castleB then
	if cursor_user == false then
		if area_roomB[room_1D] == nil then 
			if prologue == false then 
				area_ID = "no" 
			else 
				area_ID = "pro" 
			end 
		else 
			area_ID = area_roomB[room_1D] 
		end
	else
		if area_roomB[querry_1D] == nil then 
			if prologue == false then 
				area_ID = "no" 
			else 
				area_ID = "pro" 
			end 
		else 
			area_ID = area_roomB[querry_1D] 
		end	
	end
else
	if cursor_user == false then
		if area_roomA[room_1D] == nil then 
			if prologue == false then 
				area_ID = "no" 
			else 
				area_ID = "pro" 
			end 
		else 
			area_ID = area_roomA[room_1D] 
		end
	else
		if area_roomA[querry_1D] == nil then 
			if prologue == false then 
				area_ID = "no" 
			else 
				area_ID = "pro" 
			end 
		else 
			area_ID = area_roomA[querry_1D] 
		end	
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
if area_ID ~= nil and script_debug then debug_data = debug_data.." areaID:"..area_ID.."   " end
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

if prologue then --hack everything
room_grid_X = room_grid_X + 33
room_X_min_grid = room_X_min_grid + 33
room_X_max_grid = room_X_max_grid + 33
room_X_origin_grid = room_X_origin_grid + 33
room_grid_Y = room_grid_Y + 6
room_Y_min_grid = room_Y_min_grid + 6
room_Y_max_grid = room_Y_max_grid + 6
room_Y_origin_grid = room_Y_origin_grid + 6
theroomX = theroomX + 33*4
theroomY = theroomY + 6*4
area_ID = "pro"
room_text = "Final Stage : Bloodlines"
room_special = "Prologue"
if shot_refresh == false and prologue_up == false and emu.framecount() % 60 == 0 then
	shot_refresh = true
	prologue_up = true
end

end


end
------
function castlecheck()
	--make sure its reset when I do the check, even if this shouldnt happen
	castleB = false 
	prologue = false

--2,2 - 2,1 - 1,0 - 1,1 - 4,3
if room_X_origin_grid == 4 and room_Y_origin_grid == 3 or
room_X_origin_grid == 1 and room_Y_origin_grid == 0 or
room_X_origin_grid == 1 and room_Y_origin_grid == 1 or
room_X_origin_grid == 2 and room_Y_origin_grid == 1 or
room_X_origin_grid == 2 and room_Y_origin_grid == 2  then
	prologue = true
	castleB = false
	script_map_mode = "ZZ"
else
	prologue = false
	castleB = false 
end

if room_X_origin_grid == 0 and room_Y_origin_grid == 46 then --0,46 entrance before the gate
	castleB = false --huh....
end


if alucard then --because other characters will differs in some areas, for now ill not bother
	--test the music to see if any track are second-castle-exclusive
	if music == 6144 or music == 4352 or music == 4608 or music == 11520 or music == 10752 or music == 4864 or music == 5120 then
		castleB = true
	else
		castleB = false		
	end
	if music == 2304 then --its the keep
		if room_Y_origin_grid > 50  then
			castleB = true
		else
			castleB = false
		end
	end
	if music == 1024 then --its the mines
	--room_Y_min_grid --38-50 max/min in RC --25-14 max/min in IC
		if room_Y_origin_grid < 26 then
			castleB = true
		else
			castleB = false
		end
	end
	if music == 3840 then --its central area...
		if room_Y_origin_grid == 33 or room_Y_origin_grid == 34 or room_Y_origin_grid == 35 then
			castleB = true
		end
		if room_Y_origin_grid == 28 or room_Y_origin_grid == 29 or room_Y_origin_grid == 30 then
			castleB = false
		end
	end
	
	if room_Y_min_grid == 33 and room_Y_max_grid == 33 and room_X_min_grid == 31 and room_X_max_grid == 31 then --its dracula but we did set it from the music black banket anyway
	game_is_dracula = true --useless for now
	castleB = true
	end
	--missing all bosses case figure

end


castle_check = false

if music == 5632 then --save room after loading a game, very hackish, means you have to change room to update castle if you are in B
castle_check = true
else
castle_check = false
shot_refresh = true
end

	-- if music == 11520 and alucard == false then --its maria entrance
	-- castleB = false
	-- end

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
		script_map_cursor = true --erh, this would mean the on/off button never work...
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