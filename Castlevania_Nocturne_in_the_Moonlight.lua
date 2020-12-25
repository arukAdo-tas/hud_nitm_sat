--if you didnt stop the script properly and closed the lua console, ill clean up your mess
gui.clearImageCache()
os.remove('.\\NitM\map.png')
os.remove('.\\NitM\familiar.png')
os.remove('.\\NitM\relic.png')
os.remove('.\\NitM\timeattack.png')
os.remove('.\\NitM\gear.png')
--if u dont have osd off, its required, ill put it back to on IF you turn off the script properly
client_osd = client.getconfig().ScreenshotCaptureOsd
if client_osd == true then
client.setscreenshotosd(false)
end

module_extra = loadfile("NitM\\extra.lua");
if (module_extra == nil) then
    console.writeline("failed to interpret NitM\\extra.lua");
    return false;
end
module_extra();

module_data = loadfile("NitM\\data.lua");
if (module_data == nil) then
    console.writeline("failed to interpret NitM\\data.lua");
    return false;
end
module_data();

module_ram = loadfile("NitM\\ram.lua");
if (module_ram == nil) then
    console.writeline("failed to interpret NitM\\ram.lua");
    return false;
end
module_ram();

module_init = loadfile("NitM\\init.lua");
if (module_init == nil) then
    console.writeline("failed to interpret NitM\\init.lua");
    return false;
end
module_init();

module_functions = loadfile("NitM\\functions.lua");
if (module_functions == nil) then
    console.writeline("failed to interpret NitM\\functions.lua");
    return false;
end
module_functions();

module_loop = loadfile("NitM\\loop.lua");
if (module_loop == nil) then
    console.writeline("failed to interpret NitM\\loop.lua");
    return false;
end
module_loop();

-- module_files = { "extra", "data", "ram" }

-- for i = 1,3,1 do
-- module_extra = loadfile("NitM\\"..module_files[i]..".lua");
-- end
-- for i = 1,3,1 do
-- if ("NitM\\"..module_files[i]..".lua" == nil) then
    -- console.writeline("failed to interpret NitM\\"..module_files[i]..".lua");
    -- return false;
-- end
-- end
-- module_extra();


--require "NitM\\extra"
--require "NitM\\data"
--require "NitM\\ram"
--require "NitM\\init"--todo
--require "NitM\\functions"--todo
--require "NitM\\loop"--todo



---crapzone

--[[
0x05CA62 looks like a flag for wich castle you are in, yet the game doesnt care about it if u poke, 
so its a pointer(?) value 129 RC 128 IC, it seems to be set to 0 if you didnt unlocked the teleporter yet,
could be link to the byte after and before itself
note: this is wrong
]]
castle_flag = (memory.readbyte(0x05CA62))




state_menu = (memory.readbyte(0x048211))

--[[
Not the player but everything else hitboxes/effects whatever graphics objects
]]
draw_object_ram_start = 0x099F20

player_ground = mainmemory.readbyte(0x05C166)

----




--[[
]]





--Internal script properties init

game_is_boot = false
game_is_load = false
game_is_menu = false
game_is_running = false

script_room_count = 0

room_grid_X = 0
room_grid_Y = 0


first_castle = true
second_castle = false

script_run = true --master switch

script_size = 1
script_default_text = {0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil} 
--"Microsoft Sans Serif" --"Ebrima" --"GWTwoFont" "Javanese Text" "Arial"

script_box_line = 0xCF646464
script_box_fill = "nil"

script_padding_game = {300, 80, 140, 80}--main padding properties left, top, right, bottom, was 260 x1 for alpha1
script_padding_menu = {235, 0, 80, 0}--main padding properties left, top, right, bottom


drawRealGameArea = {274, 79, 597, 320} --the game is between 90x to 320x and 275y to 595y, we have extra 65x and 50y on each side
drawAreaForGame = {210, 40, 660, 370, 399} --the game is between 90x to 320x and 275y to 595y, we have extra 65x and 50y on each side

script_game_box_on = true
--the game box should be exactly 1 pixel on each axis away from the game
script_game_box_line = 0x71FF0000--slight transparent red for the game outline
script_game_box = {script_padding_game[1]+(15*script_size), script_padding_game[2]-1, script_padding_game[1]+(15*script_size)+321, script_padding_game[2]+240, script_game_box_line, script_box_fill}--x1,y1,x2,y2,outline,fill
--the hitbox limit is exactly 40 pixel on each axis away from the game, this should be enough to show off-screen stuff
script_hitbox_box = {script_game_box[1]-40, script_padding_game[2]-40, script_game_box[3]+40, script_game_box[4]+40, script_box_line, script_box_fill}

script_map = true
script_map_refresh = true
script_map_refresh_sstate = true
script_map_box = {0, 0, 275, 195, script_box_line, script_box_fill}
script_map_mode = "ZZ"
script_map_mode_delta = 2
mapData = {}

script_player_hitbox = true
script_player_hitbox_refresh = 0--we probly should not use a wait on this

script_objects_hitbox = true
script_objects_refresh = 30

script_relic = true
script_relic_refresh = 30
script_relic_refresh_sstate = true
script_relic_box = {script_hitbox_box[3], 170, script_hitbox_box[3]+115, 399, script_box_line, script_box_fill}
sizeX_relic_png = 15
sizeY_relic_png = 14
X_draw_relic = script_relic_box[1]+4
Y_draw_relic = script_relic_box[2]-5
Xoffset_draw_relic = 0
Yoffset_draw_relic = 0


script_gear = true
script_gear_refresh = true --ok you cannot change gear until you access menu so refresh isnt a value for numouse_Ber of frames, just a switch
script_gear_refresh_sstate = true --the loadstate event switch
script_gear_box = {script_hitbox_box[3], script_relic_box[2]-110, script_hitbox_box[3]+115, script_relic_box[2], script_box_line, script_box_fill}
eGp = {script_gear_box[1]+23, script_gear_box[2]-1, "yo", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7]}

script_familiar = true
script_familiar_refresh = true
script_familiar_refresh_sstate = true
script_familiar_box = {0, 220, 65, 399, script_box_line, script_box_fill}
fWp = {script_familiar_box[1], script_familiar_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7], 24, 27, 0x9FFFFFFF}

familiar_data_level = {1,1,1,1,1,1,nil,1}
familiar_text = {"ghost","bat","demon","fairy","sprite","sword",nil,"nose"}
current_familiar = "- - - - -"


script_timeattack = true
script_timeattack_refresh = 30
script_timeattack_refresh_sstate = true
script_timeattack_box = {65, 220, script_hitbox_box[1], 399, script_box_line, script_box_fill}
tAp = {script_timeattack_box[1]+2, script_timeattack_box[2]+56, "texthere", script_default_text[1], script_default_text[2], 8, "Ebrima",  script_default_text[5], script_default_text[6], script_default_text[7]}


script_vpad = true
script_vpad_refresh = true
script_vpad_box = {script_hitbox_box[3], 20, script_hitbox_box[3]+50, 40, script_box_line, 0xCF646464}
padx = script_vpad_box[1]+2
pady = script_vpad_box[2]


script_rng = true
script_rng_refresh = true
script_rng_box = {script_hitbox_box[3], 40, script_hitbox_box[3]+115, script_relic_box[2]-110, script_box_line, script_box_fill}
eRp = {script_rng_box[1]+8, script_rng_box[2]+2, "texthere", script_default_text[1], script_default_text[2], 13, "Arial",  "bold", script_default_text[6], script_default_text[7]}


script_info_time = true
script_info_time_box = {script_hitbox_box[3]-95, script_hitbox_box[4], script_hitbox_box[3], 399, script_box_line, script_box_fill}
iTp = {script_info_time_box[1], script_info_time_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}
stat_gametime_hours = 0
stat_gametime_minutes = 0
stat_gametime_seconds = 0

script_position = true
script_position_refresh = 30
script_position_box = {script_hitbox_box[1], 0, script_info_time_box[3]+115, 20, script_box_line, script_box_fill}
pWp = {script_position_box[1], script_position_box[2]-2, "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}

script_player_statA = true
script_position_player_statA = {script_hitbox_box[1], 20, script_hitbox_box[1]+60, 40, script_box_line, script_box_fill}
pAp = {script_position_player_statA[1], script_position_player_statA[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}


script_status_box = true
script_position_status_box = {script_position_player_statA[3], 20, script_position_player_statA[3]+35, 40, script_box_line, script_box_fill}
sPp = {script_position_status_box[1], script_position_status_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}
player_status_normal = true
action_text = ""

script_player_monitor = true
script_position_player_monitor = {script_position_status_box[3], 20, script_position_status_box[3]+226, 40, script_box_line, script_box_fill}
pMp = {script_position_player_monitor[1], script_position_player_monitor[2]-1, "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}


script_player_statB = true
script_position_player_statB = {script_info_time_box[1]-180, script_info_time_box[2], script_info_time_box[1], 399, script_box_line, script_box_fill}
pBp = {script_position_player_statB[1], script_position_player_statB[2]-1, "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}




script_ramwatchA = true
script_ramwatchA_refresh = 30
script_ramwatchA_box = {100, 100, 100, 100, script_box_line, script_box_fill}

script_ramwatchB = true
script_ramwatchB_refresh = 30
script_ramwatchB_box = {100, 100, 100, 100, script_box_line, script_box_fill}

script_ramwatchC = true
script_ramwatchC_refresh = 30
script_ramwatchB_box = {100, 100, 100, 100, script_box_line, script_box_fill}


script_map_cursor = true
cursor_color_invert = false

cursor_player = false
cursor_player_color = 1
cursor_player_speed = 2

cursor_boss = false
cursor_boss_color = 2
cursor_boss_speed = 2

cursor_relic = false
cursor_relic_color = 3
cursor_relic_speed = 2

cursor_user = false
cursor_user_color = 4
map_querry_X = 0
map_querry_Y = 0
area_querry = "- - - - -"
area_querry_alt = "- - - - -"

theroomX = 0
theroomY = 0

cursor_trail = false
cursor_trail_color = 1
cursor_trail_speed = 1
trail_data_refresh = false
trail_data = {}

script_map_info = true
script_map_info_refresh = true
script_map_info_box = {0, 195, 275, 220, script_box_line, script_box_fill}

cursor_joker_speed = 6
cursor_joker_color = 6
cursor_joker_all = false

area_text = "- - -" 



debug_Zcolor = false



wait = 0	--init the wait from zero duh
max_wait = 60	--give a max wait time, if you set a module to wait superior to this value, it will never update data
wait_long = 0 --wait but in seconds... it increase every 60 wait



X_but = 36
Y_but = 12
on_png = '.\\NitM\\hud\\button_on.png'
off_png = '.\\NitM\\hud\\button_off.png'




objectList = {}
objectUnknow = {}


-- Color format: OORRGGBB(Opacity, Red, Green, Blue)

--------------------------------

--------------------------------

--------------------------------

--------------------------------

--------------------------------
--------------------------------


local function refresh_data()
--ideally, this will be the exact same than ram.lua minus the comments
--ordered from lowest ram address to highest

---crapzone
	castle_flag = (memory.readbyte(0x065488))--wrong too probly
--	castle_flag = (memory.readbyte(0x05CA62))--wrong
	state_menu = (memory.readbyte(0x048211))

	player_ground = mainmemory.readbyte(0x05C166)

--	area_ID = memory.read_u32_be(0x058C84)

--wrong
	player_use_first_hand = mainmemory.readbyte(0x05C462)
	player_use_second_hand = mainmemory.readbyte(0x05C574)
	player_use_third_hand = mainmemory.readbyte(0x050B03)
---




	the_frame = emu.framecount()
	mouse_X = input.getmouse()['X']
	mouse_Y = input.getmouse()['Y']
	mouse_B = input.getmouse()['Left']

--
if script_rng_refresh == true then
	state_rng = (memory.read_u32_be(0x0482b8))
end
--
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
--
	stat_rooms = (memory.read_u16_le(0x05C5B2)) --used to check if the map changed
--
	player_Y_position_absolute = memory.read_u16_le(0x05C5B6)
--
	player_character_ID = (memory.readbyte(0x05C6D2))
--
if script_relic_refresh == true then --regenerate data
	relic_data = memory.readbyterange(0x05C6F0, 32, "Work Ram High")
	script_relic_refresh = false
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
--
	player_morph = (memory.readbyte(0x05C99A))
--
	player_subweapon = (memory.readbyte(0x05C99E))
--
if script_gear_refresh == true then --we dont need to regenerate this data until the menu is call...
	gear_data = memory.readbyterange(0x05C9A2, 29, "Work Ram High")
	script_gear_refresh = false
	script_gear = true
end
--
	stat_gametime_data = memory.readbyterange(0x05C9D6, 9, "Work Ram High")
--
if script_familiar_refresh == true  then --regenerate data every xx frames
	familiar_data = memory.readbyterange(0x05C9EA, 85, "Work Ram High")
	familiar_data_level = {}
	table.insert(familiar_data_level, 1, ""..familiar_data[0])--ghost
	table.insert(familiar_data_level, 2, ""..familiar_data[12])--bat
	table.insert(familiar_data_level, 3, ""..familiar_data[36])--demon
	table.insert(familiar_data_level, 4, ""..familiar_data[24])--fairy
	table.insert(familiar_data_level, 5, ""..familiar_data[60])--half fairy
	table.insert(familiar_data_level, 6, ""..familiar_data[48])--sword
	table.insert(familiar_data_level, 8, ""..familiar_data[72])--nose
	script_familiar_refresh = false
	script_familiar = true
end
--
--	first_castle_teleporters = memory.readbyte(0x05CB20)
--	second_castle_teleporters = memory.readbyte(0x05CB21)
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
--


if stat_rooms ~= script_room_count then
	script_room_count = stat_rooms
	script_map_refresh = true
end
if script_map_refresh == true then
	map_data_A = memory.readbyterange(0x05CF10, 752, "Work Ram High")
--  I need a reliable check to know if the player is in the inverted castle
--	map_data_B = memory.readbyterange(0x05CF10+752+(16*64), 752, "Work Ram High")
	script_map_refresh = false
	script_map = true
end
--
	local room_data_bis = memory.readbyterange(0x05D75E, 5, "Work Ram High")
	room_X_origin_grid = room_data_bis[0]
	room_Y_origin_grid = room_data_bis[4]
--
if script_timeattack_refresh == true then --we dont need to regenerate this data until the menu is call...
	time_attack_data = memory.readbyterange(0x05D830, 112, "Work Ram High")
	script_timeattack_refresh = false
	script_timeattack = true
end
--
	player_X_scroll = (memory.read_u16_le(0x0860B6))
	player_Y_scroll = (memory.read_u16_le(0x0860BA))
--
	player_X_position_relative = memory.read_u16_le(0x0997FC)
	player_Y_position_relative = memory.read_u16_le(0x099800)
--
	local player_data = memory.readbyterange(0x0997FF, 63, "Work Ram High")
	player_X_subpixel = player_data[0]
	player_Y_subpixel = player_data[4]
	if player_data[5] >= 128 then player_X_speed = player_data[5] - 2 * 128 else player_X_speed = player_data[5] end
	player_X_motion = player_data[8]
	if player_data[9] >= 128 then player_Y_speed = player_data[9] - 2 * 128 else player_Y_speed = player_data[9] end
	player_Y_motion = player_data[12]
	if player_data[13] >= 128 then player_X_hitbox_offset = player_data[14] - 2 * 128 else player_X_hitbox_offset = player_data[14] end
	if player_data[15] >= 128 then player_Y_hitbox_offset = player_data[16] - 2 * 128 else player_Y_hitbox_offset = player_data[16] end
	player_orientation = player_data[17]	
	player_Y_hitbox_radius = player_data[61]
	player_X_hitbox_radius = player_data[62]
--
	player_action_ID = memory.readbyte(0x099824)
--
	player_morph_timer = memory.readbyte(0x0C850A)
--


if game_is_boot == false and stat_level > 0 and stat_gametime_data[8] ~= 1 then
--then we are no longer in the bios or file select... I think... but if you soft reset you will still have player data in ram
--if u started with alucard, the timer will start after the fmv
--if u start with richter or maria, script will kick at "now loadind" (you become level1)
	game_is_boot = true
end

end
--------------------------------
function resolution_switch()
--the following is a shit piece of code to make sure everything is proper when the game change its resolution

if player_script[2] == 4 and player_script[4] == 1 then --we are in the fucking menu
if player_script[0] == 6 or player_script[0] == 10 or player_script[0] == 11 or player_script[0] == 21 then  --its main menu, options, familiars, map
client.SetGameExtraPadding(script_padding_menu[1], script_padding_menu[2], script_padding_menu[3], script_padding_menu[4]) --menu resize coz they did bad stuff here with resolution
script_game_box_on = false
script_player_hitbox = false
script_objects_hitbox = false
script_relic_box = {script_hitbox_box[3]+225, 210, script_hitbox_box[3]+225+115, 440, script_box_line, script_box_fill}
X_draw_relic = script_relic_box[1]+4
Y_draw_relic = script_relic_box[2]-5
script_gear_box = {script_hitbox_box[3]+225, script_relic_box[2]-110, script_hitbox_box[3]+115+225, script_relic_box[2], script_box_line, script_box_fill}
eGp = {script_gear_box[1]+20, script_gear_box[2]-1, "yo", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7]}
script_timeattack_box = {65, 270, script_hitbox_box[1], 450, script_box_line, script_box_fill}
tAp = {script_timeattack_box[1]+2, script_timeattack_box[2]+56, "texthere", script_default_text[1], script_default_text[2], 8, "Ebrima",  script_default_text[5], script_default_text[6], script_default_text[7]}
script_familiar_box = {0, 270, 65, 450, script_box_line, script_box_fill}
fWp = {script_familiar_box[1], script_familiar_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7], 24, 27, 0x9FFFFFFF}
script_rng_box = {script_hitbox_box[3]+225, 80, script_hitbox_box[3]+115+225, script_relic_box[2], script_box_line, script_box_fill}
eRp = {script_rng_box[1]+8, script_rng_box[2]+2, "texthere", script_default_text[1], script_default_text[2], 13, "Arial",  "bold", script_default_text[6], script_default_text[7]}
script_info_time_box = {script_hitbox_box[3]+225, 40, script_hitbox_box[3]+115+225, 80, script_box_line, script_box_fill}
iTp = {script_info_time_box[1], script_info_time_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}
script_vpad_box = {script_hitbox_box[3]+225, 20, script_hitbox_box[3]+225+49, 40, script_box_line, 0xCF646464}
padx = script_vpad_box[1]+2
pady = script_vpad_box[2]
else--its inventory ect... the resolution is normal
client.SetGameExtraPadding(script_padding_game[1], script_padding_game[2], script_padding_game[3], script_padding_game[4])--see init for values
script_game_box_on = true
script_player_hitbox = false
script_objects_hitbox = false
script_relic_box = {script_hitbox_box[3], 170, script_hitbox_box[3]+115, 399, script_box_line, script_box_fill}
X_draw_relic = script_relic_box[1]+4
Y_draw_relic = script_relic_box[2]-5
script_gear_box = {script_hitbox_box[3], script_relic_box[2]-110, script_hitbox_box[3]+115, script_relic_box[2], script_box_line, script_box_fill}
eGp = {script_gear_box[1]+20, script_gear_box[2]-1, "yo", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7]}
script_timeattack_box = {65, 220, script_hitbox_box[1], 399, script_box_line, script_box_fill}
tAp = {script_timeattack_box[1]+2, script_timeattack_box[2]+56, "texthere", script_default_text[1], script_default_text[2], 8, "Ebrima",  script_default_text[5], script_default_text[6], script_default_text[7]}
script_familiar_box = {0, 220, 65, 399, script_box_line, script_box_fill}
fWp = {script_familiar_box[1], script_familiar_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7], 24, 27, 0x9FFFFFFF}
script_rng_box = {script_hitbox_box[3], 40, script_hitbox_box[3]+115, script_relic_box[2]-110, script_box_line, script_box_fill}
eRp = {script_rng_box[1]+8, script_rng_box[2]+2, "texthere", script_default_text[1], script_default_text[2], 13, "Arial",  "bold", script_default_text[6], script_default_text[7]}
script_info_time_box = {script_hitbox_box[3]-95, script_hitbox_box[4], script_hitbox_box[3], 399, script_box_line, script_box_fill}
iTp = {script_info_time_box[1], script_info_time_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}
script_vpad_box = {script_hitbox_box[3], 20, script_hitbox_box[3]+50, 40, script_box_line, 0xCF646464}
padx = script_vpad_box[1]+2
pady = script_vpad_box[2]
end
else--its not  the menu, make sure we set everything to normal
client.SetGameExtraPadding(script_padding_game[1], script_padding_game[2], script_padding_game[3], script_padding_game[4])--see init for values
script_game_box_on = true
script_player_hitbox = true
script_objects_hitbox = true
script_relic_box = {script_hitbox_box[3], 170, script_hitbox_box[3]+115, 399, script_box_line, script_box_fill}
X_draw_relic = script_relic_box[1]+4
Y_draw_relic = script_relic_box[2]-5
script_gear_box = {script_hitbox_box[3], script_relic_box[2]-110, script_hitbox_box[3]+115, script_relic_box[2], script_box_line, script_box_fill}
eGp = {script_gear_box[1]+20, script_gear_box[2]-1, "yo", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7]}
script_timeattack_box = {65, 220, script_hitbox_box[1], 399, script_box_line, script_box_fill}
tAp = {script_timeattack_box[1]+2, script_timeattack_box[2]+56, "texthere", script_default_text[1], script_default_text[2], 8, "Ebrima",  script_default_text[5], script_default_text[6], script_default_text[7]}
script_familiar_box = {0, 220, 65, 399, script_box_line, script_box_fill}
fWp = {script_familiar_box[1], script_familiar_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7], 24, 27, 0x9FFFFFFF}
script_rng_box = {script_hitbox_box[3], 40, script_hitbox_box[3]+115, script_relic_box[2]-110, script_box_line, script_box_fill}
eRp = {script_rng_box[1]+8, script_rng_box[2]+2, "texthere", script_default_text[1], script_default_text[2], 13, "Arial",  "bold", script_default_text[6], script_default_text[7]}
script_info_time_box = {script_hitbox_box[3]-95, script_hitbox_box[4], script_hitbox_box[3], 399, script_box_line, script_box_fill}
iTp = {script_info_time_box[1], script_info_time_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4],  script_default_text[5], script_default_text[6], script_default_text[7]}
script_vpad_box = {script_hitbox_box[3], 20, script_hitbox_box[3]+50, 40, script_box_line, 0xCF646464}
padx = script_vpad_box[1]+2
pady = script_vpad_box[2]
end

end
--------------------------------
function game_box()
gui.drawBox(script_game_box[1], script_game_box[2], script_game_box[3], script_game_box[4], script_game_box[5], script_game_box[6]) --game box
gui.drawBox(script_hitbox_box[1], script_hitbox_box[2], script_hitbox_box[3], script_hitbox_box[4], script_hitbox_box[5], script_hitbox_box[6]) --objects box limits
end
--------------------------------
local function info_time()
	gui.drawBox(script_info_time_box[1], script_info_time_box[2], script_info_time_box[3], script_info_time_box[4], script_info_time_box[5], script_info_time_box[6])
--FRAMES/LAG/REAL TIME COUNTER/IN GAME TIME RAM WATCH
	--if its a movie, we want to turn all the text into red when its over
	if movie.mode() == 'PLAY' and the_frame == movie.length() then	color_frame_text = 0xCFFF0000 else color_frame_text = 0xCFFFFFFF end
--IN GAME TIME
	gui.drawText(iTp[1], iTp[2]+12, "Game Time:", color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
	stat_gametime_hours = stat_gametime_data[0]
	if stat_gametime_hours >= 0 and stat_gametime_hours < 10  then
	stat_gametime_hours = "0"..stat_gametime_hours
	end
	gui.drawText(iTp[1]+48, iTp[2]+12, ""..stat_gametime_hours, color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
	stat_gametime_minutes = stat_gametime_data[4]
	if stat_gametime_minutes >= 0 and stat_gametime_minutes < 10  then
	stat_gametime_minutes = "0"..stat_gametime_minutes
	end
	gui.drawText(iTp[1]+58, iTp[2]+12, ":"..stat_gametime_minutes, color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
	stat_gametime_seconds = stat_gametime_data[8]
	if stat_gametime_seconds >= 0 and stat_gametime_seconds < 10  then
	stat_gametime_seconds = "0"..stat_gametime_seconds
	end
	gui.drawText(iTp[1]+70, iTp[2]+12, ":"..stat_gametime_seconds, color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
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
	gui.drawText(iTp[1], iTp[2], "Real   Time:", color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
	gui.drawText(iTp[1]+48, iTp[2], time, color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
--FRAMES/LAG
	gui.drawText(iTp[1], iTp[2]+24, "Frame:", color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
	gui.drawText(iTp[1]+30, iTp[2]+24, the_frame, color_frame_text, iTp[5], iTp[6], iTp[7], iTp[8], iTp[9], iTp[10])
end
--------------------------------
function where_is_player()

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
room_grid_X = room_X_min_grid + curX --from min coz grid orientation is from left to right
room_grid_Y = room_Y_max_grid + curY --from max coz we go from top0 to bottom
else
room_grid_X = 0 --safeguard?
room_grid_Y = 0 --
end
end
area_ID = castle_A_area[room_grid_X + room_grid_Y * 64]
if area_ID == nil then area_text = "- - -" else area_text = area_ID end
area_text_alt = first_castle_dataB[room_grid_X + room_grid_Y * 64]
if area_text_alt == nil then area_text_alt = "- - -" end
if room_grid_X >= 1 and room_grid_Y >= 1 then
theroomX = room_grid_X * 4
theroomY = room_grid_Y * 4 -20-- 20 is the number of row ive removed to make the map shorter, 5 rows x 4 px
end

--trail data
if cursor_trail == true then
if trail_data[91] ~= nil then trail_data = {} end
if room_grid_Y ~= trail_data[#trail_data] or room_grid_X ~= trail_data[#trail_data-1] and game_is_loaded == 1 then
--print(trail_data)
table.insert(trail_data, "trail")
table.insert(trail_data, room_grid_X)
table.insert(trail_data, room_grid_Y)
end
end

end
--------------------------------
local function playerhitbox()
-- Alucard/Richter/Maria hurtbox / colision box 
-- need a serious re-check on the drawing offset
-- it is call every frame or it make no sence to have it on in the first place
	local playerHitboxRamWatch = false --false to turn off the ram values display inside the box, those info are also in top panel
	local playerHitboxRamWatchColor = 0xDFFF0000
	local playerHitboxRamWatchSize = 8
	local playerHitboxRamWatchFont = "Microsoft Sans Serif" --"Ebrima"
	local playerHitboxLine = 0xDF0000FF
	local playerHitboxFill = 0x3c0000FF
	local playerHitboxDrawingOffsetX = 318  --was 278
	local playerHitboxDrawingOffsetY = 80

--  useless?
--	if player_orientation == 1 then 
--	player_X_hitbox_offset = player_X_hitbox_offset * -1 
--	end

--DRAW THE PLAYER HITBOX
	gui.drawBox(
		player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
		player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY,
		player_X_position_relative + player_X_hitbox_offset + player_X_hitbox_radius + playerHitboxDrawingOffsetX,
		player_Y_position_relative + player_Y_hitbox_offset + player_Y_hitbox_radius + playerHitboxDrawingOffsetY,
		playerHitboxLine,
		playerHitboxFill
				)
--DRAW PLAYER HITBOX RAMWATCH
if playerHitboxRamWatch == true then
gui.drawText(
	player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
	player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY,
	"x"..player_X_position_relative, playerHitboxRamWatchColor, 
	nil, playerHitboxRamWatchSize, playerHitboxRamWatchFont, nil, nil, nil)
gui.drawText(
	player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
	player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY + 7,
	"y"..player_Y_position_relative, playerHitboxRamWatchColor,
	nil, playerHitboxRamWatchSize, playerHitboxRamWatchFont, nil, nil, nil)
gui.drawText(
	player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
	player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY + 14,
	"rad"..player_X_hitbox_radius, playerHitboxRamWatchColor,
	nil, playerHitboxRamWatchSize, playerHitboxRamWatchFont, nil, nil, nil)
gui.drawText(
	player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
	player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY + 21,
	"rad"..player_Y_hitbox_radius, playerHitboxRamWatchColor,
	nil, playerHitboxRamWatchSize, playerHitboxRamWatchFont, nil, nil, nil)
gui.drawText(
	player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
	player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY + 28,
	"off"..player_X_hitbox_offset, playerHitboxRamWatchColor,
	nil, playerHitboxRamWatchSize, playerHitboxRamWatchFont, nil, nil, nil)
gui.drawText(
	player_X_position_relative + player_X_hitbox_offset - player_X_hitbox_radius + playerHitboxDrawingOffsetX,
	player_Y_position_relative + player_Y_hitbox_offset - player_Y_hitbox_radius + playerHitboxDrawingOffsetY + 35,
	"off"..player_Y_hitbox_offset, playerHitboxRamWatchColor,
	nil, playerHitboxRamWatchSize, playerHitboxRamWatchFont, nil, nil, nil)			
end

end
--------------------------------
local function DisplayObjectHitbox()
	local objectHitboxRamWatch = false --false to turn off the ram values display
	local objectHitboxRamWatchColor = 0xFFFFFFFF
	local objectHitboxRamWatchSize = 8
	local objectHitboxRamWatchFont = "Microsoft Sans Serif" --"Ebrima"
	local objectHitboxLine = 0xDFFF0000
	local objectHitboxFill = 0xc3FF0000
	local objectHitboxDrawingOffsetX = 318  --was 280 in alpha1
	local objectHitboxDrawingOffsetY = 80
	local object_X_position_relative
	local object_Y_position_relative
	local object_X_hitbox_radius
	local object_Y_hitbox_radius
	local object_X_hitbox_offset
	local object_Y_hitbox_offset
	local object_timer
	local object_ID

	local objectBase =  0x099f20 --0x099f20 --0x09A0B8  --0x09CBB8 the door prologue 0x09F9b8 the switch prologue --0x09d178 dracula prologue
--object block seem to be 116 byte long
--if emu.framecount() % 0 == 0 then 
objectList = {} --objectUnknow = {}

for i = 0, 60000, 1 do base = objectBase + (i + 1)

if memory.readbyte(base) == 8 and memory.readbyte(base + 1) == 6 and memory.readbyte(base - 1) == 0
then
objectList[#objectList + 1] = base
end

end

for i = 1, #objectList do
--WE FOUND AN OBJECT, LETS GATHER THE DATA FROM IT
	object_X_position_relative = memory.read_s16_le(objectList[i] + 4)--0x09d17c)
	object_Y_position_relative = memory.read_s16_le(objectList[i] + 8)--0x09d180)
	object_X_hitbox_radius = memory.readbyte(objectList[i] + 69)
	object_Y_hitbox_radius = memory.readbyte(objectList[i] + 68)
	object_X_speed = memory.read_s8(objectList[i] + 12)
	object_Y_speed = memory.read_s8(objectList[i] + 16)
	object_timer = memory.readbyte(objectList[i] + 104)
	object_ID = memory.readbyte(objectList[i] + 40).."+"..memory.readbyte(objectList[i] + 41).."+"..memory.readbyte(objectList[i] + 42).."+"..memory.readbyte(objectList[i] + 43)
	object_ID_1 = memory.readbyte(objectList[i] + 40)
	object_ID_2 = memory.readbyte(objectList[i] + 41)
	object_ID_3 = memory.readbyte(objectList[i] + 42)
	object_ID_4 = memory.readbyte(objectList[i] + 43)
	object_X_hitbox_offset = 0 -- this is useless
	object_Y_hitbox_offset = memory.readbyte(objectList[i] + 104)
--LOGIC TO DETERMINE WHAT IS THE OBJECT WE FOUND

objectIsUnknow = false
if object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 220 and object_ID_4 == 113 --dracula prologue head 
or object_ID_1 == 15 and object_ID_2 == 6 and object_ID_3 == 32 and object_ID_4 == 22  --library book
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 216 and object_ID_4 == 193  --library ectoplasm
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 12 and object_ID_4 == 180  --library dulran
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 104 and object_ID_4 == 239  --library fleaman
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 124 and object_ID_4 == 248  --outerwall skel
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 196 and object_ID_4 == 237  --outerwall guard
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 200 and object_ID_4 == 155  --outerwall axelord
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 112 and object_ID_4 == 183  --outerwall archer
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 188 and object_ID_4 == 194  --outerwall gunner
or object_ID_1 == 15 and object_ID_2 == 6 and object_ID_3 == 144 and object_ID_4 == 5  --outerwall medusa
or object_ID_1 == 15 and object_ID_2 == 6 and object_ID_3 == 112 and object_ID_4 == 5  --outerwall medusa gold
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 136 and object_ID_4 == 205  --outerwall lord
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 24 and object_ID_4 == 175  --outerwall skel
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 108 and object_ID_4 == 84  --doppleganger lvl10 A
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 244 and object_ID_4 == 218  --outerwall guardian
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 180 and object_ID_4 == 185  --marble plant
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 172 and object_ID_4 == 128  --marble diplo head
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 232 and object_ID_4 == 56  --marble diplo something
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 136 and object_ID_4 == 105  --marble diplo feet
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 84 and object_ID_4 == 110  --marble diplo base
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 0 and object_ID_4 == 113  --marble diplo base
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 180 and object_ID_4 == 250  --marble skel
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 76 and object_ID_4 == 235  --marble ouija table
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 124 and object_ID_4 == 174  --marble slinger
then  --its a monster
	objectHitboxLine = 0xDFFF0000
	objectHitboxFill = 0x3cFF0000
	objectHitboxRamWatchColor = 0xBFFFFFFF
elseif object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 188 and object_ID_4 == 89 --fireball after effect
or object_ID_1 == 10 and object_ID_2 == 6 and object_ID_3 == 128 and object_ID_4 == 215  --fireball after effect
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 88 and object_ID_4 == 83  --splash after effect
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 244 and object_ID_4 == 34  --splash after effect
or object_ID_1 == 10 and object_ID_2 == 6 and object_ID_3 == 80 and object_ID_4 == 229  --maria child
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 152 and object_ID_4 == 132  --fireball extra effect
or object_ID_1 == 11 and object_ID_2 == 6 and object_ID_3 == 152 and object_ID_4 == 205  --mana refilled
then  --its a player stuff
	objectHitboxLine = 0xDF0000FF
	objectHitboxFill = 0x3C0000FF
	objectHitboxRamWatchColor = 0xB00000FF
elseif object_ID_1 == 11 and object_ID_2 == 6 and object_ID_3 == 28 and object_ID_4 == 6 --richter whip
or object_ID_1 == 11 and object_ID_2 == 6 and object_ID_3 == 248 and object_ID_4 == 141  --richter cross
or object_ID_1 == 11 and object_ID_2 == 6 and object_ID_3 == 160 and object_ID_4 == 158  --richter holy water
or object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 40 and object_ID_4 == 145  --shuriken
or object_ID_1 == 11 and object_ID_2 == 6 and object_ID_3 == 244 and object_ID_4 == 37  --toadstool
then  --its a player weapon
	objectHitboxLine = 0xDFFFFF00
	objectHitboxFill = 0x3CFFFF00
	objectHitboxRamWatchColor = 0xBFFFFF00
elseif object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 92 and object_ID_4 == 220 --prologue candle
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 136 and object_ID_4 == 41  --drop candle
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 92 and object_ID_4 == 3  --drop candle
or object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 20 and object_ID_4 == 195  --library candle
or object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 132 and object_ID_4 == 195  --outerwall candle AND dopplganger door.?.?.
or object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 12 and object_ID_4 == 228  --clocktower candle
or object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 148 and object_ID_4 == 250  --outerwall longview
or object_ID_1 == 13 and object_ID_2 == 6 and object_ID_3 == 64 and object_ID_4 == 192  --marble candle
then  --its a candle or drop
	objectHitboxLine = 0xDF00FF00
	objectHitboxFill = 0x3C00FF00
	objectHitboxRamWatchColor = 0xBF00FF00
elseif object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 0 and object_ID_4 == 129 --dracula fireball
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 120 and object_ID_4 == 130  --dracula fireball 2
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 140 and object_ID_4 == 168  --axelord axe
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 164 and object_ID_4 == 191  --archer arrow
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 36 and object_ID_4 == 202  --gunner bullet
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 204 and object_ID_4 == 213  --doppleganger knife
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 64 and object_ID_4 == 227  --outerwall guardian sword
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 236 and object_ID_4 == 229  --outerwall guardian wave
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 120 and object_ID_4 == 197  --marble plant spit
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 168 and object_ID_4 == 139  --marble diplo ball
or object_ID_1 == 15 and object_ID_2 == 6 and object_ID_3 == 248 and object_ID_4 == 0  --marble trow bone
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 104 and object_ID_4 == 181  --marble trow bone
or object_ID_1 == 14 and object_ID_2 == 6 and object_ID_3 == 220 and object_ID_4 == 238  --marble ouija table
then  --its a monster attack
	objectHitboxLine = 0xDFFF9A00
	objectHitboxFill = 0x3CFF9A00
	objectHitboxRamWatchColor = 0xBFFF9A00
elseif object_ID_1 == 11 and object_ID_2 == 6 and object_ID_3 == 104 and object_ID_4 == 185 --alucard dust
or object_ID_1 == 10 and object_ID_2 == 6 and object_ID_3 == 112 and object_ID_4 == 203  --richter prologue dust
then  --its dust
	objectHitboxLine = 0xDFFF00E6
	objectHitboxFill = 0x3CFF00E6
	objectHitboxRamWatchColor = 0xBFFF00E6
else --its a small visual effect
objectIsUnknow = true
	objectHitboxLine = 0xDF00FFFF
	objectHitboxFill = 0x3c00FFFF
	objectHitboxRamWatchColor = 0xBF00FFFF
end



--DRAW THE OBJECT HITBOX
if object_X_position_relative ~= 0 
and object_Y_position_relative ~= 0 
and object_X_position_relative >= -60
and object_X_position_relative <= 370
and object_Y_position_relative >= -25
and object_Y_position_relative <= 280
then
	gui.drawBox(
		object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
		object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY,
		object_X_position_relative + object_X_hitbox_offset + object_X_hitbox_radius + objectHitboxDrawingOffsetX,
		object_Y_position_relative + object_Y_hitbox_offset + object_Y_hitbox_radius + objectHitboxDrawingOffsetY,
		objectHitboxLine,
		objectHitboxFill
				)
end
--DRAW OBJECT HITBOX RAMWATCH
if objectHitboxRamWatch == true --and objectIsUnknow == true
and object_X_position_relative ~= 0
and object_Y_position_relative ~= 0 
and object_X_position_relative >= -50
and object_Y_position_relative >= -40
and object_X_position_relative <= 360

then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX -10,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY -16,
	"id "..object_ID,
	objectHitboxRamWatchColor, nil, 9, objectHitboxRamWatchFont, nil, nil, nil)
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX -10,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY -11,
	"0"..bizstring.hex(objectList[i]),
	objectHitboxRamWatchColor, nil, 9, objectHitboxRamWatchFont, nil, nil, nil)
	if object_X_position_relative ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY,
	"x"..object_X_position_relative,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont,	nil, nil, nil)
	end
	if object_Y_position_relative ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY + 7,
	"y"..object_Y_position_relative,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont, nil, nil, nil)
	end
	if object_X_hitbox_radius ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY + 14,
	"rad"..object_X_hitbox_radius,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont, nil, nil, nil)
	end
	if object_Y_hitbox_radius ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY + 21,
	"rad"..object_Y_hitbox_radius,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont,	nil, nil, nil)
	end
	if object_X_speed ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY + 28,
	"spd"..object_X_speed,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont, nil, nil, nil)
	end
	if object_Y_speed ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY + 35,
	"spd"..object_Y_speed,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont, nil, nil, nil)
	end
	if object_timer ~= 0 then
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY + 42,
	"time"..object_timer,
	objectHitboxRamWatchColor, nil, objectHitboxRamWatchSize, objectHitboxRamWatchFont, nil, nil, nil)
	end
end

end

end
--------------------------------
local function position()
	gui.drawBox(script_position_box[1], script_position_box[2], script_position_box[3], script_position_box[4], script_position_box[5], script_position_box[6])

	gui.drawText(pWp[1], pWp[2], "X :"..player_X_position_absolute, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10]) 
	gui.drawText(pWp[1], pWp[2] + 9, "Y :"..player_Y_position_absolute, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 40, pWp[2], "Relative:"..player_X_position_relative, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 40, pWp[2] + 9, "Relative:"..player_Y_position_relative, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 107, pWp[2], "Scroll:"..player_X_scroll, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 107, pWp[2] + 9, "Scroll:"..player_Y_scroll, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 165, pWp[2], "Speed:"..player_X_speed, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 165, pWp[2] + 9, "Speed:"..player_Y_speed, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 205, pWp[2], "Subpixel:"..player_X_subpixel, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 205, pWp[2] + 9, "Subpixel:"..player_Y_subpixel, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])

	gui.drawText(pWp[1] + 256, pWp[2], "Motion:"..player_X_motion, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 256, pWp[2] + 9, "Motion:"..player_Y_motion, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])


	gui.drawText(pWp[1] + 302, pWp[2], "Box "..player_X_hitbox_radius, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 302, pWp[2] + 9, "Box "..player_Y_hitbox_radius, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 329, pWp[2], "offset"..player_X_hitbox_offset, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 329, pWp[2] + 9, "offset"..player_Y_hitbox_offset, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])


	gui.drawText(pWp[1] + 395, pWp[2], "Start "..room_X_origin_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 395, pWp[2] + 9, "Start "..room_Y_origin_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])

	gui.drawText(pWp[1] + 428, pWp[2], "Size "..room_X_size_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 428, pWp[2] + 9, "Size "..room_Y_size_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])

	gui.drawText(pWp[1] + 458, pWp[2], "Min "..room_X_min_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 458, pWp[2] + 9, "Min "..room_Y_min_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])

	gui.drawText(pWp[1] + 486, pWp[2], "Max "..room_X_max_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 486, pWp[2] + 9, "Max "..room_Y_max_grid, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])




	gui.drawText(pWp[1] + 364, pWp[2], "Grid "..room_grid_X, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 364, pWp[2] + 9, "Grid "..room_grid_Y, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])

	gui.drawBox(script_position_box[1]+303, script_position_box[2], script_position_box[1]+365, script_position_box[4], script_position_box[5], script_position_box[6])

	gui.drawBox(script_position_box[1]+365, script_position_box[2], script_position_box[3], script_position_box[4], script_position_box[5], script_position_box[6])


end

local function playerstatA()
	gui.drawBox(script_position_player_statA[1], script_position_player_statA[2], script_position_player_statA[3], script_position_player_statA[4], script_position_player_statA[5], script_position_player_statA[6])
	gui.drawText(pAp[1], pAp[2]-2, "Hp:"..stat_hp.."/"..stat_hp_max, pAp[4], pAp[5], pAp[6], pAp[7], pAp[8], pAp[9], pAp[10])
	gui.drawText(pAp[1], pAp[2] + 7, "Mp:"..stat_mp.."/"..stat_mp_max, pAp[4], pAp[5], pAp[6], pAp[7], pAp[8], pAp[9], pAp[10])
end


local function status()
	gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], script_position_status_box[6])

local base_colorA = 0x00DD0000 --red
local base_colorB = 0x0000DD00 --green
local base_colorC = 0x000000DD --blue
local base_colorD = 0x00C010F0 --purple
local base_colorE = 0x00F0AF10 --orange
local base_colorF = 0x00646464 --grey
local base_colorG = 0x00FFFFFF --white
local base_colorH = 0x00000000 --black
local base_colorI = 0x00FFFF00 --yellow
local opacity = (math.cos(the_frame*math.pi/60)+1)/2
local opacity_alpha = math.ceil(0xAA*opacity)*0x1000000
local opacity_fast = (math.cos(the_frame*math.pi/10)+1)/2
local opacity_alpha_fast = math.ceil(0xCC*opacity_fast)*0x6000000
local colorA = base_colorA + opacity_alpha
local colorB = base_colorB + opacity_alpha
local colorC = base_colorC + opacity_alpha
local colorD = base_colorD + opacity_alpha
local colorE = base_colorE + opacity_alpha
local colorF = base_colorF + opacity_alpha
local colorG = base_colorG + opacity_alpha
local colorH = base_colorH + opacity_alpha
local colorI = base_colorI + opacity_alpha
local colorV = base_colorF + opacity_alpha_fast
local colorW = base_colorH + opacity_alpha_fast
local colorX = base_colorB + opacity_alpha_fast
local colorY = base_colorG + opacity_alpha_fast
local colorZ = base_colorA + opacity_alpha_fast


if player_character_ID == 0 then --its alucard
	player_status_normal = true

	sPp[4] = 0xCFFFFFFF
	
	--action ID 14 is coming back from a form? nope theres many of those ID
	--when you are poison or curse, all ID shift, probly this is a binary data again

	if player_morph_timer >= 1 then
		gui.drawText(sPp[1]+22, pMp[2]-1, player_morph_timer, 0xFF00FF00, sPp[5], sPp[6], sPp[7], sPp[8], sPp[9], sPp[10])
	end


	if player_invincible_timer >= 1 then
		gui.drawText(sPp[1]+22, pMp[2]+8, player_invincible_timer, sPp[4], sPp[5], sPp[6], sPp[7], sPp[8], sPp[9], sPp[10])
		if player_orientation == 0 and player_action_ID ~= 5 and player_action_ID ~= 7 and player_action_ID ~= 9 and player_action_ID ~= 14 and player_action_ID ~= 24 and player_action_ID ~= 25 then --its right		
			gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorY)
			gui.drawImage('.\\NitM\\player\\Alucard_right_invul.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		end
		if player_orientation == 1 and player_action_ID ~= 5 and player_action_ID ~= 7 and player_action_ID ~= 9 and player_action_ID ~= 14 and player_action_ID ~= 24 and player_action_ID ~= 25 then --its left		
			gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorY)
			gui.drawImage('.\\NitM\\player\\Alucard_left_invul.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		end
		player_status_normal = false
	end

	if player_action_ID == 24 and player_morph == 1 then --alucard is the wolf
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorI)
		gui.drawImage('.\\NitM\\relic\\relic_wolf_soul.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end


	if player_action_ID == 7 and player_morph == 1 then --alucard is the mist
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorC)
		gui.drawImage('.\\NitM\\relic\\relic_mist_form.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end


	if player_action_ID == 5 and player_morph == 1 then --alucard is the bat
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorA)
		gui.drawImage('.\\NitM\\relic\\relic_bat_soul.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end
	

	if player_action_ID == 24 and player_morph == 1 and player_invincible_timer >= 10 then --alucard is the wolf but no control
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorI)
		gui.drawImage('.\\NitM\\relic\\relic_wolf_soul_grey.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end


	if player_action_ID == 5 and player_morph == 1 and player_invincible_timer >= 10 then --alucard is the bat but no control
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorA)
		gui.drawImage('.\\NitM\\relic\\relic_bat_soul_grey.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end
	

	if player_action_ID == 25 and player_morph == 1 then --alucard unmorph wolf
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorI)
		gui.drawImage('.\\NitM\\relic\\relic_wolf_soul_grey.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end


	if player_action_ID == 14 and player_morph == 1 then --alucard unmorph mist
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorC)
		gui.drawImage('.\\NitM\\relic\\relic_mist_form_grey.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end


	if player_action_ID == 9 and player_morph == 1 then --alucard unmorph bat
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorA)
		gui.drawImage('.\\NitM\\relic\\relic_bat_soul_grey.png', sPp[1]+5+2, sPp[2]+3, 14, 14, true)
		player_status_normal = false
	end

	if player_status_flag == 8 then --alucard is either poison or curse (or something else?)
	
		if player_status_poison_timer > 0 or player_status_poison_mult > 0 then --alucard is poison
			gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorD)
			if player_action_ID == 24 or player_action_ID == 7 or player_action_ID == 5 then
			else
				if player_orientation == 0 then --its right		
					gui.drawImage('.\\NitM\\player\\Alucard_right_poison.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
				else--its left
					gui.drawImage('.\\NitM\\player\\Alucard_left_poison.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
				end
			end
			player_status_normal = false
		end
		
		if player_status_curse_timer > 0 or player_status_curse_mult > 0 then --alucard is curse
			gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorE)
			if player_action_ID == 24 or player_action_ID == 7 or player_action_ID == 5 then
			else
				if player_orientation == 0 then --its right		
					gui.drawImage('.\\NitM\\player\\Alucard_right_curse.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
				else--its left
					gui.drawImage('.\\NitM\\player\\Alucard_left_curse.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
				end
			end
			player_status_normal = false
		end
	end

	if player_action_ID == 10 or player_action_ID == 16 then --alucard is taking damage10 or is dead16
--		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorZ)
		if player_orientation == 0 then --its right		
			gui.drawImage('.\\NitM\\player\\Alucard_right_red.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		else--its left
			gui.drawImage('.\\NitM\\player\\Alucard_left_red.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		end
		player_status_normal = false
	end


	if player_action_ID == 11 then--alucard is stone
		--stone A and B are set to 128 when alucard is stone
		--player_status_stoneA --player_status_stoneB
		-- print(player_status_stoneA.." B"..player_status_stoneB)
		gui.drawBox(script_position_status_box[1], script_position_status_box[2], script_position_status_box[3], script_position_status_box[4], script_position_status_box[5], colorV)
		if player_orientation == 0 then --its right		
			gui.drawImage('.\\NitM\\player\\Alucard_right_grey.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		else--its left
			gui.drawImage('.\\NitM\\player\\Alucard_left_grey.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		end
		player_status_normal = false
	end



	if player_status_normal == true then --ok alucard is neither damage, poison, curse, stone, bat, mist, wolf   (hes normal lol)
		if player_orientation == 0 then --its right
			gui.drawImage('.\\NitM\\player\\Alucard_right.png', sPp[1]+5, sPp[2]+2, 17, 18, true)
		else--its left
			gui.drawImage('.\\NitM\\player\\Alucard_left.png', sPp[1]+5, sPp[2]+2, 17, 18, true)	
		end
	end


end




	--ok lol, this need more work obviously....
	if player_character_ID == 1 then
	gui.drawImage('.\\NitM\\player\\Richter.png', sPp[1]+5, sPp[2]+2, 17, 19, true)
	end
	if player_character_ID == 2 then 
	gui.drawImage('.\\NitM\\player\\Maria.png', sPp[1]+5, sPp[2]+2, 17, 16, true) 
	end





end

local function playermonitor()
--	gui.drawBox(script_position_player_monitor[1], script_position_player_monitor[2], script_position_player_monitor[3], script_position_player_monitor[4], script_position_player_monitor[5], script_position_player_monitor[6])

local base_colorA = 0x00FF0000 --red
local base_colorB = 0x0000FF00 --green
local base_colorC = 0x000000FF --blue
local base_colorD = 0x00C010F0 --purple
local base_colorE = 0x00F0AF10 --orange
local base_colorF = 0x00646464 --grey
local base_colorG = 0x00FFFFFF --white
local base_colorH = 0x00000000 --black
local base_colorI = 0x00FFFF00 --yellow
local opacity = (math.cos(the_frame*math.pi/30)+1)/2
local opacity_alpha = math.ceil(0x99*opacity)*0x4000000
local colorA = base_colorC + opacity_alpha
local colorB = base_colorB + opacity_alpha
local colorC = base_colorC + opacity_alpha
local colorD = base_colorD + opacity_alpha
local colorE = base_colorE + opacity_alpha

	gui.drawBox(script_position_player_monitor[1], script_position_player_monitor[2], script_position_player_monitor[1]+90, script_position_player_monitor[4]-10, script_position_player_monitor[5], script_position_player_monitor[6])

	if player_action_ID ~= 0 then
	gui.drawBox(script_position_player_monitor[1], script_position_player_monitor[2], script_position_player_monitor[1]+90, script_position_player_monitor[4]-10, script_position_player_monitor[5], colorA)
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
		action_text = player_action_ID.." bat unmorph"
	elseif player_action_ID == 10 then
		action_text = player_action_ID.." hurt"
	elseif player_action_ID == 11 then
		action_text = player_action_ID.." stone"
	elseif player_action_ID == 12 then
		action_text = player_action_ID
	elseif player_action_ID == 13 then
		action_text = player_action_ID
	elseif player_action_ID == 14 then
		action_text = player_action_ID.." mist unmorph"
	elseif player_action_ID == 15 then
		action_text = player_action_ID
	elseif player_action_ID == 16 then
		action_text = player_action_ID.." dead"
	elseif player_action_ID == 18 then
		action_text = player_action_ID.." teleport"
	elseif player_action_ID == 19 then
		action_text = player_action_ID.." running"
	elseif player_action_ID == 24 then
		action_text = player_action_ID.." wolf"
	elseif player_action_ID == 25 then
		action_text = player_action_ID.." wolf unmorph"
	elseif player_action_ID == 32 then
		action_text = player_action_ID.." darkmeta"
	elseif player_action_ID == 33 then
		action_text = player_action_ID.." soulspirit"
	elseif player_action_ID == 34 then
		action_text = player_action_ID.." hellfire"
	elseif player_action_ID == 35 then
		action_text = player_action_ID.." tetraspirit"
	elseif player_action_ID == 37 then
		action_text = player_action_ID.." soulsteal"
	else
	action_text = player_action_ID
	end

end

	gui.drawText(pMp[1], pMp[2]-2, "Action "..action_text, pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])

	if player_ground == 0 then 
	gui.drawBox(script_position_player_monitor[1], script_position_player_monitor[2]+10, script_position_player_monitor[1]+32, script_position_player_monitor[2]+20, script_position_player_monitor[5], colorB)
	gui.drawText(pMp[1]+8, pMp[2]+8, "air", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	end
	if player_ground >= 1 then 
	gui.drawBox(script_position_player_monitor[1], script_position_player_monitor[2]+10, script_position_player_monitor[1]+32, script_position_player_monitor[2]+20, script_position_player_monitor[5], colorC)
	gui.drawText(pMp[1], pMp[2]+8, "ground", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	end

	
	gui.drawBox(script_position_player_monitor[1]+32, script_position_player_monitor[2]+10, script_position_player_monitor[1]+90, script_position_player_monitor[4], script_position_player_monitor[5], script_position_player_monitor[6])
	gui.drawText(pMp[1]+32, pMp[2]+8, "script "..player_script[0].." "..player_script[2].." "..player_script[4], pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	



	if player_status_poison_timer ~= 0 or player_status_poison_mult ~= 0 then
	poison_time_left = (player_status_poison_timer + (256*player_status_poison_mult))/60 
	poison_time_left = string.sub(poison_time_left, 1,5)
	gui.drawBox(script_position_player_monitor[1]+145, script_position_player_monitor[2], script_position_player_monitor[1]+180, script_position_player_monitor[2]+10, script_position_player_monitor[5], colorD)
	gui.drawText(pMp[1]+147, pMp[2]-2, poison_time_left.."s", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	else
	gui.drawBox(script_position_player_monitor[1]+145, script_position_player_monitor[2], script_position_player_monitor[1]+180, script_position_player_monitor[2]+10, script_position_player_monitor[5], script_position_player_monitor[6])
	gui.drawText(pMp[1]+147, pMp[2]-2, "poison", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	end

	if player_status_curse_timer ~= 0 or player_status_curse_mult ~= 0 then
	curse_time_left = (player_status_curse_timer + (256*player_status_curse_mult))/60 
	curse_time_left = string.sub(curse_time_left, 1,5)
	gui.drawBox(script_position_player_monitor[1]+145, script_position_player_monitor[2]+10, script_position_player_monitor[1]+180, script_position_player_monitor[2]+20, script_position_player_monitor[5], colorE)
	gui.drawText(pMp[1]+147, pMp[2]+8, curse_time_left.."s", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])		
	else
	gui.drawBox(script_position_player_monitor[1]+145, script_position_player_monitor[2]+10, script_position_player_monitor[1]+180, script_position_player_monitor[2]+20, script_position_player_monitor[5], script_position_player_monitor[6])
	gui.drawText(pMp[1]+149, pMp[2]+8, "curse", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	end


	gui.drawBox(script_position_player_monitor[1]+180, script_position_player_monitor[2], script_position_player_monitor[1]+225, script_position_player_monitor[2]+10, script_position_player_monitor[5], script_position_player_monitor[6])
	gui.drawText(pMp[1]+180, pMp[2]-2, "status "..player_status_flag, pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	


	-- gui.drawBox(script_position_player_monitor[1]+117, script_position_player_monitor[2], script_position_player_monitor[1]+154, script_position_player_monitor[4], script_position_player_monitor[5], script_position_player_monitor[6])

	-- gui.drawBox(script_position_player_monitor[1]+80, script_position_player_monitor[2], script_position_player_monitor[1]+117, script_position_player_monitor[4], script_position_player_monitor[5], script_position_player_monitor[6])
	-- if player_air >= 1 then
	-- gui.drawBox(script_position_player_monitor[1]+80, script_position_player_monitor[2], script_position_player_monitor[1]+117, script_position_player_monitor[4], script_position_player_monitor[5], colorA)
	-- gui.drawImage(on_png, pMp[1]+81, pMp[2]+2, X_but, Y_but, true)
	-- gui.drawText(pMp[1]+84, pMp[2]+8, "air "..player_air, pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	-- elseif player_air == 0 or player_air == 128 then
	-- gui.drawText(pMp[1]+84, pMp[2]+8, "air", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	-- gui.drawImage(off_png, pMp[1]+81, pMp[2]+2, X_but, Y_but, true)	
	-- end



	-- gui.drawBox(script_position_player_monitor[1]+189, script_position_player_monitor[2], script_position_player_monitor[1]+226, script_position_player_monitor[4], script_position_player_monitor[5], script_position_player_monitor[6])
	-- if game_is_loaded == 1 then	
	-- gui.drawImage(off_png, pMp[1]+190, pMp[2]+2, X_but, Y_but, true)		
	-- gui.drawText(pMp[1]+191, pMp[2]+8, "loading", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	-- else
	-- gui.drawBox(script_position_player_monitor[1]+189, script_position_player_monitor[2], script_position_player_monitor[1]+226, script_position_player_monitor[4], script_position_player_monitor[5], colorA)
	-- gui.drawImage(on_png, pMp[1]+190, pMp[2]+2, X_but, Y_but, true)		
	-- gui.drawText(pMp[1]+191, pMp[2]+8, "loading", pMp[4], pMp[5], pMp[6], pMp[7], pMp[8], pMp[9], pMp[10])	
	-- end

end

local function playerstatB()
	gui.drawBox(script_position_player_statB[1], script_position_player_statB[2], script_position_player_statB[3], script_position_player_statB[4], script_position_player_statB[5], script_position_player_statB[6])

--	gui.drawText(pBp[1], pBp[2], "yo", pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1], pBp[2], "Heart:"..stat_heart.."/"..stat_heart_max, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])


	gui.drawText(pBp[1], pBp[2] + 9, "Level:"..stat_level, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1], pBp[2] + 18, "Exp:"..stat_exp, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1], pBp[2] + 27, "Beat:"..stat_beat, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])


--	gui.drawBox(drawAreaForGame[1] + 160, 370, 490, drawAreaForGame[5] + 170, nil, nil)


	gui.drawText(pBp[1] + 68, pBp[2], "Gold:"..stat_gold, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1] + 68, pBp[2] + 9, "Room:"..stat_rooms, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1] + 68, pBp[2] + 27, "DEF:"..stat_def, pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])

	gui.drawText(pBp[1] + 125, pBp[2], "STR:"..stat_str.."|"..stat_str_mod..":"..(stat_str + stat_str_mod), pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1] + 125, pBp[2] + 9, "CON:"..stat_con.."|"..stat_con_mod..":"..(stat_con + stat_con_mod), pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1] + 125, pBp[2] + 18, "INT:"..stat_int.."|"..stat_int_mod..":"..(stat_int + stat_int_mod), pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
	gui.drawText(pBp[1] + 125, pBp[2] + 27, "LCK:"..stat_lck.."|"..stat_lck_mod..":"..(stat_lck + stat_lck_mod), pBp[4], pBp[5], pBp[6], pBp[7], pBp[8], pBp[9], pBp[10])
end

--------------------------------
local function vpad()
-- ripped from bizhawk lua, only 1P and saturn
gui.drawBox(script_vpad_box[1], script_vpad_box[2], script_vpad_box[3], script_vpad_box[4], script_vpad_box[5], script_vpad_box[6])
gui.drawBox(script_vpad_box[3], script_vpad_box[2], script_vpad_box[3]+65, script_vpad_box[4], script_vpad_box[5], nil)--extra fill empty space
local cyp = 0xC0FF0000 -- Button Yup
local cnp = 0xC0000000 -- Button Not
local cbg = 0xC0FFFFFF -- Background
local c
if movie.mode() == 'PLAY' then c = movie.getinput(emu.framecount() - 1, 1)
		else c = joypad.get(1) end
			gui.drawRectangle(padx+ 2,pady+ 4,41,12,cbg,cbg)
			gui.drawRectangle(padx+ 3,pady+ 2,39, 1,cbg,cbg)
			gui.drawLine(padx+ 1,pady+ 6,padx+ 1,pady+16,cbg)
			gui.drawLine(padx+ 0,pady+10,padx+ 0,pady+16,cbg)
			gui.drawLine(padx+44,pady+ 6,padx+44,pady+16,cbg)
			gui.drawLine(padx+45,pady+10,padx+45,pady+16,cbg)
			gui.drawLine(padx+ 1,pady+17,padx+19,pady+17,cbg)
			gui.drawLine(padx+26,pady+17,padx+44,pady+17,cbg)
			gui.drawLine(padx+ 2,pady+18,padx+15,pady+18,cbg)
			gui.drawLine(padx+30,pady+18,padx+43,pady+18,cbg)
			gui.drawLine(padx+ 4,pady+19,padx+ 9,pady+19,cbg)
			gui.drawLine(padx+36,pady+19,padx+41,pady+19,cbg)
			gui.drawLine(padx+ 4,pady+ 1,padx+19,pady+ 1,cbg)
			gui.drawLine(padx+ 6,pady+ 0,padx+15,pady+ 0,cbg)
			gui.drawLine(padx+26,pady+ 1,padx+41,pady+ 1,cbg)
			gui.drawLine(padx+30,pady+ 0,padx+39,pady+ 0,cbg)

			gui.drawRectangle(padx+ 8,pady+ 4, 3, 3,c['Up']    and cyp or cnp,c['Up']    and cyp or cnp)
			gui.drawRectangle(padx+ 8,pady+12, 3, 3,c['Down']  and cyp or cnp,c['Down']  and cyp or cnp)
			gui.drawRectangle(padx+ 4,pady+ 8, 3, 3,c['Left']  and cyp or cnp,c['Left']  and cyp or cnp)
			gui.drawRectangle(padx+12,pady+ 8, 3, 3,c['Right'] and cyp or cnp,c['Right'] and cyp or cnp)
			gui.drawRectangle(padx+24,pady+ 8, 1, 1,c['X']     and cyp or cnp,c['X']     and cyp or cnp)
			gui.drawRectangle(padx+31,pady+ 6, 1, 1,c['Y']     and cyp or cnp,c['Y']     and cyp or cnp)
			gui.drawRectangle(padx+37,pady+ 4, 1, 1,c['Z']     and cyp or cnp,c['Z']     and cyp or cnp)
			gui.drawRectangle(padx+19,pady+12, 3, 1,c['Start'] and cyp or cnp,c['Start'] and cyp or cnp)
			gui.drawRectangle(padx+ 8,pady+ 0, 3, 1,c['L']     and cyp or cnp,c['L']     and cyp or cnp)
			gui.drawRectangle(padx+34,pady+ 0, 3, 1,c['R']     and cyp or cnp,c['R']     and cyp or cnp)

			gui.drawEllipse(padx+26,pady+11, 3, 3,c['A'] and cyp or cnp,c['A'] and cyp or cnp)
			gui.drawEllipse(padx+32,pady+ 9, 3, 3,c['B'] and cyp or cnp,c['B'] and cyp or cnp)
			gui.drawEllipse(padx+38,pady+ 7, 3, 3,c['C'] and cyp or cnp,c['C'] and cyp or cnp)
end
--------------------------------
function timeattack()
gui.drawBox(script_timeattack_box[1], script_timeattack_box[2], script_timeattack_box[3], script_timeattack_box[4], script_timeattack_box[5], script_timeattack_box[6])

for i = 0, 108, 4 do
	local byteA = time_attack_data[0+i]
	local byteB = time_attack_data[1+i]
	local byteC = time_attack_data[2+i]
	local byteD = time_attack_data[3+i]

	local textta = time_attack_text[i/4+1]
	local ln = i/4+1

	if byteA == 0 and byteB == 0 and byteC == 0 and byteD == 0 then --then the event didnt happen
		time_attack_data_time[ln] = 999999
		time_attack_data_time[ln+28] = "99:99:99 -------------------" --just dumb way of saying didnt happen, like in game, maybe something better?
	else -- one of the byte is not 0, we have to find now what data it use, we can ignore byteB as its always 0 no matter what
		if byteA == 0 and byteC > 0 and byteD == 0 then --this is a data with only the third byte, it can be read directly, its only seconds
			if byteC > 100 and byteC < 200 then --its over 100 but never can be over 255, so we just truncate one zero from the time display
			textta = "00:01:"..(byteC-100).." "..textta
			time_attack_data_time[ln] = byteC
			time_attack_data_time[ln+28] = textta
			elseif byteC > 200 then
			textta = "00:02:"..(byteC-200).." "..textta
			time_attack_data_time[ln] = byteC
			time_attack_data_time[ln+28] = textta
			elseif byteC > 0 and byteC < 10 then
			textta = "00:00:0"..(byteC).." "..textta
			time_attack_data_time[ln] = byteC
			time_attack_data_time[ln+28] = textta
			else
			textta = "00:00:"..(byteC).." "..textta
			time_attack_data_time[ln] = byteC
			time_attack_data_time[ln+28] = textta
			end
		end
		if byteA == 0 and byteC > 0 and byteD > 0 then --this is a data with third byte (seconds) AND fourth(minutes)
			local ctime = (256*byteD)+byteC --this is the real result, but have to translate into 00:00:00, max value would 65535+255 (?)
			if ctime > 100 and ctime < 1000 then
			local textta1 = ctime/100
			textta = "00:0"..textta1.." "..textta
			time_attack_data_time[ln] = ctime
			time_attack_data_time[ln+28] = textta
			elseif ctime > 999 and ctime < 10000 then
			local textta1 = string.sub(ctime, 1,2)
			local textta2 = string.sub(ctime, 3,4)
			textta = "00:"..textta1..":"..textta2.." "..textta
			time_attack_data_time[ln] = ctime
			time_attack_data_time[ln+28] = textta
			elseif ctime > 9999 and ctime < 100000 then
			local textta1 = string.sub(ctime, 1,1)
			local textta2 = string.sub(ctime, 2,3)
			local textta3 = string.sub(ctime, 4,5)
			textta = "0"..textta1..":"..textta2..":"..textta3.." "..textta
			time_attack_data_time[ln] = ctime
			time_attack_data_time[ln+28] = textta
			else --this shouldnt happen, but just in case...
			textta = ""..ctime.." "..textta
			time_attack_data_time[ln] = ctime
			time_attack_data_time[ln+28] = textta
			end
		end
		if byteA > 0 and byteC > 0 and byteD > 0 then --this is a data with all 3 bytes (seconds)(minutes)(hours)
			local ctime = byteA*(256*byteD)+byteC --this is the real result, but have to translate into 00:00:00, max value game will read is 999999
			if ctime < 100000 then
			local textta1 = string.sub(ctime, 1,1)
			local textta2 = string.sub(ctime, 2,3)
			local textta3 = string.sub(ctime, 4,5)
			textta = "0"..textta1..":"..textta2..":"..textta3.." "..textta
			time_attack_data_time[ln] = ctime
			time_attack_data_time[ln+28] = textta
			else
			local textta1 = string.sub(ctime, 1,2)
			local textta2 = string.sub(ctime, 3,4)
			local textta3 = string.sub(ctime, 5,6)
			textta = textta1..":"..textta2..":"..textta3.." "..textta
			time_attack_data_time[ln] = ctime
			time_attack_data_time[ln+28] = textta
			end
		end
	end
end

time_attack_data_sort = {}
for z = 1,28,1 do 
	table.insert(time_attack_data_sort, z, time_attack_data_time[z+28])	
end
table.sort(time_attack_data_sort)

for i = 0, 108, 4 do
	if i >= 0 and i < 54 then
		local lnz = i/4+1
		gui.drawText(tAp[1], tAp[2]+i*3-50, lnz.." "..time_attack_data_sort[i/4+1], tAp[4], tAp[5], tAp[6], tAp[7], tAp[8], tAp[9], tAp[10])
	else
		local lnz = i/4+1
		gui.drawText(tAp[1]+107, tAp[2]-218+(i*3), lnz.." "..time_attack_data_sort[i/4+1], tAp[4], tAp[5], tAp[6], tAp[7], tAp[8], tAp[9], tAp[10])
	end
end

biz_size = client.getwindowsize()
client.setwindowsize(2)
gui.clearImageCache()
gui.DrawFinish()
client.screenshot('.\\NitM\\timeattack.png')
client.setwindowsize(biz_size)

script_timeattack = false
wait = 10


end
--------------------------------
local function gear()
--notes: empty accID 58, empty capeID 48, empty armorID 0, empty headID 26, empty handsID 0

gui.drawBox(script_gear_box[1], script_gear_box[2]-5, script_gear_box[3], script_gear_box[4], script_gear_box[5], script_gear_box[6])


	gui.drawImage(".\\NitM\\hand\\"..gear_data[0]..".png", script_gear_box[1]+7, script_gear_box[2]-3, 14, 14, true)
	gui.drawImage(".\\NitM\\hand\\"..gear_data[4]..".png", script_gear_box[1]+7, script_gear_box[2]+11, 14, 14, true)
	gui.drawImage(".\\NitM\\hand\\"..gear_data[8]..".png", script_gear_box[1]+7, script_gear_box[2]+25, 14, 14, true)
	gui.drawImage(".\\NitM\\gear\\"..gear_data[12]..".png", script_gear_box[1]+7, script_gear_box[2]+40, 14, 14, true)
	gui.drawImage(".\\NitM\\gear\\"..gear_data[16]..".png", script_gear_box[1]+7, script_gear_box[2]+54, 14, 14, true)
	gui.drawImage(".\\NitM\\gear\\"..gear_data[20]..".png", script_gear_box[1]+7, script_gear_box[2]+68, 14, 14, true)
	gui.drawImage(".\\NitM\\gear\\"..gear_data[24]..".png", script_gear_box[1]+7, script_gear_box[2]+82, 14, 14, true)
	gui.drawImage(".\\NitM\\gear\\"..gear_data[28]..".png", script_gear_box[1]+7, script_gear_box[2]+96, 14, 14, true)



	gui.drawText(eGp[1]+3, eGp[2]-3, handID[2+(gear_data[0]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+12, handID[2+(gear_data[4]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+26, handID[2+(gear_data[8]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+40, gearID[2+(gear_data[12]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+54, gearID[2+(gear_data[16]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+68, gearID[2+(gear_data[20]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+81, gearID[2+(gear_data[24]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])
	gui.drawText(eGp[1]+3, eGp[2]+95, gearID[2+(gear_data[28]*2)], eGp[4], eGp[5], eGp[6], eGp[7], eGp[8], eGp[9], eGp[10])

biz_size = client.getwindowsize()
client.setwindowsize(2)
gui.clearImageCache()
gui.DrawFinish()
client.screenshot('.\\NitM\\gear.png')
client.setwindowsize(biz_size)

script_gear = false
wait = 10


end
--------------------------------
local function relic()
	gui.drawBox(script_relic_box[1], script_relic_box[2], script_relic_box[3], script_relic_box[4], script_relic_box[5], script_relic_box[6])

if relic_data[32] == nil then --then the table contain only the raw relic data values, we want to align this with the string for pics
	for i = 1, 32, 1 do table.insert(relic_data, i+31, ".\\NitM\\relic\\"..relic_text[i]..".png") end --insert the "text" data
	for i = 1, 32, 1 do table.insert(relic_data, i+63, ".\\NitM\\relic\\"..relic_text[i].."_grey.png") end --im not sure why but have to be seperate
end

for i = 1, 31, 2 do--we want to make 4 sets of 8 relics icon, but we want to invert the order, so we do 2 for
	if i < 16 then Xoffset_draw_relic = 0 Yoffset_draw_relic = 0 end
	if i > 15 then Xoffset_draw_relic = 0 Yoffset_draw_relic = 0 end
	if relic_data[i] == 3 then --the relic is on, draw on button and the relic
		gui.drawImage(on_png, X_draw_relic+16+Xoffset_draw_relic, Y_draw_relic+1+i*7-Yoffset_draw_relic, X_but, Y_but, true)
		gui.drawImage(relic_data[i+32], X_draw_relic+Xoffset_draw_relic, Y_draw_relic+i*7-Yoffset_draw_relic, sizeX_relic_png, sizeY_relic_png, true)
	elseif relic_data[i] == 1 then --the relic is off, draw off button and the relic
		gui.drawImage(off_png, X_draw_relic+16+Xoffset_draw_relic, Y_draw_relic+1+i*7-Yoffset_draw_relic, X_but, Y_but, true)
		gui.drawImage(relic_data[i+32], X_draw_relic+Xoffset_draw_relic, Y_draw_relic+i*7-Yoffset_draw_relic, sizeX_relic_png, sizeY_relic_png, true)
	else --its 0 so you dont have the relic ... draw greyed relic and off button
		gui.drawImage(off_png, X_draw_relic+16+Xoffset_draw_relic, Y_draw_relic+1+i*7-Yoffset_draw_relic, X_but, Y_but, true)
		gui.drawImage(relic_data[i+64], X_draw_relic+Xoffset_draw_relic, Y_draw_relic+i*7-Yoffset_draw_relic, sizeX_relic_png, sizeY_relic_png, true)
	end
end

for i = 0, 31, 2 do
	if i < 16 then Xoffset_draw_relic = 55 Yoffset_draw_relic = 0 end
	if i > 15 then Xoffset_draw_relic = 55 Yoffset_draw_relic = 0 end
	if relic_data[i] == 3 then --the relic is on, draw on button and the relic
		gui.drawImage(on_png, X_draw_relic+16+Xoffset_draw_relic, Y_draw_relic+i*7+8-Yoffset_draw_relic, X_but, Y_but, true)
		gui.drawImage(relic_data[i+32], X_draw_relic+Xoffset_draw_relic, Y_draw_relic+i*7+7-Yoffset_draw_relic, sizeX_relic_png, sizeY_relic_png, true)
	elseif relic_data[i] == 1 then --the relic is off, draw off button and the relic
		gui.drawImage(off_png, X_draw_relic+16+Xoffset_draw_relic, Y_draw_relic+i*7+8-Yoffset_draw_relic, X_but, Y_but, true)
		gui.drawImage(relic_data[i+32], X_draw_relic+Xoffset_draw_relic, Y_draw_relic+i*7+7-Yoffset_draw_relic, sizeX_relic_png, sizeY_relic_png, true)
	else --its 0 so you dont have the relic ... draw greyed relic and off button
		gui.drawImage(off_png, X_draw_relic+16+Xoffset_draw_relic, Y_draw_relic+i*7+8-Yoffset_draw_relic, X_but, Y_but, true)
		gui.drawImage(relic_data[i+64], X_draw_relic+Xoffset_draw_relic, Y_draw_relic+i*7+7-Yoffset_draw_relic, sizeX_relic_png, sizeY_relic_png, true)
	end
end

biz_size = client.getwindowsize()
client.setwindowsize(2)
gui.clearImageCache()
gui.DrawFinish()
client.screenshot('.\\NitM\\relic.png')
client.setwindowsize(biz_size)

script_relic = false
wait = 10
end
--------------------------------
local function rng()
	gui.drawBox(script_rng_box[1], script_rng_box[2], script_rng_box[3], script_rng_box[4]-5, script_rng_box[5], script_rng_box[6])
	gui.drawText(eRp[1], eRp[2]-2, "RNG", eRp[4], eRp[5],  eRp[6], eRp[7], eRp[8], eRp[9], eRp[10])
	gui.drawText(eRp[1]+30, eRp[2]-2, ""..(bizstring.hex(state_rng)), eRp[4], eRp[5],  eRp[6], eRp[7], eRp[8], eRp[9], eRp[10])
end
--------------------------------
function minimap()
local iteration = 1
mapData = {}
for i = 0, 751, 2 do
	mapData[iteration] = makeMap(i)
	iteration = iteration + 1
end
displayMap(mapData)
end
--------------------------------
function makeMap(i)
    local data = {}
    data[1] = 38 + i % 16 * 16
	data[2] = 22 + i % 16 * 16
	data[3] = 5 + 4 * math.floor(i / 16)
	data[4] = map_data_A[i]
	data[5] = map_data_A[1 + i]
	return data
end
--------------------------------
function displayMap(mapData)
--special thanks to Really_Tall, yoshi ect...
gui.drawBox(script_map_box[1], script_map_box[2], script_map_box[3], script_map_box[4], script_map_box[5], script_map_box[6])
gui.drawImage('.\\NitM\\hud\\map256x189.png', 10, 5, 256, 189, true) 
gui.drawImage('.\\NitM\\hud\\button_map_on.png', 2, 1, 14, 13, true)

if script_map_mode == "RG" then -- its the red/green mode
	square_sizeX = 3
	square_sizeY = 3
	if script_map_mode_delta == 0 then
		square_line_On = 0x2500FF00
		square_line_Off = 0x25FF0000
		gui.drawImage('.\\NitM\\hud\\button_delta_rg_0.png', 5, 27, 8, 8, true)
	elseif script_map_mode_delta == 1 then
		square_line_On = 0x4500FF00
		square_line_Off = 0x45FF0000	
		gui.drawImage('.\\NitM\\hud\\button_delta_rg_1.png', 5, 27, 8, 8, true)
	elseif script_map_mode_delta == 2 then
		square_line_On = 0x6500FF00
		square_line_Off = 0x65FF0000	
		gui.drawImage('.\\NitM\\hud\\button_delta_rg_2.png', 5, 27, 8, 8, true)
	elseif script_map_mode_delta == 3 then
		square_line_On = 0x9500FF00
		square_line_Off = 0x95FF0000	
		gui.drawImage('.\\NitM\\hud\\button_delta_rg_3.png', 5, 27, 8, 8, true)
	end
	gui.drawImage('.\\NitM\\hud\\button_map_RG.png', 5, 15, 8, 8, true)
elseif script_map_mode == "GT" then -- its the grey/transparent mode
	square_sizeX = 3
	square_sizeY = 3
	if script_map_mode_delta == 0 then
		square_line_Off = 0x77646464
		gui.drawImage('.\\NitM\\hud\\button_delta_grey_0.png', 5, 27, 8, 8, true)
	elseif script_map_mode_delta == 1 then
		square_line_Off = 0x97646464
		gui.drawImage('.\\NitM\\hud\\button_delta_grey_1.png', 5, 27, 8, 8, true)
	elseif script_map_mode_delta == 2 then
		square_line_Off = 0xB7646464
		gui.drawImage('.\\NitM\\hud\\button_delta_grey_2.png', 5, 27, 8, 8, true)
	elseif script_map_mode_delta == 3 then
		square_line_Off = 0xD7646464
		gui.drawImage('.\\NitM\\hud\\button_delta_grey_3.png', 5, 27, 8, 8, true)
	end
	square_line_On = 0x00000000
	gui.drawImage('.\\NitM\\hud\\button_map_GT.png', 5, 15, 8, 8, true)
elseif  script_map_mode == "BT" then
--its BT (black/transparent) so we want them a bit bigger so that it will cover the outside layer of "walls" and emulate the game
	square_line_On = 0x00000000
	square_line_Off = 0xFF000000
	square_sizeX = 4
	square_sizeY = 4
	gui.drawImage('.\\NitM\\hud\\button_map_BT.png', 5, 15, 8, 8, true)
elseif  script_map_mode == "ZZ" then
--its ZZ mode we want to draw all transparent just because the user turned off progression display and want to see the map untouched
	square_line_On = 0x00000000
	square_line_Off = 0x00000000
	square_sizeX = 0
	square_sizeY = 0
	gui.drawImage('.\\NitM\\hud\\button_map_off.png', 2, 1, 14, 13, true)
--	gui.drawImage('.\\NitM\\hud\\button_map_ZZ.png', 5, 15, 8, 8, true)
end
if cursor_color_invert == true then --we want to invert color logic
	local newval
	newval = square_line_Off
	square_line_Off = square_line_On
	square_line_On = newval
end
local square_fill_Off = square_line_Off
local square_fill_On = square_line_On
--local square_line_T = 0x00000000
--local square_fill_T = square_line_T
for mapIndex = 1, #mapData do
    local baseX = {[0] = mapData[mapIndex][2], [1] = mapData[mapIndex][1]}
    local baseY = mapData[mapIndex][3]
    local baseMapSquare = {[0] = mapData[mapIndex][5], [1] = mapData[mapIndex][4]}
    for mapSubIndex = 7, 0, -1 do
		bitIndex = mapSubIndex % 4
		baseIndex = (mapSubIndex - bitIndex) / 4
        if bit.check(baseMapSquare[baseIndex], 2 * bitIndex) then -- if the current bit(sqaure) is set ON
            gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_On, square_fill_On)
        elseif bit.check(baseMapSquare[baseIndex], 2 * bitIndex + 1) then --else if the next bit is set, and the current bit wasn't set, librarian-map-square
            --gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_T, square_fill_T)
				gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
        else  -- else the bit (square) is OFF, and if in castle bounds (first_castle_data) we want to draw the whatever color we use
			if castle_A_area[320 + ((mapIndex - 1) * 2 + baseIndex + 1) * 4 - bitIndex - 1] then
				gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
			end
        end
    end
end
--------------------------------



biz_size = client.getwindowsize()
client.setwindowsize(2)
gui.clearImageCache()
gui.DrawFinish()
client.screenshot('.\\NitM\\map.png')
client.setwindowsize(biz_size)

script_map = false
wait = 10

end

--------------------------------
function familiar()


gui.drawBox(script_familiar_box[1], script_familiar_box[2], script_familiar_box[3], script_familiar_box[4], script_familiar_box[5], script_familiar_box[6])

current_familiar = "- - - - -"

for i = 1, 8, 1 do 
	if i ~= 7 then
--		print("r"..relic_data[i+17].." l"..familiar_data_level[i].." t"..familiar_text[i])
		if relic_data[i+17] == 0 then --we dont have the relic, its grey and stop symouse_Bol
			if i ~= 8 then
				gui.drawText(fWp[1]+28, fWp[2]+7+(24*i)-24, "Level - -", fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])
				gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey_no.png", fWp[1]+2, fWp[2]+(24*i)-23, fWp[11], fWp[12], true)
			else
				gui.drawText(fWp[1]+28, fWp[2]+7+(24*7)-24, "Level - -", fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])
				gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey_no.png", fWp[1]+2, fWp[2]+(24*7)-23, fWp[11], fWp[12], true)				
			end
		elseif relic_data[i+17] == 1 then --its off so its grey
			if i ~= 8 then
				gui.drawText(fWp[1]+28, fWp[2]+7+(24*i)-24, "Level "..familiar_data_level[i], fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])
				gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey.png", fWp[1]+2, fWp[2]+(24*i)-23, fWp[11], fWp[12], true)				
			else
				gui.drawText(fWp[1]+28, fWp[2]+7+(24*7)-24, "Level "..familiar_data_level[i], fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])
				gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey.png", fWp[1]+2, fWp[2]+(24*7)-23, fWp[11], fWp[12], true)				
			end
		elseif relic_data[i+17] == 3 then --its on so its colored
				current_familiar = ""..familiar_text[i]
			if i ~= 8 then
				gui.drawText(fWp[1]+28, fWp[2]+7+(24*i)-24, "Level "..familiar_data_level[i], fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])
				gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i]..".png", fWp[1]+2, fWp[2]+(24*i)-23, fWp[11], fWp[12], true)				
			else				
				gui.drawText(fWp[1]+28, fWp[2]+7+(24*7)-24, "Level "..familiar_data_level[i], fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])
				gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i]..".png", fWp[1]+2, fWp[2]+(24*7)-23, fWp[11], fWp[12], true)

			end
		end
	end
end

if relic_data[19] == 0 and relic_data[18] == 0 and relic_data[20] == 0 and relic_data[21] == 0 and relic_data[22] == 0 and 
relic_data[23] == 0 and relic_data[25] == 0 then --then alucard has no familiar at all
	current_familiar = "- - - - -"
end
if relic_data[19] == 1 and relic_data[18] == 1 and relic_data[20] == 1 and relic_data[21] == 1 and relic_data[22] == 1 and 
relic_data[23] == 1 and relic_data[25] == 1 then --then its either richter/maria or alucard has no familiar in use
	current_familiar = "- - - - -"
end

gui.drawText(fWp[1]+18, fWp[2]+165, "now "..current_familiar, fWp[4], fWp[5], fWp[6], fWp[7], fWp[8], fWp[9], fWp[10])



biz_size = client.getwindowsize()
client.setwindowsize(2)
gui.clearImageCache()
gui.DrawFinish()
client.screenshot('.\\NitM\\familiar.png')
client.setwindowsize(biz_size)
script_familiar = false
wait = 10


end


function draw_map_cursor()

 if theroomX >= 1 and theroomY >= 1 then
--Zcolor[25]  Zcolor[17]
--x265 y 185 bottom right
--top right of the map is x265,y3 13 23 33 ....
--top left of the map is x5,y3 13 23 33 ....

if cursor_player == true then
	if player_character_ID == 0 then
		gui.drawImage('.\\NitM\\hud\\button_alucard_on.png', 5, 45, 8, 8, true)
	elseif player_character_ID == 1 then
		gui.drawImage('.\\NitM\\hud\\button_richter_on.png', 5, 45, 8, 8, true)
	elseif player_character_ID == 2 then
		gui.drawImage('.\\NitM\\hud\\button_maria_on.png', 5, 45, 8, 8, true)
	end
elseif cursor_player == false then
	gui.drawImage('.\\NitM\\hud\\button_player_off.png', 5, 45, 8, 8, true)
end

if cursor_player == true and cursor_player_color == 1 then
if cursor_player_speed == 0 then 
CPcolor = 0xFFFF6600 
gui.drawImage('.\\NitM\\hud\\button_speed_0.png', 5, 69, 8, 8, true)
elseif cursor_player_speed == 1 then
CPcolor = Zcolor[43] 
gui.drawImage('.\\NitM\\hud\\button_speed_1.png', 5, 69, 8, 8, true)
if wait >= 0 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7, 6, 6, true)
end
elseif cursor_player_speed == 2 then
CPcolor = Zcolor[42] 
gui.drawImage('.\\NitM\\hud\\button_speed_2.png', 5, 69, 8, 8, true)
if wait >= 10 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7, 6, 6, true)
end
elseif cursor_player_speed == 3 then
CPcolor = Zcolor[41] 
gui.drawImage('.\\NitM\\hud\\button_speed_3.png', 5, 69, 8, 8, true)
if wait >= 15 and wait <= 30 or wait >= 40 and wait <= 55 then
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7, 6, 6, true)
end
end
gui.drawRectangle(theroomX + 10 , theroomY + 5, 4, 4, 0xFFFF6600, CPcolor)
gui.drawRectangle((room_X_min_grid * 4) + 10, (room_Y_max_grid * 4)-16+1, (room_X_size_grid * 4), (room_Y_size_grid * 4), CPcolor, nil)
gui.drawImage('.\\NitM\\hud\\button_color_orange.png', 5, 57, 8, 8, true)



elseif cursor_player == true and cursor_player_color == 2 then
if cursor_player_speed == 0 then 
CPcolor = 0xFF00FFFF 
gui.drawImage('.\\NitM\\hud\\button_speed_0.png', 5, 69, 8, 8, true)
elseif cursor_player_speed == 1 then
CPcolor = Zcolor[19] 
gui.drawImage('.\\NitM\\hud\\button_speed_1.png', 5, 69, 8, 8, true)
if wait >= 0 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7, 6, 6, true)
end
elseif cursor_player_speed == 2 then
CPcolor = Zcolor[18] 
gui.drawImage('.\\NitM\\hud\\button_speed_2.png', 5, 69, 8, 8, true)
if wait >= 10 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7, 6, 6, true)
end
elseif cursor_player_speed == 3 then
CPcolor = Zcolor[17] 
gui.drawImage('.\\NitM\\hud\\button_speed_3.png', 5, 69, 8, 8, true)
if wait >= 15 and wait <= 30 or wait >= 40 and wait <= 55 then
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7, 6, 6, true)
end
end
gui.drawRectangle(theroomX + 10 , theroomY + 5, 4, 4, 0xFF00FFFF, CPcolor)
gui.drawRectangle((room_X_min_grid * 4) + 10, (room_Y_max_grid * 4)-16+1, (room_X_size_grid * 4), (room_Y_size_grid * 4), CPcolor, nil)
gui.drawImage('.\\NitM\\hud\\button_color_cyan.png', 5, 57, 8, 8, true)

elseif cursor_player == false then

end

end

--trail, maybe I should check player cursor is on... or not...im not sure if its a seperate feature or not... guess it is for now
if cursor_trail == true and #trail_data ~= nil then

	for i = 1, #trail_data/3, 1 do
		if trail_data[(i*3)] ~= room_grid_Y or trail_data[(i*3)-1] ~= room_grid_X  then
			gui.drawRectangle( 10+trail_data[(i*3)-1]*4, 5+trail_data[(i*3)]*4-20, 4, 4, Zcolor[wait+i], Zcolor[wait-i])
		end
	end
	for i = 1, #trail_data/6, 1 do
		if trail_data[(i*3)] ~= room_grid_Y and trail_data[(i*3)-1] ~= room_grid_X  then
			gui.drawRectangle( 10+trail_data[(i*3)-1]*4, 5+trail_data[(i*3)]*4-20, 4, 4, Zcolor[i+2], Zcolor[i-1])
		end
	end
	for i = 2, #trail_data/3, 2 do
		if trail_data[(i*3)] ~= room_grid_Y and trail_data[(i*3)-1] ~= room_grid_X  then
			gui.drawRectangle( 10+trail_data[(i*3)-1]*4, 5+trail_data[(i*3)]*4-20, 4, 4, Zcolor[wait+i], Zcolor[wait-3])
		end
	end
	for i = 1, #trail_data/6, 3 do
		if trail_data[(i*3)] ~= room_grid_Y and trail_data[(i*3)-1] ~= room_grid_X  then
			gui.drawRectangle( 10+trail_data[(i*3)-1]*4, 5+trail_data[(i*3)]*4-20, 4, 4, Zcolor[wait+3], Zcolor[wait*i])
		end
	end
	gui.drawImage('.\\NitM\\hud\\button_trail_on.png', 5, 81, 8, 8, true)
elseif cursor_trail == false then
	gui.drawImage('.\\NitM\\hud\\button_trail_off.png', 5, 81, 8, 8, true)
end
----boss, A is the color if data = 0 (player dont have the relic) B is the color if the player has the relic (1 or 3, >0)
if cursor_boss == true then
	if cursor_boss_color == 1 then
		if cursor_boss_speed == 0 then CBcolorA = 0xFFFF0000 CBcolorB = 0xFF00FF00 --red false green true
		elseif cursor_boss_speed == 1 then CBcolorA = Zcolor[4] CBcolorB = Zcolor[12] 
		elseif cursor_boss_speed == 2 then CBcolorA = Zcolor[3] CBcolorB = Zcolor[11] 
		elseif cursor_boss_speed == 3 then CBcolorA = Zcolor[2] CBcolorB = Zcolor[10] 
		elseif cursor_boss_speed == 4 then CBcolorA = Zcolor[1] CBcolorB = Zcolor[9] 
		end
		gui.drawImage('.\\NitM\\hud\\button_color_RG.png', 5, 112, 8, 8, true)
	elseif cursor_boss_color == 2 then --orange false cyan true
		if cursor_boss_speed == 0 then CBcolorA = 0xFFFF6600 CBcolorB = 0xFF00FFFF 
		elseif cursor_boss_speed == 1 then CBcolorA = Zcolor[44] CBcolorB = Zcolor[20] 
		elseif cursor_boss_speed == 2 then CBcolorA = Zcolor[43] CBcolorB = Zcolor[19] 
		elseif cursor_boss_speed == 3 then CBcolorA = Zcolor[42] CBcolorB = Zcolor[18]
		elseif cursor_boss_speed == 4 then CBcolorA = Zcolor[41] CBcolorB = Zcolor[17]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_OC.png', 5, 112, 8, 8, true)
	elseif cursor_boss_color == 3 then --purple false yellow true
		if cursor_boss_speed == 0 then CBcolorA = 0xFFC010F0 CBcolorB = 0xFFFFFF00
		elseif cursor_boss_speed == 1 then CBcolorA = Zcolor[52] CBcolorB = Zcolor[28] 
		elseif cursor_boss_speed == 2 then CBcolorA = Zcolor[51] CBcolorB = Zcolor[27] 
		elseif cursor_boss_speed == 3 then CBcolorA = Zcolor[50] CBcolorB = Zcolor[26]
		elseif cursor_boss_speed == 4 then CBcolorA = Zcolor[49] CBcolorB = Zcolor[25]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_PY.png', 5, 112, 8, 8, true)
	elseif cursor_boss_color == 4 then --blue false pink true
		if cursor_boss_speed == 0 then CBcolorA = 0xFF0000FF CBcolorB = 0xFFFF00FF
		elseif cursor_boss_speed == 1 then CBcolorA = Zcolor[60] CBcolorB = Zcolor[36] 
		elseif cursor_boss_speed == 2 then CBcolorA = Zcolor[59] CBcolorB = Zcolor[35] 
		elseif cursor_boss_speed == 3 then CBcolorA = Zcolor[58] CBcolorB = Zcolor[34]
		elseif cursor_boss_speed == 4 then CBcolorA = Zcolor[57] CBcolorB = Zcolor[33]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_BP.png', 5, 112, 8, 8, true)
	elseif cursor_boss_color == 5 then --pink false cyan true
		if cursor_boss_speed == 0 then CBcolorA = 0xFFFF00FF CBcolorB = 0xFF00FFFF
		elseif cursor_boss_speed == 1 then CBcolorA = Zcolor[36] CBcolorB = Zcolor[20] 
		elseif cursor_boss_speed == 2 then CBcolorA = Zcolor[35] CBcolorB = Zcolor[19] 
		elseif cursor_boss_speed == 3 then CBcolorA = Zcolor[34] CBcolorB = Zcolor[18]
		elseif cursor_boss_speed == 4 then CBcolorA = Zcolor[33] CBcolorB = Zcolor[17]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_PC.png', 5, 112, 8, 8, true)
	end
	if cursor_boss_speed == 5 then --flash colors mode on
		CBcolorA = Zcolor[wait/2] CBcolorB = Zcolor[wait+5] --using wait will make everything flash rapidly
		gui.drawImage('.\\NitM\\hud\\button_color_rainbow.png', 5, 112, 8, 8, true) --change the color button to rainbow icon
	end
	if cursor_color_invert == true then --we want to invert color logic
		local newval
		newval = CBcolorB
		CBcolorB = CBcolorA
		CBcolorA = newval
	end
	for i = 0, 5, 1 do --draw the speed button
		if cursor_boss_speed == i then
			gui.drawImage(".\\NitM\\hud\\button_speed_"..i..".png", 5, 124, 8, 8, true)
		end
	end
--table is X, Y, "text" order is the same than timeattack byte order
	for i = 1,28,1 do --do first square of the boss
		if time_attack_data[(4*i)-1] == 0 and time_attack_data[(4*i)-2] == 0 and time_attack_data[(4*i)-4] == 0 and first_castle_boss_dataA[(i*3)-1] > 0 then
			gui.drawRectangle( 10+first_castle_boss_dataA[(i*3)-1]*4, 5+first_castle_boss_dataA[(i*3)]*4-20, 4, 4, CBcolorA, CBcolorA)
		else
			gui.drawRectangle( 10+first_castle_boss_dataA[(i*3)-1]*4, 5+first_castle_boss_dataA[(i*3)]*4-20, 4, 4, CBcolorB, CBcolorB)
		end
	end
	for i = 1,28,1 do --some boss have rooms bigger than one square, for now second square is the exit (we have two tables)
		if time_attack_data[(4*i)-1] == 0 and time_attack_data[(4*i)-2] == 0 and time_attack_data[(4*i)-4] == 0 and first_castle_boss_dataB[(i*3)-1] > 0 then
			gui.drawRectangle( 10+first_castle_boss_dataB[(i*3)-1]*4, 5+first_castle_boss_dataB[(i*3)]*4-20, 4, 4, CBcolorA, CBcolorA)
		else
			gui.drawRectangle( 10+first_castle_boss_dataB[(i*3)-1]*4, 5+first_castle_boss_dataB[(i*3)]*4-20, 4, 4, CBcolorB, CBcolorB)
		end
	end
	gui.drawImage('.\\NitM\\hud\\button_boss_on.png', 5, 100, 8, 8, true)
elseif cursor_boss == false then 
	gui.drawImage('.\\NitM\\hud\\button_boss_off.png', 5, 100, 8, 8, true)
end
---relic, A is the color if data = 0 (player dont have the relic) B is the color if the player has the relic (1 or 3, >0)
if cursor_relic == true then
	if cursor_relic_color == 1 then
		if cursor_relic_speed == 0 then CRcolorA = 0xFFFF0000 CRcolorB = 0xFF00FF00 --red false green true
		elseif cursor_relic_speed == 1 then CRcolorA = Zcolor[4] CRcolorB = Zcolor[12] 
		elseif cursor_relic_speed == 2 then CRcolorA = Zcolor[3] CRcolorB = Zcolor[11] 
		elseif cursor_relic_speed == 3 then CRcolorA = Zcolor[2] CRcolorB = Zcolor[10] 
		elseif cursor_relic_speed == 4 then CRcolorA = Zcolor[1] CRcolorB = Zcolor[9] 
		end
		gui.drawImage('.\\NitM\\hud\\button_color_RG.png', 5, 153, 8, 8, true)
	elseif cursor_relic_color == 2 then --orange false cyan true
		if cursor_relic_speed == 0 then CRcolorA = 0xFFFF6600 CRcolorB = 0xFF00FFFF 
		elseif cursor_relic_speed == 1 then CRcolorA = Zcolor[44] CRcolorB = Zcolor[20] 
		elseif cursor_relic_speed == 2 then CRcolorA = Zcolor[43] CRcolorB = Zcolor[19] 
		elseif cursor_relic_speed == 3 then CRcolorA = Zcolor[42] CRcolorB = Zcolor[18]
		elseif cursor_relic_speed == 4 then CRcolorA = Zcolor[41] CRcolorB = Zcolor[17]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_OC.png', 5, 153, 8, 8, true)
	elseif cursor_relic_color == 3 then --purple false yellow true
		if cursor_relic_speed == 0 then CRcolorA = 0xFFC010F0 CRcolorB = 0xFFFFFF00
		elseif cursor_relic_speed == 1 then CRcolorA = Zcolor[52] CRcolorB = Zcolor[28] 
		elseif cursor_relic_speed == 2 then CRcolorA = Zcolor[51] CRcolorB = Zcolor[27] 
		elseif cursor_relic_speed == 3 then CRcolorA = Zcolor[50] CRcolorB = Zcolor[26]
		elseif cursor_relic_speed == 4 then CRcolorA = Zcolor[49] CRcolorB = Zcolor[25]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_PY.png', 5, 153, 8, 8, true)
	elseif cursor_relic_color == 4 then --blue false pink true
		if cursor_relic_speed == 0 then CRcolorA = 0xFF0000FF CRcolorB = 0xFFFF00FF
		elseif cursor_relic_speed == 1 then CRcolorA = Zcolor[60] CRcolorB = Zcolor[36] 
		elseif cursor_relic_speed == 2 then CRcolorA = Zcolor[59] CRcolorB = Zcolor[35] 
		elseif cursor_relic_speed == 3 then CRcolorA = Zcolor[58] CRcolorB = Zcolor[34]
		elseif cursor_relic_speed == 4 then CRcolorA = Zcolor[57] CRcolorB = Zcolor[33]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_BP.png', 5, 153, 8, 8, true)
	elseif cursor_relic_color == 5 then --pink false cyan true
		if cursor_relic_speed == 0 then CRcolorA = 0xFFFF00FF CRcolorB = 0xFF00FFFF
		elseif cursor_relic_speed == 1 then CRcolorA = Zcolor[36] CRcolorB = Zcolor[20] 
		elseif cursor_relic_speed == 2 then CRcolorA = Zcolor[35] CRcolorB = Zcolor[19] 
		elseif cursor_relic_speed == 3 then CRcolorA = Zcolor[34] CRcolorB = Zcolor[18]
		elseif cursor_relic_speed == 4 then CRcolorA = Zcolor[33] CRcolorB = Zcolor[17]
		end
		gui.drawImage('.\\NitM\\hud\\button_color_PC.png', 5, 153, 8, 8, true)
	end
	if cursor_relic_speed == 5 then --flash colors mode on
		CRcolorA = Zcolor[wait/2] CRcolorB = Zcolor[wait+5] --using wait will make everything flash rapidly
		gui.drawImage('.\\NitM\\hud\\button_color_rainbow.png', 5, 153, 8, 8, true) --change the color button to rainbow icon
	end
	if cursor_color_invert == true then --we want to invert color logic
		local newval
		newval = CRcolorB
		CRcolorB = CRcolorA
		CRcolorA = newval
	end
	for i = 0, 5, 1 do --draw the speed button
		if cursor_relic_speed == i then
			gui.drawImage(".\\NitM\\hud\\button_speed_"..i..".png", 5, 165, 8, 8, true)
		end
	end
--table is X, Y, "text" order is the same than relic byte order
	for i = 1,32,1 do --do relic square false true
		if relic_data[(i)-1] == 0 then
			gui.drawRectangle( 10+first_castle_relic_data[(i*3)-1]*4, 5+first_castle_relic_data[(i*3)]*4-20, 4, 4, CRcolorA, CRcolorA)
		else
			gui.drawRectangle( 10+first_castle_relic_data[(i*3)-1]*4, 5+first_castle_relic_data[(i*3)]*4-20, 4, 4, CRcolorB, CRcolorB)
		end
	end
	gui.drawImage('.\\NitM\\hud\\button_relic_on.png', 5, 141, 8, 8, true)
elseif cursor_relic == false then 
	gui.drawImage('.\\NitM\\hud\\button_relic_off.png', 5, 141, 8, 8, true)
end
------ user cursor, theres 3 cursors, one of them is just changing the size to look bigger
if cursor_user_color == 1 then --cheap switch on/off + selection
	gui.drawImage('.\\NitM\\hud\\button_user_gold.png', 265, 185, 8, 8, true)
elseif cursor_user_color == 2 or cursor_user_color == 3 then
	gui.drawImage('.\\NitM\\hud\\button_user_white.png', 265, 185, 8, 8, true)
elseif cursor_user_color == 4 then
	gui.drawImage('.\\NitM\\hud\\button_user_off.png', 265, 185, 8, 8, true)
end
if cursor_user == true and movie.mode() ~= 'PLAY' then --dont draw the user cursor when playing a movie duh...
--print(mouse_X)
	if (mouse_X > -279 and mouse_X < -38 and mouse_Y > -72 and mouse_Y < 115) then --then we are on the map area
	if (mouse_X > -279 and mouse_X < -225 and mouse_Y > 95 and mouse_Y < 115)--we want to avoid borders
	or (mouse_X > -87 and mouse_X < -38 and mouse_Y > 86 and mouse_Y < 115)
	or (mouse_X > -53 and mouse_X < -38 and mouse_Y > 38 and mouse_Y < 115)
	then--so we do nothing
	map_querry_X = 0
	map_querry_Y = 0
	area_querry = "- - - - -"
	area_querry_alt = "- - - - -"	
	else
	mouse_pos_snapped = snap_to_grid(mouse_X+297, mouse_Y+75)--magic to make the cursor and square stick to the grid
		if cursor_user_color == 1 then
			if wait >= 0 and wait <= 10 then
				gui.drawImage('.\\NitM\\hud\\cursorB3.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 11 and wait <= 20 then
				gui.drawImage('.\\NitM\\hud\\cursorB2.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 21 and wait <= 30 then 
				gui.drawImage('.\\NitM\\hud\\cursorB1.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 31 and wait <= 40 then 
				gui.drawImage('.\\NitM\\hud\\cursorB1.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 41 and wait <= 50 then 
				gui.drawImage('.\\NitM\\hud\\cursorB1.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 51 and wait <= 60 then 
				gui.drawImage('.\\NitM\\hud\\cursorB2.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			end
		elseif cursor_user_color == 2 then
			if wait >= 0 and wait <= 10 then
				gui.drawImage('.\\NitM\\hud\\cursorA3.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 11 and wait <= 20 then
				gui.drawImage('.\\NitM\\hud\\cursorA2.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 21 and wait <= 30 then 
				gui.drawImage('.\\NitM\\hud\\cursorA1.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 31 and wait <= 40 then 
				gui.drawImage('.\\NitM\\hud\\cursorA1.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 41 and wait <= 50 then 
				gui.drawImage('.\\NitM\\hud\\cursorA1.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			elseif wait >= 51 and wait <= 60 then 
			gui.drawImage('.\\NitM\\hud\\cursorA2.png', mouse_pos_snapped[1]-14, mouse_pos_snapped[2]-12 , 31, 31, true)
			end
		elseif cursor_user_color == 3 then
			if wait >= 0 and wait <= 10 then
				gui.drawImage('.\\NitM\\hud\\cursorA3.png', mouse_pos_snapped[1]-6, mouse_pos_snapped[2]-4 , 15, 15, true)
			elseif wait >= 11 and wait <= 20 then
				gui.drawImage('.\\NitM\\hud\\cursorA2.png', mouse_pos_snapped[1]-6, mouse_pos_snapped[2]-4 , 15, 15, true)
			elseif wait >= 21 and wait <= 30 then 
				gui.drawImage('.\\NitM\\hud\\cursorA1.png', mouse_pos_snapped[1]-6, mouse_pos_snapped[2]-4 , 15, 15, true)
			elseif wait >= 31 and wait <= 40 then 
				gui.drawImage('.\\NitM\\hud\\cursorA1.png', mouse_pos_snapped[1]-6, mouse_pos_snapped[2]-4 , 15, 15, true)
			elseif wait >= 41 and wait <= 50 then 
				gui.drawImage('.\\NitM\\hud\\cursorA1.png', mouse_pos_snapped[1]-6, mouse_pos_snapped[2]-4 , 15, 15, true)
			elseif wait >= 51 and wait <= 60 then 
				gui.drawImage('.\\NitM\\hud\\cursorA2.png', mouse_pos_snapped[1]-6, mouse_pos_snapped[2]-4 , 15, 15, true)
			end
		end
		gui.drawRectangle(mouse_pos_snapped[1]-1, mouse_pos_snapped[2]+1, 4, 4, nil)
		map_info_querry_color = 0xCF646464 --grey coz the user hasnt selected yet a square
		if (mouse_B) then --now the user request a square on the grid
			map_querry_X = (mouse_pos_snapped[1]-1-10)/4
			map_querry_Y = (mouse_pos_snapped[2]+1+75+15)/4
			map_querry_X = math.floor(map_querry_X+ 0.5*1)
			map_querry_Y = math.floor(map_querry_Y+ 0.5*1)-19
			area_querry = castle_A_area[map_querry_X + map_querry_Y * 64] --like always, x + (y*64)
			area_querry_alt = first_castle_dataB[map_querry_X + map_querry_Y * 64] --like always, x + (y*64)
			if area_querry == nil then area_querry = "- - - - -" end --the square is outside the castle
			if area_querry_alt == nil then area_querry_alt = "- - - - -" end --the square is outside the castle
			if cursor_user_color == 1 or cursor_user_color == 2 then --draw some flashy rectangles for those cursors
				gui.drawRectangle(mouse_pos_snapped[1]-2 , mouse_pos_snapped[2], 6, 6, Zcolor[1])
				gui.drawRectangle(mouse_pos_snapped[1]-4 , mouse_pos_snapped[2]-2, 10, 10, Zcolor[1])
				gui.drawRectangle(mouse_pos_snapped[1]-6 , mouse_pos_snapped[2]-4, 14, 14, Zcolor[1])
			end
			map_info_querry_color = 0xFF00FF00 --green coz its selected by the user
		else
		map_querry_X = 0
		map_querry_Y = 0
		area_querry = "- - - - -"
		area_querry_alt = "- - - - -"
		end
	end
	end
end
-------


if cursor_color_invert == true then
	gui.drawImage('.\\NitM\\hud\\button_revert_yes.png', 31, 185, 8, 8, true)
elseif cursor_color_invert == false then
	gui.drawImage('.\\NitM\\hud\\button_revert_no.png', 31, 185, 8, 8, true)
end

gui.drawImage('.\\NitM\\hud\\button_cursor_reset.png', 18, 185, 8, 8, true)


for i = 1,6,1 do
	if i == cursor_joker_color then
		gui.drawImage(".\\NitM\\hud\\button_joker_"..i..".png", 43, 185, 8, 8, true)
	end
end


for i = 0,6,1 do
	if i == cursor_joker_speed then
		gui.drawImage(".\\NitM\\hud\\button_speed_"..i..".png", 53, 185, 8, 8, true)
	end
end


if cursor_joker_all == true then
	gui.drawImage('.\\NitM\\hud\\button_dude_on.png', 62, 185, 8, 8, true)
else
	gui.drawImage('.\\NitM\\hud\\button_dude_off.png', 62, 185, 8, 8, true)
end


end

function minimap_buttons()
--the 3 first button, #1 does on/off player progression, #2 does change the color of squares, #3 change opacity (delta)
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -77 and mouse_Y < -69 and mouse_B) then
		if script_map_mode == "ZZ" then
			script_map_mode = "RG"
		elseif script_map_mode == "GT" or script_map_mode == "BT" or script_map_mode == "RG" then
			script_map_mode = "ZZ"
		end
	script_map_refresh = true
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
	script_map_refresh = true
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
	script_map_refresh = true
	wait = 0
	end
end
--the 4 next will do, player position on/off, the color of the cursor, the speed of the blink, trail data
if wait > 30 then
	if (mouse_X > -298 and mouse_X < -287 and mouse_Y > -36 and mouse_Y < -27 and mouse_B) then
		if cursor_player == true then cursor_player = false cursor_trail = false
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
		if cursor_trail == true then cursor_trail = false trail_data = {}
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
		if script_map_cursor == true then script_map_cursor = false 
		elseif script_map_cursor == false then script_map_cursor = true
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
	trail_data_refresh = false
	trail_data = {}
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
	script_map_refresh = true
	wait = 0
	end
end
--revert button
if wait > 30 then
	if (mouse_X > -270 and mouse_X < -262 and mouse_Y > 104 and mouse_Y < 112 and mouse_B) then
		if cursor_color_invert == true then 
		cursor_color_invert = false 
		script_map_refresh = true
		elseif cursor_color_invert == false then 
		cursor_color_invert = true 
		script_map_refresh = true
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
	script_map_refresh = true
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
		trail_data_refresh = false
		trail_data = {}
		cursor_player = false
		cursor_boss = false
		cursor_relic = false
		script_map_refresh = true
		elseif cursor_joker_all == false then 
		cursor_joker_all = true
		script_map_cursor = true
		script_map_mode = "RG"
		script_map_mode_delta = 2
		cursor_trail = true
		trail_data_refresh = true
		trail_data = {}
		cursor_player = true
		cursor_boss = true
		cursor_relic = true
		script_map_refresh = true
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


--print(mouse_Y)
--print(mouse_X)
end

--------------------------------
function map_info()
--bigger box
	gui.drawBox(script_map_info_box[1], script_map_info_box[2], script_map_info_box[3], script_map_info_box[4], script_map_info_box[5], script_map_info_box[6])
--player info
	gui.drawBox(script_map_info_box[1], script_map_info_box[2], script_map_info_box[1]+160, script_map_info_box[4], script_map_info_box[5], script_map_info_box[6])
	gui.drawImage('.\\NitM\\hud\\place.png', 1, 196, 34, 13, true)
	gui.drawText(110, 203, "X"..room_grid_X.."Y"..room_grid_Y, 0xCFFFFFFF, nil, 12, "Javanese Text", nil, nil, nil)
	gui.drawText(35, 192, ""..area_text, 0xCFFFFFFF, nil, 12, "Javanese Text", nil, nil, nil)
	gui.drawText(5, 204, ""..area_text_alt, 0xCFFFFFFF, nil, 12, "Javanese Text", nil, nil, nil)

--user cursor info
	gui.drawBox(script_map_info_box[1]+160, script_map_info_box[2], script_map_info_box[3], script_map_info_box[4], script_map_info_box[5], script_map_info_box[6])
	gui.drawText(160, 193, ""..area_querry, 0xCFFFFFFF, nil, 10, "Impact", nil, nil, nil)
	gui.drawText(160, 205, ""..area_querry_alt, 0xCFFFFFFF, nil, 10, "Impact", nil, nil, nil)
	gui.drawText(240, 205, "X"..map_querry_X.."Y"..map_querry_Y, map_info_querry_color, nil, 10, "Impact", nil, nil, nil)
end
--------------------------------
function splash_png()
	gui.drawImageRegion('.\\NitM\\map.png', 0, 0, 275, 195, 0, 0, 275, 195)
	gui.drawImageRegion('.\\NitM\\familiar.png', 0, 220, 66, 180, 0, 220, 66, 180)
	gui.drawImageRegion('.\\NitM\\relic.png', 676, 170, 116, 400, 676, 170, 116, 400)
	gui.drawImageRegion('.\\NitM\\timeattack.png', 65, 220, 211, 180, 65, 220, 211, 180)
	gui.drawImageRegion('.\\NitM\\gear.png', 676, 55, 116, 116, 676, 55, 116, 116)
end
--------------------------------
--------------------------------

--------------------------------

--------------------------------

--------------------------------

--------------------------------

--loop
while script_run == true do
event.onexit(exit_script)
event.onloadstate(function()--coz im nice I recheck when u load state
script_gear_refresh = true 
script_relic_refresh = true 
script_familiar_refresh = true
script_timeattack_refresh = true
script_map_refresh = true
trail_data = {}
end)
refresh_data()
resolution_switch()
if script_game_box_on == true then game_box() end
if script_info_time == true then info_time() end

if game_is_boot then --lets rock
where_is_player()
flashy_colors()


--one box around the game, one box around it for hitbox limits, set to false when in the menu special resolution (its pointless there)



if script_map == true then minimap() end




if script_position == true then position() end
if script_player_hitbox == true then playerhitbox() end
if script_vpad == true then vpad() end
if script_rng == true then rng() end

if script_relic == true and wait > 11 then relic() end
if script_gear == true and wait > 11 then gear() end
if script_timeattack == true and wait > 11 then timeattack() end
if script_familiar == true and wait > 11 then familiar() end

if script_player_statA == true then playerstatA() end
if script_status_box == true then status() end
if script_player_monitor == true then playermonitor() end
if script_player_statB == true then playerstatB() end


if script_map_info == true then map_info() end


if script_relic == false and script_gear == false and script_timeattack == false and script_familiar == false then
splash_png() --yeah we dont want to splash them if one of the module is up, but they should never be up at the point .... (and that works)
end

minimap_buttons()

if script_map_cursor == true then
draw_map_cursor()
gui.drawImage('.\\NitM\\hud\\button_cursor_on.png', 3, 182, 12, 12, true)
else
gui.drawImage('.\\NitM\\hud\\button_cursor_off.png', 3, 182, 12, 12, true)
end


--DisplayObjectHitbox()
--buttonMap()
--buttonHitbox()


 toto = (collectgarbage("count"))
 gui.drawText(300, 50, toto, "white", nil, 12, "Impact", nil, nil, nil)


end

if wait < max_wait then 
wait = wait + 1
else
wait_long = wait_long + 1
wait = 0 
end --inhouse wait super function lol
--attempt at "optimize the ram" ... kinda (it doesnt work I think)
if wait_long == 60 then gui.clearImageCache() end
if wait_long == 120 then collectgarbage() end
if wait_long == 360 then collectgarbage('restart') end


event.onloadstate(function() gui.DrawFinish() end)--hmmm this mean it draw before you start emulation, nice !
emu.frameadvance()
end
