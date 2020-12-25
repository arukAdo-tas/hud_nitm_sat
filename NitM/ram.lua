--[[
Reading the ram, and comments about it
We will use all those data in the script, so we init all those before the loop
]]
------------------------------------------------------------------------------------------------------------------------------------


--[[
0x05CD70 looks perfect to make a general check, player properties for script/menu/stop/load
values :
-5 normal in game state
-112 is stop screen, HR or cutscene whatever (poking to 5 while this is up will let you move)
-113 (then a frame later) 114 the game is loading, after a while it will go at 3 then 4 then finally 5 when your back to ingame
-135 is cutscene or opening menu
-240 then 241(a frame later) then 243(a frame later) is a sequence to open the menu, it freeze screen update
-131 is when fading from game to menu, then 135 for a long time, then 0(?) then 6 and you are in menu (and next byte is set to 4)
-132 144 155 when you are teleporting
poking to 132 will make "now loading" appears
-6 inside main menu
-7 inventory submenu
-8 spells submenu
-9 is relics submenu
-10 is options submenu
-11 is familiars
-21 is map
-160 is richter "pause", 161 162 while its "loading" (those values will freeze alucard)
poking to zero will do some unexcepted stuff

0x05CD72 = 4 inside menu = 1 ingame
0x05CD74 = 1 inside menu = 4 ingame
while you are richter those 2 address wont show the value 4 and 1, but instead 1 and 0

0x05CD7C seems to be the menu submenu selection
0x05CD7A is related to loading the menu or loading stuff and the submenus, 
its 1 inside menu, then 2 or more in subs, and most the time get to 0 when you load stuff, but 0 when ingame
]]
--player_script = memory.readbyterange(0x05CD70, 5, "Work Ram High")--im reading 16, but 5 was enough
player_script = memory.readbyterange(0x05CD70, 16, "Work Ram High")--maybe I can do more stuff now?lol
------------------------------------------------------------------------------------------------------------------------------------
--[[
relic byte is set to 0 if you dont have it, 1 if you have it turned off, 3 if you have it turned on
alucard start in entrance with everything set at 0,
maria/richter have a few set to 3, and the whole rest set to 1, thats why the savebug is so "good"
note that maria and richter can pick up relics too, but because its all set to 1 you wont see them in "normal" conditions
thats some extra lazyness to make a new game mode without even having to code it
-- relic_start = 0x05C6F0
-- relic_stop = 0x05C70F
-- relic_bat_fire = (memory.readbyte(0x05C6F0))
-- relic_bat_soul = (memory.readbyte(0x05C6F1))
-- relic_bat_echo = (memory.readbyte(0x05C6F2))
-- relic_bat_power = (memory.readbyte(0x05C6F3))
-- relic_wolf_power = (memory.readbyte(0x05C6F4))
-- relic_wolf_soul = (memory.readbyte(0x05C6F5))
-- relic_mist_form = (memory.readbyte(0x05C6F6))
-- relic_wolf_skill = (memory.readbyte(0x05C6F7))
-- relic_mist_gaz = (memory.readbyte(0x05C6F8))
-- relic_mist_power = (memory.readbyte(0x05C6F9))
-- relic_orb = (memory.readbyte(0x05C6FA))
-- relic_cube = (memory.readbyte(0x05C6FB))
-- relic_stone = (memory.readbyte(0x05C6FC))
-- relic_gravity = (memory.readbyte(0x05C6FD))
-- relic_scroll = (memory.readbyte(0x05C6FE))
-- relic_j = (memory.readbyte(0x05C6FF))
-- relic_merman = (memory.readbyte(0x05C700))
-- relic_open = (memory.readbyte(0x05C701))
-- relic_ghost = (memory.readbyte(0x05C702))
-- relic_bat = (memory.readbyte(0x05C703))
-- relic_demon = (memory.readbyte(0x05C704))
-- relic_fairy = (memory.readbyte(0x05C705))
-- relic_half = (memory.readbyte(0x05C706))
-- relic_sword = (memory.readbyte(0x05C707))
-- relic_heart = (memory.readbyte(0x05C708))
-- relic_nose = (memory.readbyte(0x05C709))
-- relic_bone = (memory.readbyte(0x05C70A))
-- relic_nail = (memory.readbyte(0x05C70B))
-- relic_eye = (memory.readbyte(0x05C70C))
-- relic_ring = (memory.readbyte(0x05C70D))
-- relic_fake = (memory.readbyte(0x05C70E))
-- relic_speed = (memory.readbyte(0x05C70F))
]]
relic_data = memory.readbyterange(0x05C6F0, 32, "Work Ram High")
------------------------------------------------------------------------------------------------------------------------------------
--[[
The time attack data are stored as folowing:
-- timeattack_start = 0x05D830
-- timeattack_stop = 0x05D89F
--0x05D830-0x05D833 -- "Richter defeats Dracula",
--0x05D834-0x05D837 -- "Defeat Olrox",	
--0x05D838-0x05D83B -- "Defeat Doppleganger 10",
--0x05D83C-0x05D83F -- "Defeat Granfaloon",
--0x05D840-0x05D843 -- "Defeat Minotaur and Werewolf",
--0x05D844-0x05D847 -- "Defeat Scylla",
--0x05D848-0x05D84B -- "Defeat Solgra and Gaibon",
--0x05D84C-0x05D84F -- "Defeat Hippogryph",
--0x05D850-0x05D853 -- "Defeat Beelzebub",
--0x05D854-0x05D857 -- "Defeat Succubus",
--0x05D858-0x05D85B -- "Defeat Karasuman",
--0x05D85C-0x05D85F -- "Defeat Ralph, Grant & Sypha",
--0x05D860-0x05D863 -- "Defeat Death",
--0x05D864-0x05D867 -- "Defeat Cerberus",
--0x05D868-0x05D86B -- "Save Richter Belmont",
--0x05D86C-0x05D86F -- "Defeat Medusa",
--0x05D870-0x05D873 -- "Defeat The Creature",
--0x05D874-0x05D877 -- "Defeat Lesser Demon",
--0x05D878-0x05D87B -- "Defeat Doppleganger 40",
--0x05D87C-0x05D87F -- "Defeat Akmodan II",
--0x05D880-0x05D883 -- "Defeat Darkwing Bat",
--0x05D884-0x05D887 -- "Defeat Galamoth",
--0x05D888-0x05D88B -- "Defeat Skeleton Leader",
--0x05D88C-0x05D88F -- "Final Save point",
--0x05D890-0x05D893 -- "Meeting with Death",
--0x05D894-0x05D897 -- "Get Holy Glasses from Maria",
--0x05D898-0x05D89B -- "Meeting with Master Librarian",
--0x05D89C-0x05D89F -- "First Maria meeting",
each event is represented by 4 byte of data, who are the actual time data of sayd event, there is 28 events in total
the game generate the list values realtime, when you beat a boss, or do cutscene, it set the bytes data (time)
if its zero, the game consider the event didnt happen, when the game load a new "area" it read the data (not after, not before)
if the data is zero, it knows that the area layout is free of sayd boss/cutscene, 
basicly in the game code at the "now loading" function, there is a {if time_attack_data == 0 do boss else do no boss end}
the time data are structured as follow, if you read them as 4 different bytes, but maybe its a 4bytes data with different endian
-byte1 is hours multiplicative
-byte2 is a control byte that is NEVER set by the game, it is always zero you can ignore it
-byte3 is minute mutiplicative
-byte4 is seconds by addition
time = byte1*(256*byte3)+byte4
if byte1 = 0 then remove it from equation, if byte3 = 0 then remove it from equation
the result is always the time, from there you just convert it into 00:00:00 format for the user
if time is 290 then the result is 00:02:90, if time is 475899 the result is 47:58:99
the game doesnt care to display wrong info, as the only mean to set those sayd wrong info is to actually do the associated boss
when you go in time attack screen inside the menu, the game generate the list to display
it use the time value from the equation to sort from lowest value to highest value
if several boss/cutscene are set to identical value (the game does this when you play as richter/maria, set to 00:00:01)
then it will order the list for those events in the byte list order, first maria meeting will be last entry, minotaur first one
]]
time_attack_data = memory.readbyterange(0x05D830, 112, "Work Ram High")
------------------------------------------------------------------------------------------------------------------------------------
--[[
the level of a familiar is base address, +4 is the experience, 
+5 is a modulo/factor/whatever the fuck to make exp increase slower than previous lvl
reversing the equation is necessary if you want to read accurate experience value 
address +8 is a counter of the numouse_Ber of time you invoked the familiar (wtf?)
-- familiar_start = 0x05C9EA
-- familiar_stop = 0x05CA3E
-- familiar_bat_level = memory.readbyte(0x05C9EA)
-- familiar_ghost_level = memory.readbyte(0x05C9F6)
-- familiar_fairy_level = memory.readbyte(0x05CA02)
-- familiar_demon_level = memory.readbyte(0x05CA0E)
-- familiar_sword_level = memory.readbyte(0x05CA1A)
-- familiar_half_level = memory.readbyte(0x05CA26)
-- familiar_nose_level = memory.readbyte(0x05CA32)
]]
familiar_data = memory.readbyterange(0x05C9EA, 85, "Work Ram High")
------------------------------------------------------------------------------------------------------------------------------------
--[[
gear data is stored in those address, they are represented by a unique ID per item (see gear table)
wether they are 1, 2 or 4 bytes im not really sure, nor it matters
gear_start = 0x05C9A2
gear_stop = 0x05C9BE
player_first_hand = (memory.readbyte(0x05C9A2))
player_second_hand = (memory.readbyte(0x05C9A6))
player_third_hand = (memory.readbyte(0x05C9AA))
player_head = (memory.readbyte(0x05C9AE))
player_armor = (memory.readbyte(0x05C9B2))
player_cape = (memory.readbyte(0x05C9B6))
player_first_accessory = (memory.readbyte(0x05C9BA))
player_second_accessory = (memory.readbyte(0x05C9BE))
]]
gear_data = memory.readbyterange(0x05C9A2, 29, "Work Ram High")
------------------------------------------------------------------------------------------------------------------------------------
--[[
-- gametime_start = 0x05C9D6
-- gametime_stop = 0x05C9DE
-- stat_gametime_hours = (memory.readbyte(0x05C9D6))
-- stat_gametime_minutes = (memory.readbyte(0x05C9DA))
-- stat_gametime_seconds = (memory.readbyte(0x05C9DE))
]]
stat_gametime_data = memory.readbyterange(0x05C9D6, 10, "Work Ram High")
------------------------------------------------------------------------------------------------------------------------------------
--[[
-- player_status_poison_timer = (memory.readbyte(0x05C508))
-- player_status_poison_mult = (memory.readbyte(0x05C509))
-- player_status_curse_timer = (memory.readbyte(0x05C50A))
-- player_status_curse_mult = (memory.readbyte(0x05C50B))
-- player_invincible_timer = (memory.readbyte(0x05C524))
-- player_status_flag = (memory.readbyte(0x05C526))
-- player_status_stoneA = (memory.readbyte(0x05C536))
-- player_air = (memory.readbyte(0x05c537))--0x05c53b copy?
-- player_status_stoneB = (memory.readbyte(0x05C53A))
]]
player_status_data = memory.readbyterange(0x05C508, 33, "Work Ram High")

player_status_poison_timer = player_status_data[0]
player_status_poison_mult = player_status_data[1]
player_status_curse_timer = player_status_data[2]
player_status_curse_mult = player_status_data[3]
player_invincible_timer = player_status_data[28]
player_status_flag = player_status_data[30]
player_status_stoneA = player_status_data[46]
player_air = player_status_data[47]
player_status_stoneB = player_status_data[50]
------------------------------------------------------------------------------------------------------------------------------------
--[[
Logic for rooms:
The player position data is linked to map data, they both depend on another and are generated realtime by the game
the logic behind this is that whenever the player reach an absolute X position value equal to a power of 320, 
the current room increase/decrease by 1 on the grid X axis, compared to the grid X origin, the X size of a room is 320
when the player reach an absolute Y position value equal to a power of 255, 
the current room increase/decrease by 1 on the grid Y axis, compared to the grid Y origin, the Y size of a room is 255
While this may sound simple put like this, the calculation the script must do to emulate this behavior isnt
the game doesnt store the current room anywhere (or I didnt found it)
but the game store the grid X/Y origin, as well its min/max size on grid, once you know that,
whenever you "change" room, the current room is calculated on the grid, but never stored in ram as a grid info...
instead it is stored as a map data (!), the game simply set the bit for this specific square on the map data (and increase room counter)
the max/min values are used to define where the game stop you, the number of room sizes define how many rooms the game handle,
theres not so many of them, the whole rest (castle, area) is just a math construct around them
when you load a level, you simply load the textures and such, the grid data, and he "construct" the rooms 1 by 1 and by their size,
so there is never a need to copy the "current" room data in ram, I think it would be pointless for them, it would require a check,
and you wouldnt be able to glitch the white "rooms" at all. It is unintended side effect of lazyness on the maths behind rooms logic.
note if the room is min/max of 1 both X and Y then the current room is always the origin, of course.

-- room_X_max_grid = (memory.readbyte(0x05CE72))
-- room_X_min_grid = (memory.readbyte(0x05CE6A))
-- room_Y_max_grid = (memory.readbyte(0x05CE6E))
-- room_Y_min_grid = (memory.readbyte(0x05CE76))
-- room_X_size_grid = (memory.readbyte(0x05CE5E))
-- room_Y_size_grid = (memory.readbyte(0x05CE62))
-- room_X_origin_grid = memory.readbyte(0x05D75E)
-- room_Y_origin_grid = memory.readbyte(0x05D762)
]]

room_data = memory.readbyterange(0x05CE5E, 25, "Work Ram High")

room_X_size_grid = room_data[0]
room_Y_size_grid = room_data[4]
room_X_min_grid = room_data[12]
room_Y_max_grid = room_data[16]
room_X_max_grid = room_data[20]
room_Y_min_grid = room_data[24]

room_data_bis = memory.readbyterange(0x05D75E, 5, "Work Ram High")

room_X_origin_grid = room_data_bis[0]--(memory.readbyte(0x05D75E))
room_Y_origin_grid = room_data_bis[4]--(memory.readbyte(0x05D762))
------------------------------------------------------------------------------------------------------------------------------------
--[[
Logic for map data:
so whenever your grid position increase/decrease (see above), it set the bit for the corresponding square on the png
the map is simply a png, with an overlay like a chess board, the game compute the overlay only when you call the map inside the menu
the map data start is the correct address, but you can set 4 bytes before it, im unsure why, and I dont think it matters much
the data are stored as bits, each square is a pair of bits, there is 4 squares per bytes (8bits), 
there is 64 squares per row (16 bytes), for a total of 128 rows, that would be 16bytesx128 = 2048 bytes of data, or 8192 squares
the end address correspond to 128 rows, the png doesnt show that much, wether the rows "exist" or not is irrelevant,
the castle is 51 row size, 4 before it, and there is 16 rows between first and second castle data, 4+51+16+51=122
the "second" castle is the same png shifted 90° toward right twice, the positions are the same except the axis are reverse
you only have to interpret the grid data backward, theres a small exception in the inverted "lake", theres 2 extra blue square
so theres actually 2 copy of the png
All that been sayd, first byte are the 4 squares on the right, second byte are the 4 squares on left, 
and we read a row from left to right...could be just endian issue, or how they reverse the logic for second castle, 
anyway its how it works, and how the script sort the byte to square binary relationship
note that the actual 3 possible data for any given square(pair of bit) is either off (black) on (nothing) transparent (librarian map)
on psx the librarian map isnt transparent but instead its greyscale
-- map_data_start = 0x05CEC0
-- map_data_stop = 0x05D6BF
]]

map_data_ram = memory.readbyterange(0x05CEC0, 128, "Work Ram High")
--32 x 12 x 32 x 0  crop setting to take a screenshot and remove the scanlines
------------------------------------------------------------------------------------------------------------------------------------



