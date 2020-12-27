function player_hitbox()
-- Alucard/Richter/Maria hurtbox / colision box 
-- need a serious re-check on the drawing offset
-- it is call every frame or it make no sence
	local prop = { player_X_position_relative, player_Y_position_relative, player_X_hitbox_radius, player_Y_hitbox_radius, player_X_hitbox_offset, player_Y_hitbox_offset, 
	312, 83, --offset X/Y
	0xDF0000FF, nil, --line/fill
	0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil,
	familiar_X_position, familiar_Y_position }
	local val = { 
	prop[1] + prop[5] - prop[3] + prop[7], 
	prop[2] + prop[6] - prop[4] + prop[8], 
	prop[1] + prop[5] + prop[3] + prop[7], 
	prop[2] + prop[6] + prop[4] + prop[8] }
--  useless?
	if player_orientation == 0 then 
	player_X_hitbox_offset = player_X_hitbox_offset +2 
	end
--DRAW THE PLAYER HITBOX
	gui.drawBox(val[1], val[2], val[3], val[4], prop[9], prop[10])
--DRAW PLAYER HITBOX RAMWATCH
	if script_debug == true then
	gui.drawText(val[3] + 10, val[2] - 35, "x"..prop[1], prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])
	gui.drawText(val[3] + 10, val[2] - 25, "y"..prop[2], prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])
	gui.drawText(val[3] + 10, val[2] - 15, "absX "..player_X_position_absolute, prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])			
	gui.drawText(val[3] + 10, val[2] - 5, "absY "..player_Y_position_absolute, prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])
	gui.drawText(val[3] + 10, val[2] + 5, "subX "..player_X_subpixel, prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])			
	gui.drawText(val[3] + 10, val[2] + 15, "subY "..player_Y_subpixel, prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])			
	gui.drawText(val[3] + 10, val[2] + 25, "spdX "..player_X_speed, prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])			
	gui.drawText(val[3] + 10, val[2] + 35, "spdY "..player_Y_speed, prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])			
	gui.drawText(val[3] + 10, val[2] + 45, "rad"..prop[3], prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])
	gui.drawText(val[3] + 10, val[2] + 55, "rad"..prop[4], prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])
	gui.drawText(val[3] + 10, val[2] + 65, "off"..prop[5], prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])
	gui.drawText(val[3] + 10, val[2] + 75, "off"..prop[6], prop[11], prop[12], prop[13], prop[14], prop[15], prop[16], prop[17])			
	end
	if relic_data[19] == 3 or relic_data[18] == 3 or relic_data[20] == 3 or relic_data[21] == 3 or relic_data[22] == 3 or relic_data[23] == 3 or relic_data[25] == 3 then --theres a familiar up
		gui.drawRectangle(prop[18] + prop[7]-10, prop[19] + prop[8]-10, 10, 10, 0xAFFFFF00, nil)
	end
	prop = nil
	val = nil
end
--------------------------------



function objects_hitbox()
	if script_debug then objectHitboxRamWatch = true else objectHitboxRamWatch = false end
	local objectHitboxRamWatchColor = 0xFFFFFFFF
	local objectHitboxRamWatchSize = 8
	local objectHitboxRamWatchFont = "Microsoft Sans Serif" --"Ebrima"
	local objectHitboxLine = 0xDFFF0000
	local objectHitboxFill = 0xc3FF0000
	local objectHitboxDrawingOffsetX = 315  --was 280 in alpha1
	local objectHitboxDrawingOffsetY = 80

--	local objectBase =  0x09A000 --0x099f20 --0x09A0B8  --0x09CBB8 the door prologue 0x09F9b8 the switch prologue --0x09d178 dracula prologue


--start at 9A000(99FE0) stop at A4FFF (A5000)
objectList = {}
for i = 0, 244, 1 do
	local cur = memory.readbyte(0x099FE0 + ((i)*184) + 44)	--object block is 184 byte long
	if cur > 0 then
		local val = bizstring.hex(0x099FE0 + ((i)*184))
		table.insert(objectList, "0x0"..val)
	end
end


local weapon_obj_id = {}
local obj_id = {}
local player_obj_id = {}
if alucard then weapon_obj_id = alucardW_obj_id player_obj_id = alucard_obj_id end
if richter then weapon_obj_id = richterW_obj_id player_obj_id = richter_obj_id end
if maria then weapon_obj_id = mariaW_obj_id player_obj_id = maria_obj_id  end

if area_ID == "pro" then obj_id = pro_obj_id weapon_obj_id = {} end --prologue
if area_ID == "cata" then obj_id = cata_obj_id end
if area_ID == "cave" then obj_id = cave_obj_id end
if area_ID == "central" then obj_id = central_obj_id end
if area_ID == "chapel" then obj_id = chapel_obj_id end
if area_ID == "clock" then obj_id = clock_obj_id end
if area_ID == "colos" then obj_id = colos_obj_id end
if area_ID == "garden" then obj_id = garden_obj_id end
if area_ID == "gate" then obj_id = gateA_obj_id end
if area_ID == "forest" then obj_id = gate_obj_id end
if area_ID == "keep" then obj_id = keep_obj_id end
if area_ID == "lab" then obj_id = lab_obj_id end
if area_ID == "lib" then obj_id = lib_obj_id end
if area_ID == "marble" then obj_id = marble_obj_id end
if area_ID == "mine" then obj_id = mine_obj_id end
if area_ID == "olrox" then obj_id = olrox_obj_id end
if area_ID == "wall" then obj_id = wall_obj_id end
if area_ID == "Rcata" then obj_id = Rcata_obj_id end
if area_ID == "Rcave" then obj_id = Rcave_obj_id end
if area_ID == "Rcentral" then obj_id = Rcentral_obj_id end
if area_ID == "Rchapel" then obj_id = Rchapel_obj_id end
if area_ID == "Rclock" then obj_id = Rclock_obj_id end
if area_ID == "Rcolos" then obj_id = Rcolos_obj_id end
if area_ID == "Rgarden" then obj_id = Rgarden_obj_id end
if area_ID == "Rgate" then obj_id = Rgate_obj_id end
if area_ID == "Rkeep" then obj_id = Rkeep_obj_id end
if area_ID == "Rlab" then obj_id = Rlab_obj_id end
if area_ID == "Rlib" then obj_id = Rlib_obj_id end
if area_ID == "Rmarble" then obj_id = Rmarble_obj_id end
if area_ID == "Rmine" then obj_id = Rmine_obj_id end
if area_ID == "Rolrox" then obj_id = Rolrox_obj_id end
if area_ID == "Rwall" then obj_id = Rwall_obj_id end

if script_debug then debug_data = debug_data.." total objects:"..#objectList end

for i = 1, #objectList do
--WE FOUND AN OBJECT, LETS GATHER THE DATA FROM IT
	local obj_type = "unknow"
	local object_ID = memory.read_u32_be(objectList[i] + 40)
	for i = 1, #weapon_obj_id do
		if object_ID == weapon_obj_id[i] then 
			obj_type = weapon_obj_id[i+1] 
		end
	end
	if obj_type == "unknow" then --its not a player prop, keep searching
		for i = 1, #player_obj_id do
			if object_ID == player_obj_id[i] then 
				obj_type = player_obj_id[i+1] 
			end
		end
	end
	if obj_type == "unknow" then --its not a player prop, keep searching
		for i = 1, #obj_id do
			if object_ID == obj_id[i] then 
				obj_type = obj_id[i+1] 
			end
		end
	end
	if script_debug and obj_type == "unknow" then debug_data = debug_data.."  ??#"..i.."-id:"..object_ID end
	


	
	local object_X_position_relative = memory.read_s16_le(objectList[i] + 4)--0x09d17c)
	local object_Y_position_relative = memory.read_s16_le(objectList[i] + 8)--0x09d180)
	local object_X_hitbox_radius = memory.readbyte(objectList[i] + 69)
	local object_Y_hitbox_radius = memory.readbyte(objectList[i] + 68)
	local object_X_speed = memory.read_s8(objectList[i] + 12)
	local object_Y_speed = memory.read_s8(objectList[i] + 16)
	local object_timer = memory.readbyte(objectList[i] + 104)

	local object_X_hitbox_offset = 0 -- this is useless (except swords dont work...)
	local object_Y_hitbox_offset = memory.readbyte(objectList[i] + 104)



--LOGIC TO DETERMINE WHAT IS THE OBJECT WE FOUND


if obj_type == "player" or obj_type == "sword" then objectHitboxLine = 0xDFFFFF00 objectHitboxFill = 0x3CFFFF00 end -- yellow
if obj_type == "monster" then objectHitboxLine = 0xDFFF0000 objectHitboxFill = 0x3CFF0000 end --red
--if obj_type == "attack" then objectHitboxLine = 0xDFFF6D00 objectHitboxFill = 0x3CFF6D00  end --orange
if obj_type == "attack" then objectHitboxLine = 0xFFFF0000 objectHitboxFill = Zcolor[1]  end --red
if obj_type == "cast" then objectHitboxLine = 0xDF52a7ff objectHitboxFill = Zcolor[57] end --flash blue
if obj_type == "morph" then objectHitboxLine = 0xDF0000FF objectHitboxFill = 0x000000FF end --blue
if obj_type == "trail" then objectHitboxLine = 0xDFFF00E6 objectHitboxFill = Zcolor[33] end --flash pink
if obj_type == "particule" then objectHitboxLine = 0xDFFFAF52 objectHitboxFill = Zcolor[41] end --light orange
if obj_type == "dust" then objectHitboxLine = 0xDFCFCFCF objectHitboxFill = Zcolor[81] end --grey
if obj_type == "hud" then objectHitboxLine = 0xDF00FF00 objectHitboxFill = Zcolor[9] end --flash green
if obj_type == "candle" then objectHitboxLine = 0xDF008808 objectHitboxFill = 0x3C008808 end --dark green
if obj_type == "pick" or obj_type == "toss" or obj_type == "npc" then objectHitboxLine = 0xDF00FF00 objectHitboxFill = 0x3C00FF00 end --green
if obj_type == "scene" then objectHitboxLine = 0xDF00FFFF objectHitboxFill = 0x3C00FFFF end --cyan
if obj_type == "unknow" then objectHitboxLine = Zcolor[wait] objectHitboxFill = Zcolor[wait+9] end --flash

if obj_type == "sword" then
--object_X_position_relative = object_X_position_relative +64
--local val = memory.readbyte(objectList[i] + 102)
-- object_X_hitbox_offset = object_X_hitbox_offset - (val*2)
-- local val = memory.readbyte(objectList[i] + 80)
--print(val)
--object_Y_position_relative = memory.readbyte(objectList[i] + 62)
--object_X_position_relative = object_X_position_relative + object_X_hitbox_radius + memory.readbyte(objectList[i] + 70)
end


if script_debug then if obj_type == "unknow" then objectHitboxLine = "white" objectHitboxFill = "white" end end

if object_X_hitbox_radius == 0 or object_X_hitbox_radius == 1 then object_X_hitbox_radius = 2 end
if object_Y_hitbox_radius == 0 or object_Y_hitbox_radius == 1 then object_Y_hitbox_radius = 2 end

if obj_type == "npc" and object_X_hitbox_radius <= 3 then object_X_hitbox_radius = 10 end
if obj_type == "npc" and object_Y_hitbox_radius <= 3 then object_Y_hitbox_radius = 20 end


if cursor_joker_speed == 5 then objectHitboxLine = Zcolor[wait_long] objectHitboxFill = Zcolor[wait+9] end --rgb mode

--DRAW THE OBJECT HITBOX
if object_X_position_relative ~= 0 
and object_Y_position_relative ~= 0 
and object_X_position_relative >= -30
and object_X_position_relative <= 360
and object_Y_position_relative >= -30
and object_Y_position_relative <= 270
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
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY -26,
	""..obj_type,
	objectHitboxRamWatchColor, nil, 9, objectHitboxRamWatchFont, nil, nil, nil)
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX -10,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY -18,
	"id "..object_ID,
	objectHitboxRamWatchColor, nil, 9, objectHitboxRamWatchFont, nil, nil, nil)
	gui.drawText(
	object_X_position_relative + object_X_hitbox_offset - object_X_hitbox_radius + objectHitboxDrawingOffsetX -10,
	object_Y_position_relative + object_Y_hitbox_offset - object_Y_hitbox_radius + objectHitboxDrawingOffsetY -10,
	""..objectList[i],
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
obj_id = nil
end
--------------------------------

