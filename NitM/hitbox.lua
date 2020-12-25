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

local weapon_obj_id = {
-- shuriken / cross shuriken / bwaka knife / Power of Sire / Bat Pentagram / Pentagram / Buffalo Star / Dynamite / Flame Star / Morning Star
-- shuriken / cross shuriken / bwaka knife / Power of Sire / Bat Pentagram / Pentagram / Buffalo Star / Dynamite / Flame Star / Morning Star
-- shield, rod, swords, many things
218507361, "sword",		--first hand 
218507409, "sword",		--second hand 
218538082, "sword",		--2hand - first hand
218538130, "sword",		--2hand - second hand
--
218508385, "toss",			--toss Karma Coin - first hand
218508433, "toss",			--toss Karma Coin - second hand
218532971, "particule",		--Karma Coin feather
218543202, "player",		--magic missile arrow - first hand
218548370, "player",		--magic missile arrow - second hand
218530915, "particule",		--power of sire stars - first hand
218535059, "particule",		--power of sire stars - second hand
218501229, "player",		--iron ball - first hand
218507421, "player",		--iron ball - second hand
218506344, "player",		--javelin - first hand
218510488, "player",		--javelin - second hand
218558562, "toss",			--toss monster vial2 - first hand
218558610, "toss",			--toss monster vial2 - second hand
218551396, "player",		--monster vial2 summon - first hand
218557588, "player",		--monster vial2 summon - second hand
218510433, "toss",			--toss monster vial1/3 - first hand
218510481, "toss",			--toss monster vial1/3 - second hand
218528867, "player",		--monster vial1 summon - first hand
218534035, "player",		--monster vial1 summon - second hand
218542181, "player",		--monster vial1 fireball - first hand
218547349, "player",		--monster vial1 fireball - second hand
218503271, "particule",		--despawn monster vial1 - first hand
218508439, "particule",		--despawn monster vial1 - second hand
218524771, "player",		--monster vial3 summon - first hand
218528915, "player",		--monster vial3 summon - second hand
218535013, "player",		--monster vial3 bone - first hand
218539157, "player",		--monster vial3 bone - second hand
218560615, "particule",		--despawn monster vial3 - first hand
218499224, "particule",		--despawn monster vial3 - second hand
218508389, "player",		--boomrang - first hand
218510485, "player",		--boomrang - second hand
218525798, "toss",			--toss tnt - first hand
218529942, "toss",			--toss tnt - second hand
218525804, "player",		--tnt boom - first hand
218531996, "player",		--tnt boom - second hand
218499172, "trail",			--trail - first hand / boomrang / bwaka knife /
218501268, "trail",			--trail - second hand / boomrang / bwaka knife / 
218550379, "particule",		--fire boomrang trail - first hand
218556571, "particule",		--fire boomrang trail - second hand
218505316, "trail",			--trail - first hand / Buffalo Star 
218509460, "trail",			--trail - second hand / Buffalo Star
218510437, "particule",		--Flame Star trail - first hand
218514581, "particule",		--Flame Star trail - second hand
218515558, "trail",			--Heaven Sword + iron shield cast ? trail - first hand
218519702, "trail",			--Heaven Sword trail - second hand
218553450, "trail",			--Shakram trail - first hand
218555546, "trail",			--Shakram trail - second hand
218521703, "particule",		--Dynamite boom flares - first hand
218526871, "particule",		--Dynamite boom flares - second hand
218524775, "player",		--Moon Rod special - first hand
218552466, "player",		--Moon Rod special - second hand
218545255, "cast",			--Astral Dagger cast - first hand
218548375, "cast",			--Astral Dagger cast - second hand
218550371, "player",		--Astral Dagger special - first hand
218553491, "player",		--Astral Dagger special - second hand
218548322, "player",		--Shotel special - first hand
185007284, "player",		--Shotel special - second hand
218520682, "toss",			--Jewel Sword coins - first hand
218527898, "toss",			--Jewel Sword coins - second hand
218518629, "particule",		--Jewel Sword particles - second hand
218525845, "particule",		--Jewel Sword particles - second hand
218497171, "player",		--Werebane special - first hand
218497171, "player",		--Werebane special - second hand
218520678, "player",		--Shakram - first hand
218520726, "player",		--Shakram - second hand
218551401, "player",		--Rune Sword trow - first hand
218555545, "player",		--Rune Sword trow - second hand
218498154, "player",		--Icebrand special - first hand
218504346, "player",		--Icebrand special - second hand
218504301, "particule",		--Icebrand particles - first hand
218510493, "particule",		--Icebrand particles - second hand
218522726, "cast",			--Icebrand cast - first hand
218528918, "cast",			--Icebrand cast - second hand
218513505, "player",		--Alucard/t Sword - first hand
218513553, "player",		--Alucard/t Sword - second hand
218532964, "particule",			--Thunderbrand particles - first hand
218539156, "particule",			--Thunderbrand particles - second hand
218512489, "cast",			--Thunderbrand cast - first hand
218518681, "cast",			--Thunderbrand cast - second hand
218536036, "cast",			--Firebrand cast - first hand
218541204, "cast",			--Firebrand cast - second hand
218546280, "particule",		--Firebrand/Marsil particles - first hand
218551448, "particule",		--Firebrand/Marsil particles - second hand
218527847, "trail",			--Claymore/Firebrand trail - first hand
218533015, "trail",			--Firebrand trail - second hand
218535063, "trail",			--Claymore trail - second hand
218529893, "particule",		--Alucard Sword teleport - first hand
218535061, "particule",		--Alucard Sword teleport - second hand
218497128, "player",		--Alucard Sword teleport slash - first hand
218502296, "player",		--Alucard Sword teleport slash - second hand
218557538, "player",		--Holy Sword special - first hand
218561682, "player",		--Holy Sword special - second hand
218515563, "cast",			--Marsil cast - first hand
218523803, "cast",			--Marsil cast - second hand
218533997, "player",		--Marsil fireball / axelord shield summon - first hand
218542237, "player",		--Marsil fireball / axelord shield summon - second hand
218549351, "player",		--Ironfist / Fist of Tulkas special - first hand
218549399, "player",		--Ironfist / Fist of Tulkas special - second hand
218502251, "player",		--Fist of Tulkas special - first hand
218502299, "player",		--Fist of Tulkas special - second hand
218548326, "player",		--Blue Knuckles - first hand
218548374, "player",		--Blue Knuckles - second hand
218505317, "player",		--Claymore special - first hand
218509461, "player",		--Claymore special - second hand
218541154, "cast",			--Sword of Dawn cast - first hand
218527888, "cast",			--Sword of Dawn cast - second hand
218521744, "cast",			--Sword of Dawn cast - third
218521707, "player",		--Sword of Dawn sumon
218524826, "player",		--Sword of Dawn sumon - arrow
218543262, "player",		--Sword of Dawn sumon - hellfire ball (particles from it too)
218507363, "player",		--katana (and other katana) slice motion - first hand
218512531, "player",		--katana (and other katana) slice motion - second hand
218544229, "particule",		--Masamune (and other katana) teleport - first hand
218549397, "particule",		--Masamune (and other katana) teleport - second hand
218522724, "player",		--Alucard Spear special - first hand
218531988, "player",		--Alucard Spear special - second hand
218509414, "particule",		--Alucard Spear particules - first hand
218523798, "particule",		--Alucard Spear particules - second hand
218526824, "player",		--Osafune Katana - first hand
218531992, "player",		--Osafune Katana - second hand
218515557, "player",		--Muramasa - first hand
218520725, "player",		--Muramasa - second hand
218501267, "player",		--shieldrod special - first hand
218561634, "player",		--shieldrod special - second hand
218533014, "particule",		--shieldrod particule - first hand
218527846, "particule",		--shieldrod particule - second hand
218511509, "cast",		--shieldrod alucart cast - first hand
218511461, "cast",		--shieldrod alucart cast - second hand
218504341, "cast",		--shieldrod leather/goddess/axelord cast - first hand
218504293, "cast",		--shieldrod leather/iron/axelord cast - second hand
218507365, "cast",		--shieldrod shaman shield cast - first hand
218507365, "cast",		--shieldrod shaman shield cast - second hand
218517654, "cast",		--shieldrod alucard shield cast - first hand
218507413, "cast",		--shieldrod alucard shield cast - second hand
218497175, "cast",		--shieldrod fire shield cast - first hand
218497127, "cast",		--shieldrod fire shield cast - second hand
218553508, "player",		--fire shield body - first hand
218549403, "player",		--fire shield heads - first hand
218552436, "player",		--fire shield body - second hand
218548331, "player",		--fire shield heads - second hand
218549408, "particule",		--shaman shield effect (no hitbox?) - first hand
218548336, "particule",		--shaman shield effect (no hitbox?) - second hand
218515612, "particule",		--herald shield effect - first hand
218514540, "particule",		--herald shield effect - second hand
218535070, "particule",		--goddess shield effect - first hand
218535022, "particule",		--goddess shield effect - second hand
218537061, "cast",			--shieldrod iron/skull shield cast - first hand
218515606, "cast",			--shieldrod iron shield cast - second hand
218551452, "player",		--iron shield attack - first hand
218551404, "player",		--iron shield attack - second hand
218535069, "player",		--axe lord summon - first hand
218499222, "cast",			--shieldrod dark shield cast - first hand
218499174, "cast",			--shieldrod dark shield cast - second hand
218497134, "player",		--dark shield attack - first hand
218497182, "player",		--dark shield attack - second hand
218522775, "cast",			--shieldrod woodland shield cast - first hand
218522727, "cast",			--shieldrod woodland shield cast - second hand
218527899, "player",		--woodland shield attack - first hand
218526827, "player",		--woodland shield attack - second hand
218513561, "player",		--medusa shield attack heads - first hand
218502306, "player",		--medusa shield attack trail - first hand
218513513, "player",		--medusa shield attack heads - second hand
218501234, "player",		--medusa shield attack trail - second hand
218537109, "cast",			--skull shield cast - first hand
218550428, "player",		--skull shield attack - first hand
218549356, "player",		--skull shield attack - second hand
218526869, "cast",			--herald shield cast - first hand

--218515558, "player",		--shieldrod iron shield animation
--218526821, "cast",		--shieldrod herald shield animation

}


local player_obj_id = {

201738254, "cast",			--lib card

185005093, "toss",			--toss food

-- works for blood trail of the player too...
184960218, "trail",			--gravity jump top
184998102, "trail",			--gravity jump bottom

184994980, "scene",			--particles contact with alucard shield

235336738, "pick",			-- drop
235294763, "pick",			-- drop
235292724, "pick",			-- drop

184971440, "scene",			--after effect persistant (can be the camera/scroll)

184949952, "cast",			--alucard is casting

184971508, "cast",			--an effect is applyed on the player
184980728, "cast",			--an effect is applyed on the player
184981709, "cast",			--an effect is applyed on the player

184969401, "dust",			--alucard dust
235279447, "dust",			--dust from flea armor


184980630, "hud",			--alucard damage number hud
184991901, "hud",			--special effect, poison, stat up ect... (it fly under the mana bar)

184977640, "particule",			--alucard damage thunder effect

184982739, "morph",			--bat morph
201760774, "morph",			--mist

184947826, "morph",		--wolf tail
184969319, "morph",		--wolf top
184980589, "morph",		--wolf head
184980574, "morph",		--wolf extra prop1
184984682, "morph",		--wolf extra prop2
184949878, "morph",		--wolf extra prop3



201781255, "player",		--mist
184973494, "player",		--divekick


201778273, "player",		--clock


201738298, "player",		--fire bat
201756724, "player",		--hellfire teleport
201772088, "player",		--hellfire1
201774139, "player",		--hellfire2
201735257, "player",		--tetraspirit
201757788, "player",		--spirit init
235319387, "player",		--soulsteal
235314270, "player",		--nose attack
218556455, "player",		--familiar sword
201762933, "player",		--bat sonar

184960218, "particule",			--power of sire
235296851, "particule",			--power of sire


252060693, "particule",			--destroy monsters
235308108, "particule",			--destroy monsters2
235287739, "particule",			--destroy dhuron (head)
235275465, "particule",			--ectoplasm bubles
184982717, "particule",			--hellfire particles

}




local pro_obj_id = {
168194251, "dust",			--richter dust
168217802, "player",		--richter dragon punch
168169674, "player",		--richter air dash
184949766, "player",		--richter whip
168174792, "player",		--richter slide
168167625, "player",		--richter flying kick
185006221, "player",		--richter cross
184942739, "trail",			--richter cross trail
184989841, "particule",		--cross particule
184983710, "player",		--holy water bottle
184999075, "player",		--holy water effect
184969366, "player",		--holy water initial flamme

184963226, "cast",		--hydro storm
184973465, "cast",		--hydro storm


218526932, "cast",		--richter talking

218519744, "cast",		--cutscene stuff


168186085, "npc",		--maria
168211681, "npc",		--animal spirits
168176859, "cast",		--richter receive animals spirits
184949899, "cast",		--richter invincible animation

235337746, "scene",			--aftercast persistant effect


168192231, "particule",		--fireball dmg particule
168198359, "particule",		--fireball dmg particule
168206543, "particule",		--fireball dmg particule

235320447, "monster",		--dracula
235330673, "monster",		--dracula face
235313291, "monster",		--dracula 2nd form
235307141, "scene",			--dracula glass

235274369, "attack",		--dracula fireball
235305090, "attack",		--dracula hellfire
235316376, "attack",		--dracula 2nd form fireball

235313284, "particule",		--hellfire particule

168193220, "scene",			--persistant after effect (dmg?)
218501359, "scene",			--staircase switch
218523885, "scene",			--door
218499314, "scene",			--staircase fixed point
218517747, "scene",			--staircase mechanism
218546411, "scene",			--outside bottom
218512611, "scene",			--outside top
235301898, "scene",			--the "final stage" overlay
235318276, "scene",			--the fade out effect

218520796, "candle",		--candle/vase

235309097, "pick",			--drop
235332657, "pick",			--drop

218546397, "scene",			--candle debris
235322457, "particule",		--candle flame

}

local lib_obj_id = {

218547443, "npc",			--librarian
218524869, "scene",			--candle fixed position
218502339, "candle",		--
218543309, "candle",		--chair2/candle...




218518726, "scene",			--unknow property
218517718, "scene",			--unknow property
218502361, "scene",			--unknow property left area
218553567, "scene",			--unknow property left area
218511590, "scene",			--unknow property left area near boss
235281518, "scene",			--saveroom coffin
17193104, "scene",			--saveroom top and bottom
235304035, "scene",			--saveroom left and right
218522828, "scene",			--chair1
218528971, "scene",			--mist gate
235306049, "scene",			--cdroom door
218508515, "scene",			--books barrier for boss
218551495, "scene",			--boss area load box
218537171, "scene",			--right big area background prop
218498257, "scene",			--right big area background prop
218513655, "scene",			--librarian background prop
218529019, "scene",			--librarian background prop
218537199, "scene",			--librarian background prop
235335827, "scene",			--librarian door background prop
218551543, "scene",			--librarian doorway


235314379, "monster",		--plant 53,19
235294927, "monster",		--plant2 53,19
235329749, "monster",		--plant3 53,19
235280600, "monster",		--plant-head 53,19
235329729, "monster",		--ectoplasm
252060685, "monster",		--grey book
235277492, "monster",		--dhuron
252052485, "monster",		--book
235306214, "monster",		--flea armor
235301103, "monster",			--fleaman
235333770, "monster",			--boss lesser demon


235315418, "attack",		--plant-spit 53,19
252059670, "cast",		--book attack (I think...)
235292858, "attack",		--dhuron sword
235301053, "cast",			--dhuron thunder
235302078, "cast",			--dhuron thunder2
235300077, "attack",		--flea armor
235332769, "attack",		--lesser demon
}




local wall_obj_id = {
--235318372, "dust",			-- dust
--235329629, "dust",			-- dust

235316238, "scene",			--camera
235320327, "scene",			--camera2
235327570, "scene",			--cdlr door
235320364, "scene",			--mist gate
218506440, "scene",			--mist gate2
235322445, "scene",			--mist gate text
218545383, "scene",			-- chairs
218535162, "scene",			-- longview
218537198, "scene",			-- birdnest
218500329, "scene",			-- birdnest2
218549481, "npc",			-- bird
235285544, "scene",			-- hidden elevator below
235284509, "scene",			-- hidden elevator above
--

218531011, "candle",		--

--


--
235336922, "monster",		--guardian
252088325, "monster",		--medusa head
--

235334885, "attack",		--guardian wave
235290851, "attack",		--guardian sword

}

local cata_obj_id = {


}

local clock_obj_id = {

235306003, "scene",		--unknow clock tower prop 


}



local obj_id = {}
if area_ID == "lib" then obj_id = lib_obj_id end
if area_ID == "wall" then obj_id = wall_obj_id end
if area_ID == "clock" then obj_id = clock_obj_id end
if area_ID == "pro" then obj_id = pro_obj_id end
if area_ID == "cata" then obj_id = cata_obj_id end

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

end
--------------------------------

