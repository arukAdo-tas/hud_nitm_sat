
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
count = 0

--Internal script properties init
event.onexit(stop)
event.onloadstate(loadstate)

script_run = true --master switch

script_super_debug = true --set to false for release, discret switch to control debug mode button

--castleB = false --we start with the assumption thats its the first castle
--offsetcastleX = 0
--offsetcastleY = 0

game_is_boot = false

game_is_prologue = false
prologue_is_dracula = false
cursor_was_trail = false
cursor_was_player = false

alucard = false

game_is_entranceB = false

game_is_dracula = false


game_was_cdroom = false


game_is_menu = false
game_is_alt_rez = false
game_is_map = false

game_is_inventory = false
game_was_inventory = false

game_is_relic = false
game_was_relic = false

script_room_count = 0

room_grid_X = 0
room_grid_Y = 0

script_shot = true
first_shot = true

shot_refresh = true
extra_refresh = false

first_castle = true

debug_data = ""

script_gamebox = true

script_map = true
script_map_mode = "ZZ"
script_map_mode_delta = 2
mapData = {}


--default is the game default light blue in all squares, it basicly mean color is off (easier to read others data), blue setting is a darker blue
--supported colors: default, blue, red, orange, green, cyan, yellow, pink
script_telR_color = "default"		--teleport rooms (in game orange)
script_saveR_color = "default"		--save rooms (in game red)
script_cdR_color = "default"		--cd rooms
script_mistR_color = "default"		--mist gate
script_doorR_color = "default"		--blue doors

script_barrierR_color = "default"	--barriers/blockabde


data_title = {}
data_cutscene = {}
data_break = {}
data_wall = {}
data_switch = {}

data_lifeup = {}
data_heartup = {}
data_pickup = {}


script_hitbox = false

script_player_hitbox = true

script_objects_hitbox = true

script_relic = true

script_gear = true

script_familiar = true
familiar_data_level = {1,1,1,1,1,1,nil,1}
familiar_text = { "ghost", "bat", "demon", "fairy", "sprite", "sword", nil, "nose" }
current_familiar = "- - - - -"

script_timeattack = true

script_vpad = true

script_rng = true

script_info_time = true

script_position = true

script_status = true
player_status_normal = true
action_text = ""

script_monitor = true

script_unlock = true

script_bestiary = true

script_pickup = true

script_stat = true

script_map_info = true

script_map_cursor = true --dont set this to false, theres a button for it
cursor_color_invert = false --dont set this to true, theres a button for it

cursor_player = true
cursor_player_color = 2
cursor_player_speed = 3

cursor_boss = false
cursor_boss_color = 1
cursor_boss_speed = 2

cursor_relic = false
cursor_relic_color = 1
cursor_relic_speed = 1

cursor_user = false --never set this to true
cursor_user_color = 4
cursor_querry_X = 0
cursor_querry_Y = 0
cursor_user_idle = 0



cursor_switch = false

cursor_wall = false

cursor_cutscene = false

cursor_break = false

cursor_pickup = false

cursor_lifeup = false

cursor_heartup = false


theroomX = 0
theroomY = 0

cursor_trail = false --note, this will crash in prologue

cursor_trail_color = 1
cursor_trail_speed = 1
trail_data_refresh = false
trail_data = { 0, 0, 0, 0, 0 }
script_room_origin = { 0, 0 }

room_1D = nil
area_ID = ""
querry_1D = nil

room_text = "- - -"
room_special = "- - -"
room_boss = "- - -"
room_boss_origin = { 0, 0 }
room_relic = "- - -"
room_relic_origin = { 0, 0 }
room_lifeup = "- - -"
room_lifeup_origin = { 0, 0 }
room_heartup = "- - -"
room_heartup_origin = { 0, 0 }
room_pickup = "- - -"
room_pickup_origin = { 0, 0 }

cursor_joker_speed = 6
cursor_joker_color = 6
cursor_joker_all = false

wait = 0	--init the wait from zero duh
max_wait = 60	--give a max wait time, mean its now one second
wait_long = 0 --wait but in seconds... it increase every 60 wait
wait_very_long = 0 --wait 90sec

objectList = {}
objectUnknow = {}
--------------------------------
