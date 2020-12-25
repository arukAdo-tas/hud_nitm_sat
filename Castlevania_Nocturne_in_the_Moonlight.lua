--if you didnt stop the script and closed the lua console, ill clean up your mess
gui.clearImageCache()
os.remove('.\\map.png')



local function byterange_decode(values, size, big_endian, signed)
  -- Error handling
  if type(values) ~= "table" then print("Insert correct memory.byterange table!") ; return end
  if not size or size < 1 or size > 6 then print("Insert correct size value! Can accept values between 1 and 6.") ; return end
  if size > #values+1 then print("Size is bigger than the memory.byterange table!") ; return end -- +1 due table 0 indexed
  
  local output = {}
  
  for i = 0, (math.floor((#values+1)/3)*3-1), size do
    
    local out_value = 0
    
    -- Loop to correctly calculate the number based on the endianess
    for j = 0, size-1 do
      if big_endian then
        out_value = out_value + values[i+j]*(0x100^(size-1-j))   -- {AA, BB} -> AA00 + BB = AABB
      else
        out_value = out_value + values[i+j]*(0x100^j) -- {AA, BB} -> AA + BB00 = BBAA
      end
    end
    
    -- Check signedness
    if signed then
      local maxval = (0x100^size)/2
      if out_value >= maxval then out_value = out_value - 2*maxval end
    end
    
    output[i/size] = out_value
  end
  
  if (#values+1)%size ~= 0 then print(string.format("%d byte(s) left, due to the selected size or memory.byterange size!", (#values+1)%size)) end -- +1 due table 0 indexed

  return output
end

--syntax: raw = memory.readbyterange(); data = raw:byterange_decode(4);




--im storing all my hardcoded junk in this seperate lua file
require "NitM\\data"
require "NitM\\ram"


--[[
0x05CA62 looks like a flag for wich castle you are in, yet the game doesnt care about it if u poke, 
so its a pointer(?) value 129 RC 128 IC, it seems to be set to 0 if you didnt unlocked the teleporter yet,
could be link to the byte after and before itself
note: this is wrong
]]
castle_flag = (memory.readbyte(0x05CA62))



state_rng = (memory.read_u32_be(0x0482b8))

state_menu = (memory.readbyte(0x048211))

--[[
Not the player but everything else hitboxes/effects whatever graphics objects
]]
draw_object_ram_start = 0x099F20









player_character_ID = (memory.readbyte(0x05c6d2))
player_subweapon = (memory.readbyte(0x05c99E))
player_action_ID = (memory.readbyte(0x099824))
player_morph = (memory.readbyte(0x05C99A))
player_morph_timer = (memory.readbyte(0x0C850A))
player_orientation = mainmemory.readbyte(0x099810)--1 is left, 0 is right

player_ground = mainmemory.readbyte(0x05C166)

player_X_position_relative = mainmemory.read_u16_le(0x0997fc)
player_Y_position_relative = mainmemory.read_u16_le(0x099800)
player_X_position_absolute = (memory.read_u16_le(0x05cd5a))
player_Y_position_absolute = (memory.read_u16_le(0x05c5b6))
player_X_scroll = (memory.read_u16_le(0x0860b6))
player_Y_scroll = (memory.read_u16_le(0x0860ba))
player_X_speed = (memory.read_s8(0x099804))--exprimed in pixel per frame
player_Y_speed = (memory.read_s8(0x099808))--exprimed in pixel per frame
player_X_subpixel = (memory.readbyte(0x0997FF))
player_Y_subpixel = (memory.readbyte(0x099803))

player_X_hitbox_offset = memory.read_s8(0x09980C)
player_Y_hitbox_offset = memory.read_s8(0x09980E)
player_X_hitbox_radius = memory.readbyte(0x09983D)
player_Y_hitbox_radius = memory.readbyte(0x09983C)











stat_rooms = (memory.read_u16_le(0x05C5B2)) --used to check if the map changed


-- stat minus mod equation, mod is determined by the gear you put on or relics, it can be negative (duplicator for exemple)

--syntax: raw = memory.readbyterange(); data = raw:byterange_decode(4);

raw = memory.readbyterange(0x05C942, 136, "Work Ram High")
data = byterange_decode(raw, 2, false, true)
--print(data)

stat_hp = (memory.read_u16_le(0x05C942))
stat_hp_max = (memory.read_u16_le(0x05C946))
stat_heart = (memory.read_u16_le(0x05C94A))
stat_heart_max = (memory.read_u16_le(0x05C94E))

stat_mp = (memory.read_u16_le(0x05C952))
stat_mp_max = (memory.read_u16_le(0x05C956))

stat_str = (memory.read_s16_le(0x05C95A))
stat_con = (memory.read_s16_le(0x05C95E))
stat_int = (memory.read_s16_le(0x05C962))
stat_lck = (memory.read_s16_le(0x05C966))
stat_str_mod = (memory.read_s16_le(0x05C96A))
stat_con_mod = (memory.read_s16_le(0x05C96E))
stat_int_mod = (memory.read_s16_le(0x05C972))
stat_lck_mod = (memory.read_s16_le(0x05C976))

stat_level = (memory.read_u16_le(0x05C98A))
stat_exp = (memory.read_u16_le(0x05C98E))

stat_gold = (memory.read_u16_le(0x05C992))
stat_beat = (memory.read_u16_le(0x05C996))

stat_def = (memory.read_u16_le(0x05C9CA))



--[[
]]

current_familiar = "- - - - -"



-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------



--Internal script properties init

game_is_boot = false
game_is_load = false
game_is_menu = false
game_is_running = false

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
script_map_refresh = 30
script_map_box = {100, 100, 100, 100, script_box_line, script_box_fill}

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
script_familiar_refresh = 30
script_familiar_refresh_sstate = true
script_familiar_box = {0, 220, 65, 399, script_box_line, script_box_fill}
fWp = {script_familiar_box[1], script_familiar_box[2], "texthere", script_default_text[1], script_default_text[2], script_default_text[3], script_default_text[4], script_default_text[5], script_default_text[6], script_default_text[7], 24, 27, 0x9FFFFFFF}

familiar_data_level = {1,1,1,1,1,1,nil,1}
familiar_text = {"ghost","bat","demon","fairy","half","sword",nil,"nose"}


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




script_room_count = 0


mouse_X = input.getmouse()['X']
mouse_Y = input.getmouse()['Y']
mouse_B = input.getmouse()['Left']






wait = 0	--init the wait from zero duh
max_wait = 60	--give a max wait time, if you set a module to wait superior to this value, it will never update data



tD = {}
rD = {}


the_frame = emu.framecount()

X_but = 36
Y_but = 12
on_png = '.\\NitM\\hud\\button_on.png'
off_png = '.\\NitM\\hud\\button_off.png'








oldX = 0
oldY = 0

room_grid_X = 0
room_grid_Y = 0

stopmee = false
revez = false
stepz = 1
wait = 0
objectList = {}
objectUnknow = {}
zstopMap = true
stopMap = true
stopHitbox = true
totalRoomsStorage = 0





-- Color format: OORRGGBB(Opacity, Red, Green, Blue)

--------------------------------

--------------------------------

--------------------------------

--------------------------------

--------------------------------
local function exit_script()
	client.SetGameExtraPadding(0, 0, 0, 0)
	gui.clearImageCache()
	os.remove('.\\map.png')
end
--------------------------------
local function fetchram()

	the_frame = emu.framecount()

	player_orientation = memory.readbyte(0x099810)
	player_X_position_relative = memory.read_u16_le(0x0997FC)
	player_Y_position_relative = memory.read_u16_le(0x099800)
	player_X_hitbox_offset = memory.read_s8(0x09980C)
	player_Y_hitbox_offset = memory.read_s8(0x09980E)
	player_X_hitbox_radius = memory.readbyte(0x09983D)
	player_Y_hitbox_radius = memory.readbyte(0x09983C)


	player_motion_X = memory.readbyte(0x099807)
	player_motion_Y = memory.readbyte(0x09980B)

	player_X_position_absolute = (memory.read_u16_le(0x05CD5A))
	player_Y_position_absolute = (memory.read_u16_le(0x05C5B6))
	player_X_scroll = (memory.read_u16_le(0x0860B6))
	player_Y_scroll = (memory.read_u16_le(0x0860BA))
	player_X_speed = (memory.read_s8(0x099804))
	player_Y_speed = (memory.read_s8(0x099808))
	player_X_subpixel = (memory.readbyte(0x0997FF))
	player_Y_subpixel = (memory.readbyte(0x099803))

	player_subweapon = (memory.readbyte(0x05c99E))
	player_action_ID = (memory.readbyte(0x099824))
	player_morph = (memory.readbyte(0x05C99A))
	player_morph_timer = (memory.readbyte(0x0C850A))
	player_character_ID = (memory.readbyte(0x05c6d2))
	castle_flag = (memory.readbyte(0x065488))--wrong too probly
--	castle_flag = (memory.readbyte(0x05CA62))--wrong
	state_menu = (memory.readbyte(0x048211))

	player_ground = mainmemory.readbyte(0x05C166)

--	area_ID = memory.read_u32_be(0x058C84)

--wrong
	player_use_first_hand = mainmemory.readbyte(0x05C462)
	player_use_second_hand = mainmemory.readbyte(0x05C574)
	player_use_third_hand = mainmemory.readbyte(0x050B03)

	stat_hp = (memory.read_u16_le(0x05C942))
	stat_hp_max = (memory.read_u16_le(0x05C946))
	stat_mp = (memory.read_u16_le(0x05C952))
	stat_mp_max = (memory.read_u16_le(0x05C956))
	stat_heart = (memory.read_u16_le(0x05C94A))
	stat_heart_max = (memory.read_u16_le(0x05C94E))

	stat_level = (memory.read_u16_le(0x05C98a))
	stat_exp = (memory.read_u16_le(0x05C98E))
	stat_gold = (memory.read_u16_le(0x05C992))
	stat_beat = (memory.read_u16_le(0x05C996))

	stat_str = (memory.read_s16_le(0x05C95A))
	stat_str_mod = (memory.read_s16_le(0x05C96A))
	stat_con = (memory.read_s16_le(0x05C95E))
	stat_con_mod = (memory.read_s16_le(0x05C96E))
	stat_int = (memory.read_s16_le(0x05C962))
	stat_int_mod = (memory.read_s16_le(0x05C972))

	stat_lck = (memory.read_s16_le(0x05C966))
	stat_lck_mod = (memory.read_s16_le(0x05C976))
	stat_def = (memory.read_u16_le(0x05C9CA))

	stat_rooms = (memory.read_u16_le(0x05C5B2))

	player_script = memory.readbyterange(0x05CD70, 5, "Work Ram High")


	game_is_loaded = (memory.readbyte(0x05CEB2))

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

	local room_data = memory.readbyterange(0x05CE5E, 25, "Work Ram High")

	room_X_size_grid = room_data[0]
	room_Y_size_grid = room_data[4]
	room_X_min_grid = room_data[12]
	room_Y_max_grid = room_data[16]
	room_X_max_grid = room_data[20]
	room_Y_min_grid = room_data[24]

	local room_data_bis = memory.readbyterange(0x05D75E, 5, "Work Ram High")

	room_X_origin_grid = room_data_bis[0]
	room_Y_origin_grid = room_data_bis[4]
	
	mouse_X = input.getmouse()['X']
	mouse_Y = input.getmouse()['Y']
	mouse_B = input.getmouse()['Left']

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
curX = player_X_position_absolute/320
curY = player_Y_position_absolute/256
curX = math.floor(curX)
curY = math.floor(curY)
room_grid_X = room_X_min_grid + curX --from min coz grid orientation is from left to right
room_grid_Y = room_Y_max_grid + curY --from max coz we go from top0 to bottom
end
area_ID = area_text_data[room_grid_X + room_grid_Y * 64]

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

	gui.drawText(pWp[1] + 256, pWp[2], "Motion:"..player_motion_X, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])
	gui.drawText(pWp[1] + 256, pWp[2] + 9, "Motion:"..player_motion_Y, pWp[4], pWp[5], pWp[6], pWp[7], pWp[8], pWp[9], pWp[10])


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

area_text = area_text_data[room_grid_X + room_grid_Y * 64]

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
local function info_time()
	gui.drawBox(script_info_time_box[1], script_info_time_box[2], script_info_time_box[3], script_info_time_box[4], script_info_time_box[5], script_info_time_box[6])
--FRAMES/LAG/REAL TIME COUNTER/IN GAME TIME RAM WATCH
	--if its a movie, we want to turn all the text into red when its over
	if movie.mode() == 'PLAY' and the_frame == movie.length() then	color_frame_text = 0xCFFF0000 else color_frame_text = 0xCFFFFFFF end
--IN GAME TIME
	stat_gametime_data = memory.readbyterange(0x05C9D6, 9, "Work Ram High")
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

if emu.framecount() % script_timeattack_refresh == 0 or script_timeattack_refresh_sstate == true then --we dont need to regenerate this data until the menu is call...
	time_attack_data = memory.readbyterange(0x05D830, 112, "Work Ram High")
	script_timeattack_refresh_sstate = false
end

for i = 0, 108, 4 do
	local byteA = time_attack_data[0+i]
	local byteB = time_attack_data[1+i]
	local byteC = time_attack_data[2+i]
	local byteD = time_attack_data[3+i]

	local textta = time_attack_text[i/4+1]
	local ln = i/4+1

	if byteA == 0 and byteB == 0 and byteC == 0 and byteD == 0 then --then the event didnt happen
		time_attack_data_time[ln] = 999999
		time_attack_data_time[ln+28] = "99:99:99 -------------------" --just dumouse_B way of saying didnt happen, like in game, maybe something better?
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

end
--------------------------------
local function gear()
--notes: empty accID 58, empty capeID 48, empty armorID 0, empty headID 26, empty handsID 0

gui.drawBox(script_gear_box[1], script_gear_box[2]-5, script_gear_box[3], script_gear_box[4], script_gear_box[5], script_gear_box[6])

if script_gear_refresh == true or script_gear_refresh_sstate == true then --we dont need to regenerate this data until the menu is call...
	gear_data = memory.readbyterange(0x05C9A2, 29, "Work Ram High")
	script_gear_refresh_sstate = false
end

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

end
--------------------------------
local function relic()
	gui.drawBox(script_relic_box[1], script_relic_box[2], script_relic_box[3], script_relic_box[4], script_relic_box[5], script_relic_box[6])
--note; the bytes are inverted AGAIN, first byte 0 on right, second byte 1 on left

if emu.framecount() % script_relic_refresh == 0 or script_relic_refresh_sstate == true then --regenerate data every xx frames
	relic_data = memory.readbyterange(0x05C6F0, 32, "Work Ram High")
	script_relic_refresh_sstate = false
end

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

end
--------------------------------
function familiar()
gui.drawBox(script_familiar_box[1], script_familiar_box[2], script_familiar_box[3], script_familiar_box[4], script_familiar_box[5], script_familiar_box[6])

if emu.framecount() % script_familiar_refresh == 0  or script_familiar_refresh_sstate == true then --regenerate data every xx frames
	familiar_data = memory.readbyterange(0x05C9EA, 85, "Work Ram High")
	familiar_data_level = {}
	table.insert(familiar_data_level, 1, ""..familiar_data[0])--ghost
	table.insert(familiar_data_level, 2, ""..familiar_data[12])--bat
	table.insert(familiar_data_level, 3, ""..familiar_data[36])--demon
	table.insert(familiar_data_level, 4, ""..familiar_data[24])--fairy
	table.insert(familiar_data_level, 5, ""..familiar_data[60])--half fairy
	table.insert(familiar_data_level, 6, ""..familiar_data[48])--sword
	table.insert(familiar_data_level, 8, ""..familiar_data[72])--nose
	script_familiar_refresh_sstate = false
end

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

end
--------------------------------
local function rng()
	gui.drawBox(script_rng_box[1], script_rng_box[2], script_rng_box[3], script_rng_box[4]-5, script_rng_box[5], script_rng_box[6])
	if script_rng_refresh == true then
		state_rng = (memory.read_u32_be(0x0482b8))
	end
	gui.drawText(eRp[1], eRp[2]-2, "RNG", eRp[4], eRp[5],  eRp[6], eRp[7], eRp[8], eRp[9], eRp[10])
	gui.drawText(eRp[1]+30, eRp[2]-2, ""..(bizstring.hex(state_rng)), eRp[4], eRp[5],  eRp[6], eRp[7], eRp[8], eRp[9], eRp[10])
end




--------------------------------



local mapData = {}

function minimap()
    if  emu.framecount() % 1 == 0 or #mapData == 0  then
        local iteration = 1
        mapData = {}
			for i = 0, 751, 2 do  --was 2048 for "full" map
				mapData[iteration] = makeMap(i)
				iteration = iteration + 1
			end
	end
 displayMap(mapData)
end

function makeMap(i)
    local data = {}
    local rcMapStart = 0x05CF10

    data[1] = 26 + i % 16 * 16
	data[2] = 10 + i % 16 * 16
	data[3] = 5 + 4 * math.floor(i / 16)
	
	data[4] = memory.readbyte(rcMapStart + i)
	data[5] = memory.readbyte(rcMapStart + 1 + i)
	data[6] = i
	return data
end

function displayMap(mapData)
	gui.drawBox(0, 0, 275, 220, 0xCF646464, nil)
	gui.drawImage('.\\NitM\\map256x189.png', 10, 5, 256, 189, true) 

    local lineColorOn = 0xFF000000
    local fillColorOn = 0xFF000000
    local lineColorOff = 0x90646464
    local fillColorOff = 0x90646464
    local lineColorT = 0x90646464
    local fillColorT = 0x90646464
    local sizeX = 3
    local sizeY = 3

   for mapIndex = 1, #mapData do
        local baseX = {mapData[mapIndex][1], mapData[mapIndex][2]}
        local baseY = mapData[mapIndex][3]
        local baseMapSquare = {mapData[mapIndex][4], mapData[mapIndex][5]}
			for baseIndex = 1, 2 do -- repeat for A and B
				for bitIndex = 0, 6, 2 do -- repeat for every second bit in the value, starting with the lowest bit
					local offset = 12 - (bitIndex *  2) -- offset goes 9, 6, 3, 0
--					if (mapIndex == 1) then console.writeline("bitIndex: "..bitIndex.." offset: "..offset.." baseIndex: "..baseIndex.." mapIndex: "..mapIndex) end
					-- if the current bit is set, draw normal, or rather we shouldnt draw anyway
					if bit.band(baseMapSquare[baseIndex], 2^bitIndex) == 2^bitIndex then
--						gui.drawRectangle(baseX[baseIndex] + offset, baseY, sizeX, sizeY, lineColorOn, fillColorOn)
					-- else if the next (transparent) bit is set, and the current bit wasn't set, draw transparent, but we dont care
					elseif bit.band(baseMapSquare[baseIndex], 2^(bitIndex + 1)) == 2^(bitIndex + 1) then
						gui.drawRectangle(baseX[baseIndex] + offset, baseY, sizeX, sizeY, lineColorT, fillColorT)
					else--else the bit is off, thats what we want to toy with
--						if first_castle_full_data[mapData[mapIndex]] == true then 
						gui.drawRectangle(baseX[baseIndex] + offset, baseY, sizeX, sizeY, lineColorOff, fillColorOff)
--						end
					end
				end
			end
	end
end


function buttonHitbox()
	mouse_X = input.getmouse()['X']
	mouse_Y = input.getmouse()['Y']
	mouse_B = input.getmouse()['Left']

if stopHitbox == false and wait > 3 then
	if (mouse_X > -22 and mouse_X < 8 and mouse_Y > 296 and mouse_Y < 301 and mouse_B) then
	stopHitbox = true
	wait = 0
	end
end
if stopHitbox == true and wait > 3 then
	if (mouse_X > -22 and mouse_X < 8 and mouse_Y > 296 and mouse_Y < 301 and mouse_B) then
	stopHitbox = false
	wait = 0
	end
end
if stopHitbox == true then
	gui.drawImage(off_png, 276, 373, X_but, Y_but, true)
	gui.drawText(312, 369, "HitBox", 0x90FF0000, nil, 12, "Javanese Text", nil, nil, nil)
else
	gui.drawImage(on_png, 276, 373, X_but, Y_but, true)
	gui.drawText(312, 369, "HitBox", 0x9000FF00, nil, 12, "Javanese Text", nil, nil, nil)
end
end

function buttonMap()
--	stopMap = false
if stopMap == false and wait > 3 then
	if (mouse_X > -297 and mouse_X < -266 and mouse_Y > 117 and mouse_Y < 126 and mouse_B) then
	bizsizex = client.screenwidth()
	bizsizey = client.screenheight()
	bizsize = client.getwindowsize()
--	print(bizsizex.."y"..bizsizey.."s"..bizsize)
	gui.clearImageCache()
	gui.DrawFinish()
	client.setwindowsize(2)
	client.screenshot('.\\map.png')
	client.setwindowsize(bizsize)
	stopMap = true
	wait = 0
	end
end
if stopMap == true and wait > 3 then
	if (mouse_X > -297 and mouse_X < -266 and mouse_Y > 117 and mouse_Y < 126 and mouse_B) then
	stopMap = false
	wait = 0
	end
end


	gui.drawBox(0, 195, 79, 220, script_relic_box[5], script_relic_box[6])
if stopMap == true then
	
	if bizsizex == 1584 then
	gui.drawImageRegion('.\\map.png', 0, 0, 266, 194, 0, 0, 266, 194)
	elseif bizsizex == 1920 then
	gui.drawImageRegion('.\\map.png', 0, 0, 266, 194, 0, 0, 266, 194)	--665, 485 --532*0.25+532-20, 388*0.35+388+1
	end
	
	gui.drawImage(off_png, 1, 196, X_but, Y_but, true)
	gui.drawImage(off_png, 1, 208, X_but, Y_but, true)
	gui.drawText(37, 191, "realtime", 0x90FF0000, nil, 11, "Javanese Text", nil, nil, nil)
else
	gui.drawImage(on_png, 1, 196, X_but, Y_but, true)
	gui.drawImage(on_png, 1, 208, X_but, Y_but, true)
	gui.drawText(37, 191, "realtime", 0x9000FF00, nil, 11, "Javanese Text", nil, nil, nil)
end

	gui.drawBox(0, 0, 275, 220, 0xCF646464, nil)

end

function snap_to_grid(x, y)
    return {
        math.floor((x - (-289)) / 4) * 4 + (-289),
        math.floor((y - (-72)) / 4) * 4 + (-72)
    }
end

function drawMapCursor()

colorMapGridShowA = 0xCFFFFFFF

local base_colourA = 0x0000FF00 --green
local base_colourB = 0x00FF0000 --0x00DDDDDD
local opacity = (math.cos(the_frame*math.pi/120)+1)/2
local opacity_alpha = math.ceil(0xFF*opacity)*0x1000000
local cursor_colourA = base_colourA + opacity_alpha
local cursor_colourB = base_colourB + opacity_alpha

if room_grid_X >= 1 and room_grid_Y >= 1 then
colorMapGridShowB = 0xCF646464
theroomX = room_grid_X * 4
theroomY = room_grid_Y * 4 -20-- 20 is the numouse_Ber of row ive removed to make the map shorter, 5 rows x 4 px

if wait == 3 or wait == 6 or wait == 9  then
if revez == true then
stepz = stepz - 1
if stepz == 2 then revez = false end
else
stepz = stepz + 1
end
end

--gui.drawLine(10 + theroomX+2, 5, 10 + theroomX+2, theroomY + 3, cursor_colourA)
--gui.drawLine(10 + theroomX+2, 193, 10 + theroomX+2, theroomY + 11, cursor_colourA)
--gui.drawLine(10, theroomY + 7, theroomX + 9, theroomY + 7, cursor_colourA)
--gui.drawLine(15 + theroomX , theroomY + 7, 265, theroomY + 7, cursor_colourA)
gui.drawRectangle(theroomX + 10 , theroomY + 5, 4, 4, 0xFF00FFFF, nil)
gui.drawRectangle((room_X_min_grid * 4) + 10, (room_Y_max_grid * 4)-16+1, (room_X_size_grid * 4), (room_Y_size_grid * 4), cursor_colourA, nil)

if wait >= 0 and wait <= 5 then
gui.drawImage('.\\NitM\\hud\\cursorA1.png', theroomX +5, theroomY , 15, 15, true)
elseif wait >= 6 and wait <= 11 then
gui.drawImage('.\\NitM\\hud\\cursorA2.png', theroomX +5, theroomY , 15, 15, true)
elseif wait >= 12 and wait <= 17 then
gui.drawImage('.\\NitM\\hud\\cursorA3.png', theroomX +5, theroomY , 15, 15, true)
elseif wait >= 18 and wait <= 23 then
gui.drawImage('.\\NitM\\hud\\cursorA4.png', theroomX +5, theroomY , 15, 15, true)
elseif wait >= 24 and wait <= 29 then
gui.drawImage('.\\NitM\\hud\\cursorA3.png', theroomX +5, theroomY , 15, 15, true)
elseif wait >= 30 and wait <= 35 then
gui.drawImage('.\\NitM\\hud\\cursorA2.png', theroomX +5, theroomY , 15, 15, true)
elseif wait >= 36  then
gui.drawImage('.\\NitM\\hud\\cursorA1.png', theroomX +5, theroomY , 15, 15, true)
end


-- end
 -- or wait =< 20 then
-- end
-- if wait >= 21 or wait =< 30 then
-- gui.drawImage('.\\NitM\\hud\\cursorA3.png', theroomX +5, theroomY , 15, 15, true)
-- end
-- if wait >= 31 or wait =< 40 then
-- gui.drawImage('.\\NitM\\hud\\cursorA4.png', theroomX +5, theroomY , 15, 15, true)
-- end
-- if wait >= 41 or wait =< 50 then
-- gui.drawImage('.\\NitM\\hud\\cursorA3.png', theroomX +5, theroomY , 15, 15, true)
-- end
-- if wait >= 51 or wait =< 60 then
-- gui.drawImage('.\\NitM\\hud\\cursorA2.png', theroomX +5, theroomY , 15, 15, true)
-- end





end

mapquerryX = 0
mapquerryY = 0
area_text_querry = "- - - - -"

if movie.mode() ~= 'PLAY' then

if (mouse_X > -289 and mouse_X < -35 and mouse_Y > -72 and mouse_Y < 115) then
mouse_pos_snapped = snap_to_grid(mouse_X+297, mouse_Y+75)
gui.drawRectangle(mouse_pos_snapped[1]-1, mouse_pos_snapped[2]+1, 4, 4, nil)
-- gui.drawLine(10 + 297+mouse_X -8, 5, 10 + 297+mouse_X -8, 192 , cursor_colourB)
-- gui.drawLine(10, mouse_Y+75-1+3, 265, mouse_Y+75-1+3, cursor_colourB)
-- gui.drawRectangle(297+mouse_X , mouse_Y+75, 4, 4, nil)


if (mouse_B) then
mapquerryX = (mouse_pos_snapped[1]-1-10)/4
mapquerryY = (mouse_pos_snapped[2]+1+75+15)/4
mapquerryX = math.floor(mapquerryX+ 0.5*1)
mapquerryY = math.floor(mapquerryY+ 0.5*1)-19
colorMapGridShowB = 0xCFFFFFFF
gui.drawRectangle(mouse_pos_snapped[1]-2 , mouse_pos_snapped[2], 6, 6, 0xFFFF0000)
area_text_querry = area_text_data[mapquerryX + mapquerryY * 64]
else
colorMapGridShowB = 0xCF646464
end

end

end

if area_text == nil then area_text = "- - -" end

if area_text_querry == nil then area_text_querry = "- - - - -" end


	gui.drawBox(79, 195, 174, 220, script_relic_box[5], script_relic_box[6])
	gui.drawImage('.\\NitM\\hud\\place.png', 80, 196, 34, 13, true)


	gui.drawText(125, 192, "X0"..room_grid_X.."Y"..room_grid_Y, colorMapGridShowA, nil, 12, "Javanese Text", nil, nil, nil)
	gui.drawText(80, 206, ""..area_text, colorMapGridShowA, nil, 10, "Impact", nil, nil, nil)
	
	gui.drawBox(174, 195, 275, 220, script_relic_box[5], script_relic_box[6])

	gui.drawText(175, 192, "SELECT X"..mapquerryX.."Y"..mapquerryY, colorMapGridShowB, nil, 12, "Javanese Text", nil, nil, nil)
	gui.drawText(175, 206, area_text_querry, colorMapGridShowB, nil, 10, "Impact", nil, nil, nil)



if stepz == 10 then
revez = true
end

end


--------------------------------

--------------------------------
--------------------------------

--------------------------------
--------------------------------

--------------------------------
--------------------------------

--------------------------------
--------------------------------

--------------------------------
--------------------------------

--------------------------------

--------------------------------

--------------------------------

--------------------------------

--loop
while script_run == true do
event.onexit(exit_script)

fetchram()
where_is_player()


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



if player_script[0] == 7 then --now we gotta check for new gear because the player is in inventory!
script_gear_refresh = true
else --super performance saver 2047 (lol)
script_gear_refresh = false
end
event.onloadstate(function()--coz im nice I recheck gear when u load state
script_gear_refresh_sstate = true 
script_relic_refresh_sstate = true 
script_familiar_refresh_sstate = true
script_timeattack_refresh_sstate = true
end)


--one box around the game, one box around it for hitbox limits, set to false when in the menu special resolution (its pointless there)
if script_game_box_on == true then
gui.drawBox(script_game_box[1], script_game_box[2], script_game_box[3], script_game_box[4], script_game_box[5], script_game_box[6]) --game box
gui.drawBox(script_hitbox_box[1], script_hitbox_box[2], script_hitbox_box[3], script_hitbox_box[4], script_hitbox_box[5], script_hitbox_box[6]) --objects box limits
end



if script_position == true then position() end
if script_player_hitbox == true then playerhitbox() end
if script_info_time == true then info_time() end
if script_vpad == true then vpad() end
if script_relic == true then relic() end
if script_gear == true then gear() end
if script_rng == true then rng() end
if script_timeattack == true then timeattack() end
if script_familiar == true then familiar() end
if script_player_statA == true then playerstatA() end
if script_status_box == true then status() end
if script_player_monitor == true then playermonitor() end
if script_player_statB == true then playerstatB() end


if stopHitbox == false then DisplayObjectHitbox() end
if stopMap == false then minimap() end
if zstopMap == true then 
minimap()
gui.DrawFinish()
gui.clearImageCache()
client.screenshot('.\\map.png')
zstopMap = false 
stopMap = true 
end


buttonMap()
buttonHitbox()
drawMapCursor()

 toto = (collectgarbage("count"))
 gui.drawText(300, 50, toto, "white", nil, 12, "Impact", nil, nil, nil)


--collectgarbage("count")

if totalRoomsStorage ~= stat_rooms then
totalRoomsStorage = stat_rooms -- we update this after minimap so that it can read it next time
if stopMap == true then zstopMap = true end
end


if script_room_count ~= stat_rooms then
script_room_count = stat_rooms
end

if wait < max_wait then wait = wait + 1 else wait = 0 end --inhouse wait super function lol
event.onloadstate(function() gui.DrawFinish() end)--hmmm this mean it draw before you start emulation, nice !
emu.frameadvance()
end
