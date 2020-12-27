
--im storing all my hardcoded junk in this seperate lua file

--[[
-graphic objects IDs
]]

richterW_obj_id = {
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
184968326, "player",		--cross crash
184977575, "player",		--cross crash -- the crosses

184963226, "cast",		--hydro storm
184973465, "cast",		--hydro storm
168166636, "cast",		--no subweapon crash
168217837, "cast",		--no subweapon crash
184945812, "cast",		--cross crash

168178906, "particule",	--flame whip
184994834, "particule",	--flame whip after effect
184965140, "particule",	--flame whip after effect

}

mariaW_obj_id = {
168208595, "dust",			--maria dust
168224976, "player",		--base kick
184943764, "player",		--base fireball
168184016, "player",		--superjump
168184018, "player",		--divekick
184956083, "player",		--tiger flammes
184985773, "player",		--knuckle
168199374, "player",		--flying kick

184986804, "cast",		--tiger invoke
168214755, "npc",		--tiger png

}

alucardW_obj_id = {
184969401, "dust",			--alucard dust
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


alucard_obj_id = {

184954107, "cast",			--lvlup alucard

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

richter_obj_id = {

218552556, "trail",			--blood effect for richter
168206543, "trail",			--blood effect for richter

168192231, "particule",		--dmg particule

}

maria_obj_id = {

}

pro_obj_id = {
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
184968326, "player",		--cross crash
184977575, "player",		--cross crash -- the crosses

184963226, "cast",		--hydro storm
184973465, "cast",		--hydro storm
168166636, "cast",		--no subweapon crash
168217837, "cast",		--no subweapon crash
184945812, "cast",		--cross crash

168178906, "particule",	--flame whip
184994834, "particule",	--flame whip after effect
184965140, "particule",	--flame whip after effect

218526932, "cast",		--richter talking

218519744, "cast",		--cutscene stuff


168186085, "npc",		--maria
168211681, "npc",		--animal spirits
168176859, "cast",		--richter receive animals spirits
184949899, "cast",		--richter invincible animation

168219871, "cast",		--richter invincible animation
168176862, "cast",		--richter invincible animation

235337746, "scene",			--aftercast persistant effect


168192231, "particule",		--dmg particule
168198359, "particule",		--fireball dmg particule
168206543, "particule",		--fireball dmg particule

235320447, "monster",		--dracula
235330673, "monster",		--dracula face
235313291, "monster",		--dracula 2nd form
235277340, "monster",		--dracula 2nd form
235307141, "scene",			--dracula glass

235274369, "attack",		--dracula fireball
235305090, "attack",		--dracula hellfire
235316376, "attack",		--dracula 2nd form fireball
235312282, "attack",		--dracula 2nd form drop poison

235313284, "particule",		--hellfire particule

168193220, "scene",			--persistant after effect (dmg?)
218501359, "scene",			--staircase switch
218523885, "scene",			--door
218499314, "scene",			--staircase fixed point
218517747, "scene",			--staircase mechanism
218546411, "scene",			--outside bottom
218512611, "scene",			--outside top
235301898, "scene",			--the "final stage" overlay
235318276, "scene",			--the fade out effect at start
218497271, "scene",			--the picture at end

235308035, "particule",		--the picture burning effect

218520796, "candle",		--candle/vase

235309097, "pick",			--drop
235332657, "pick",			--drop

218546397, "scene",			--candle debris
235322457, "particule",		--candle flame

}

cata_obj_id = {

}

cave_obj_id = {

}

central_obj_id = {

}

chapel_obj_id = {

}

clock_obj_id = {
235306003, "scene",		--unknow clock tower prop 
}

colos_obj_id = {

}

garden_obj_id = {

}

gateA_obj_id = {
235337840, "pick",			--pick
235304073, "pick",			--pick relic skill wolf
235295865, "pick",			--pick turkey

218547427, "candle",		



235307162, "trail",		--damage dealt to monsters

218545391, "scene",		--forest background scroll 
17193104, "scene",		--forest background
218513600, "scene",		--forest background

218522828, "scene",		--forest background
218547405, "scene",		--forest background
218548435, "scene",		--forest background
218523865, "scene",		--forest background
218539226, "scene",		--forest background
218549472, "scene",		--corridor background
235285601, "scene",		--big rock left
235279460, "scene",		--big rock left

235320372, "scene",		--random thunder background effect 
235316260, "scene",		--trap door
235289638, "scene",		--background at gate
235302961, "scene",		--gate
168193220, "scene",		--background at gate
218528968, "scene",		--camera
235311347, "scene",		--background at bigrock
235329638, "scene",		--jewel sword door

218519784, "scene",		--background
252107781, "scene",		--background
235302921, "scene",		--background

235303089, "scene",		--background saveroom
235312306, "scene",		--coffin saveroom

235327593, "scene",		--break slope (turkey)
235334764, "particule",	--break
235322530, "dust",		--break

235300920, "scene",		--background death tornado
235301964, "scene",		--background death
218552556, "scene",		--background death
235275360, "trail",		--death scyth trail
235288662, "npc",		--death
235303990, "cast",		--death talk
235319390, "cast",		--death talk
235310162, "cast",		--alucard gear flying away

218503418, "scene",		--grate to caves
235305103, "scene",		--door to caves
218521846, "scene",		--grate mechanism
218553591, "scene",		--grate mechanism
235295788, "scene",		--grate mechanism
235295748, "scene",		--grate teleport
235290627, "scene",		--grate teleport button
235317248, "scene",		--grate marble
218501374, "scene",		--grate marble (rock)
218561788, "scene",		--grate marble button 



252090376, "monster",		--warg base
252085268, "attack",		--warg head
235278501, "dust",			--warg
252063766, "particule",		--warg dies
235313324, "particule",		--warg dies

252054531, "monster",		--zombie
218538225, "particule",		--zombie dies
235328767, "monster",		--bat
235295905, "particule",		--bat dies
235322593, "monster",		--fish1
235285712, "monster",		--fish2
235274460, "trail",			--fish dies trail
235325680, "attack",		--fish fireball
235331806, "attack",		--fish fireball 2
235304174, "trail",			--water
235275578, "particule",		--water
235274461, "particule",		--water
235278578, "particule",		--water
235320340, "particule",		--water
235314211, "particule",		--water
235314421, "monster",		--first skeleton(s)



--235302921

218550492, "npc",			--forest howl
218544351, "particule",		--forest howl branchs

}

gateB_obj_id = {

235283679, "monster",		--zombies
235298022, "particule",		--zombie knife blood drop
235289829, "particule",		--zombie dies
218511555, "candle",		--

235329610, "trail",		--orb dmg trail
235327551, "scene",		--red door

}

keep_obj_id = {

}

lab_obj_id = {

235330610, "pick",				--monsters
235307050, "pick",				--candle


218513600, "candle",			--candle1
218513630, "candle",			--globe candle

235276361, "scene",			--red door
235277420, "scene",			--cinematic title of the area
218501317, "scene",			--button first room
218543303, "attack",			--spike first room

235278420, "trail",			--orb dmg

235329682, "monster",			--red skeleton
235334841, "monster",			--slinger
235284632, "monster",			--skeleton
235332698, "particule",			--skeleton dies
235286720, "attack",			--skeleton bone
235296928, "particule",			--skeleton dies

}

marble_obj_id = {

}

mine_obj_id = {

}

olrox_obj_id = {

}

lib_obj_id = {

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

wall_obj_id = {
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

Rcata_obj_id = {

}

Rcave_obj_id = {

}

Rcentral_obj_id = {

}

Rchapel_obj_id = {

}

Rclock_obj_id = {

}

Rcolos_obj_id = {

}

Rgarden_obj_id = {

}

Rgate_obj_id = {

}

Rkeep_obj_id = {

}

Rlab_obj_id = {

}

Rlib_obj_id = {

}

Rmarble_obj_id = {

}

Rmine_obj_id = {

}

Rolrox_obj_id = {

}

Rwall_obj_id = {

}

-----
-----
-----
-----

--[[
-Gear Values Table
first value is the ID from reading the ram address (hand, armor, head ect...), second is the text
if we want png, then they will have to be call ID.png
note that the inventory "id" are different
]]

--all items are there
handID = {
0, "- - - - - - - - - - - - -",
1, "Monster Vial 1",
2, "Monster Vial 2",
3, "Monster Vial 3",
4, "Shield Rod",
5, "Leather Shield",
6, "Knight Shield",
7, "Iron Shield",
8, "Axe Lord Shield",
9, "Herald Shield",
10, "Dark Shield",
11, "Goddess Shield",
12, "Shaman Shield",
13, "Medusa Shield",
14, "Skull Shield",
15, "Fire Shield",
16, "Alucard Shield",
17, "Sword of Dawn",
18, "Basilard",
19, "Short Sword",
20, "Combat Knife",
21, "Nunchaku",
22, "Werebane",
23, "Rapier",
24, "Karma Coin",
25, "Magic Missile",
26, "Red Rust",
27, "Takemitsu",
28, "Shotel",
29, "Orange",
30, "Apple",
31, "Banana",
32, "Grape",
33, "Cherry",
34, "Ananas",
35, "Peanuts",
36, "Toadstool",
37, "Shiitake",
38, "Cheesecake",
39, "Shortcake",
40, "Tart",
41, "Parfait",
42, "Pudding",
43, "Ice Cream",
44, "Frankfurter",
45, "Hamburger",
46, "Pizza",
47, "Cheese",
48, "Ham and Eggs",
49, "Omelette",
50, "Morning Set",
51, "Lunch A",
52, "Lunch B",
53, "Curry Rice",
54, "Gyros Plate",
55, "Spaghetti",
56, "Grape Juice",
57, "Barley Tea",
58, "Green Tea",
59, "Natou",
60, "Ramen",
61, "Miso Soup",
62, "Sushi",
63, "Pork Bun",
64, "Red Bean Bun",
65, "Chinese Bun",
66, "Dim Sum Set",
67, "Pot Roast",
68, "Sirloin",
69, "Turkey",
70, "Smelly Rice",
71, "Delicious Meal",
72, "Meal Ticket",
73, "Neutron Bomb",
74, "Power of Sire",
75, "Pentagram",
76, "Bat Pentagram",
77, "Shuriken",
78, "Cross Shuriken",
79, "Buffalo Star",
80, "Flame Star",
81, "TNT",
82, "Bwaka Knife",
83, "Boomerang",
84, "Javelin",
85, "Tyrfing",
86, "Namakura",
87, "Knuckle Duster",
88, "Gladius",
89, "Scimitar",
90, "Cutlass",
91, "Saber",
92, "Falchion",
93, "Broadsword",
94, "Bekatowa",
95, "Damascus Sword",
96, "Hunter Sword",
97, "Estoc",
98, "Bastard Sword",
99, "Jewel Knuckles",
100, "Claymore",
101, "Talwar",
102, "Katana",
103, "Flamberge",
104, "Iron Fist",
105, "Zwei Hander",
106, "Sword of Hador",
107, "Luminus",
108, "Harper",
109, "Obsidian Sword",
110, "Gram",
111, "Jewel Sword",
112, "Mormegil",
113, "Firebrand",
114, "Thunderbrand",
115, "Icebrand",
116, "Stone Sword",
117, "Holy Sword",
118, "Terminus Est",
119, "Marsil",
120, "Dark Blade",
121, "Heaven Sword",
122, "Fist of Tulkas",
123, "Gurthang",
124, "Mourneblade",
125, "Alucard Sword",
126, "Mablung Sword",
127, "Badelaire",
128, "Sword Familiar",
129, "Sword of Hobec",
130, "Mace",
131, "Morning Star",
132, "Holy Rod",
133, "Star Flail",
134, "Moon Rod",
135, "Chakram",
136, "Fire Boomrang",
137, "Iron Ball",
138, "Holbein Dagger",
139, "Blue Knuckles",
140, "Dynamite",
141, "Masamune",
142, "Yasutsuna",
143, "Muramasa",
144, "Heart Refresh",
145, "Rune Sword",
146, "Antivenom",
147, "Uncurse",
148, "Golden Apple",
149, "Magic Hammer",
150, "Strength Potion",
151, "Luck Potion",
152, "Smart Potion",
153, "Attack Potion",
154, "Shield Potion",
155, "Resist Fire",
156, "Resist Thunder",
157, "Resist Ice",
158, "Resist Stone",
159, "Resist Holy",
160, "Resist Dark",
161, "Potion",
162, "High Potion",
163, "Elixir",
164, "Mana Prism",
165, "Vorpal Blade",
166, "Crissaegrim",
167, "Osafune Katana",
168, "Library Card",
169, "Alucard Pic",
170, "Alucart Shield",
171, "Alucart Sword",
172, "Alucard Spear",
173, "Woodland Shield",
174, "Astral Dagger",
175, "Blade Axe",
}

--we can combine all gears into the same ID
gearID = {
0, "- - - - - - - - - - - - -",
1, "Cloth Tunic",
2, "Hide Cuirass",
3, "Bronze Cuirass",
4, "Iron Cuirass",
5, "Steel Cuirass",
6, "Silver Plate",
7, "Gold Plate",
8, "Diamond Plate",
9, "Platinum Mail",
10, "Fire Mail",
11, "Lightning Mail",
12, "Ice Mail",
13, "Mirror Cuirass",
14, "Spike Breaker",
15, "Alucard Mail",
16, "Dark Armor",
17, "Healing Mail",
18, "Holy Mail",
19, "Walk Armor",
20, "Brilliant Mail",
21, "Mojo Mail",
22, "Fury Plate",
23, "Dracula Tunic",
24, "God's Garb",
25, "Axe Lord Armor",
26, "- - - - - - - - - - - - -",
27, "Sun Glasses",
28, "Ballroom Mask",
29, "Bandanna",
30, "Felt Hat",
31, "Velvet Hat",
32, "Goggles",
33, "Leather Hat",
34, "Holy Glasses",
35, "Steel Helm",
36, "Stone Mask",
37, "Circlet",
38, "Gold Circlet",
39, "Cat-Eye Circlet",
40, "Topaz Circlet",
41, "Opal Circlet",
42, "Beryl Circlet",
43, "Ruby Circlet",
44, "Coral Circlet",
45, "Dragon Helm",
46, "Silver Crown",
47, "Wizard Hat",
48, "- - - - - - - - - - - - -",
49, "Cloth Cape",
50, "Reverse Cloak",
51, "Elven Cloak",
52, "Rainbow Cloak",
53, "Glaring Cloak",
54, "Royal Cloak",
55, "Blood Cloak",
56, "Joseph's Cloak",
57, "Twilight Cloak",
58, "- - - - - - - - - - - - -",
59, "Moon Stone",
60, "Sunstone",
61, "Bloodstone",
62, "Staurolite",
63, "Ring of Pales",
64, "Zircoon",
65, "Aquamarine",
66, "Turquoise",
67, "Onyx",
68, "Garnet",
69, "Opal",
70, "Diamond",
71, "Lapis Lazuli",
72, "Ring of Ares",
73, "Gold Ring",
74, "Silver Ring",
75, "Ring of Varda",
76, "Sing Card",
77, "Arcana Ring",
78, "Mystic Pendant",
79, "Heart Broach",
80, "Necklace of J",
81, "Gauntlet",
82, "Ank of Life",
83, "Ring of Feanor",
84, "Medal",
85, "Talisman",
86, "Duplicator",
87, "King's Stone",
88, "Covenant stone",
89, "Nauglamir",
90, "Secret Boot",
91, "Alucart Mail",
}

--[[
--armor are complete
armorID = {
0, "- - - - - - - - - - - - -",
1, "Cloth Tunic",
2, "Hide Cuirass",
3, "Bronze Cuirass",
4, "Iron Cuirass",
5, "Steel Cuirass",
6, "Silver Plate",
7, "Gold Plate",
8, "Diamond Plate",
9, "Platinum Mail",
10, "Fire Mail",
11, "Lightning Mail",
12, "Ice Mail",
13, "Mirror Cuirass",
14, "Spike Breaker",
15, "Alucard Mail",
16, "Dark Armor",
17, "Healing Mail",
18, "Holy Mail",
19, "Walk Armor",
20, "Brilliant Mail",
21, "Mojo Mail",
22, "Fury Plate",
23, "Dracula Tunic",
24, "God's Garb",
25, "Axe Lord Armor",
91, "Alucart Mail",
}

--head are complete
headID = {
26, "- - - - - - - - - - - - -",
27, "Sun Glasses",
28, "Ballroom Mask",
29, "Bandanna",
30, "Felt Hat",
31, "Velvet Hat",
32, "Goggles",
33, "Leather Hat",
34, "Holy Glasses",
35, "Steel Helm",
36, "Stone Mask",
37, "Circlet",
38, "Gold Circlet",
39, "Cat-Eye Circlet",
40, "Topaz Circlet",
41, "Opal Circlet",
42, "Beryl Circlet",
43, "Ruby Circlet",
44, "Coral Circlet",
45, "Dragon Helm",
46, "Silver Crown",
47, "Wizard Hat",
}

--cape are complete
capeID = {
48, "- - - - - - - - - - - - -",
49, "Cloth Cape",
50, "Reverse Cloak",
51, "Elven Cloak",
52, "Raimbow Colored Robe",
53, "Glaring Cloak",
54, "Royal Cloak",
55, "Blood Cloak",
56, "Joseph's Cloak",
57, "Twilight Cloak",
}

--accessories are complete
accID = {
58, "- - - - - - - - - - - - -",
59, "Moon Stone",
60, "Sunstone",
61, "Bloodstone",
62, "Staurolite",
63, "Ring of Pales",
64, "Zircoon",
65, "Aquamarine",
66, "Turquoise",
67, "Onyx",
68, "Garnet",
69, "Opal",
70, "Diamond",
72, "Ring of Ares",
73, "Gold Ring",
74, "Silver Ring",
75, "Ring of Varda",
76, "Sing Card",
77, "Arcana Ring",
78, "Mystic Pendant",
79, "Heart Broach",
80, "Necklace of J",
81, "Gauntlet",
82, "Ank of Life",
84, "Medal",
85, "Talisman",
86, "Duplicator",
87, "King's Stone",
88, "Covenant stone ",
89, "Nauglamir",
90, "Secret Boot",
}

]]



--[[
Map Data
]]




--data to define a "area ID" of mine
area_roomA ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(area_roomA, atx + aty * 64, "cata") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(area_roomA, atx + aty * 64, "cata") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(area_roomA, atx + aty * 64, "cata") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(area_roomA, atx + aty * 64, "cata") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(area_roomA, atx + aty * 64, "cata") end end
-----
for atx = 33, 33 do for aty = 48, 49 do table.insert(area_roomA, atx + aty * 64, "mine") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(area_roomA, atx + aty * 64, "mine") end end
table.insert(area_roomA, 31 + ( 48 * 64 ), "mine")
for atx = 29, 35 do for aty = 44, 44 do table.insert(area_roomA, atx + aty * 64, "mine") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(area_roomA, atx + aty * 64, "mine") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(area_roomA, atx + aty * 64, "mine") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(area_roomA, atx + aty * 64, "mine") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(area_roomA, atx + aty * 64, "mine") end end
-----
for atx = 14, 21 do for aty = 44, 44 do table.insert(area_roomA, atx + aty * 64, "garden") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(area_roomA, atx + aty * 64, "garden") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(area_roomA, atx + aty * 64, "garden") end end
table.insert(area_roomA, 2 + ( 45 * 64 ), "garden")
-----
for atx = 2, 2 do for aty = 41, 44 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(area_roomA, atx + aty * 64, "gate") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(area_roomA, atx + aty * 64, "gate") end end
table.insert(area_roomA, 15 + ( 38 * 64 ), "gate")
table.insert(area_roomA, 16 + ( 38 * 64 ), "gate")
-----
table.insert(area_roomA, 8 + ( 42 * 64 ), "cave")
table.insert(area_roomA, 16 + ( 41 * 64 ), "cave")
table.insert(area_roomA, 17 + ( 41 * 64 ), "cave")
for atx = 9, 13 do for aty = 42, 43 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(area_roomA, atx + aty * 64, "cave") end end
table.insert(area_roomA, 32 + ( 37 * 64 ), "cave")
for atx = 33, 40 do for aty = 37, 38 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(area_roomA, atx + aty * 64, "cave") end end
table.insert(area_roomA, 39 + ( 40 * 64 ), "cave")
for atx = 39, 55 do for aty = 41, 41 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(area_roomA, atx + aty * 64, "cave") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(area_roomA, atx + aty * 64, "cave") end end
table.insert(area_roomA, 45 + ( 33 * 64 ), "cave")
table.insert(area_roomA, 39 + ( 26 * 64 ), "cave")
table.insert(area_roomA, 40 + ( 26 * 64 ), "cave")
for atx = 35, 37 do for aty = 27, 27 do table.insert(area_roomA, atx + aty * 64, "cave") end end
table.insert(area_roomA, 37 + ( 28 * 64 ), "cave")
for atx = 37, 37 do for aty = 32, 34 do table.insert(area_roomA, atx + aty * 64, "cave") end end
table.insert(area_roomA, 36 + ( 34 * 64 ), "cave")
for atx = 40, 42 do for aty = 29, 29 do table.insert(area_roomA, atx + aty * 64, "cave") end end
table.insert(area_roomA, 40 + ( 27 * 64 ), "cave")
--
table.insert(area_roomA, 32 + ( 34 * 64 ), "prison")
for atx = 33, 35 do for aty = 34, 36 do table.insert(area_roomA, atx + aty * 64, "prison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(area_roomA, atx + aty * 64, "prison") end end
--
for atx = 47, 59 do for aty = 25, 25 do table.insert(area_roomA, atx + aty * 64, "marble") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(area_roomA, atx + aty * 64, "marble") end end
table.insert(area_roomA, 41 + ( 26 * 64 ), "marble")
table.insert(area_roomA, 44 + ( 26 * 64 ), "marble")
table.insert(area_roomA, 39 + ( 24 * 64 ), "marble")
for atx = 37, 38 do for aty = 24, 26 do table.insert(area_roomA, atx + aty * 64, "marble") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(area_roomA, atx + aty * 64, "marble") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(area_roomA, atx + aty * 64, "marble") end end
table.insert(area_roomA, 34 + ( 25 * 64 ), "marble")
table.insert(area_roomA, 32 + ( 24 * 64 ), "marble")
for atx = 30, 34 do for aty = 23, 23 do table.insert(area_roomA, atx + aty * 64, "marble") end end
table.insert(area_roomA, 27 + ( 27 * 64 ), "marble")
table.insert(area_roomA, 28 + ( 27 * 64 ), "marble")
table.insert(area_roomA, 27 + ( 28 * 64 ), "marble")
for atx = 25, 26 do for aty = 28, 32 do table.insert(area_roomA, atx + aty * 64, "marble") end end
table.insert(area_roomA, 27 + ( 32 * 64 ), "marble")
table.insert(area_roomA, 27 + ( 33 * 64 ), "marble")
table.insert(area_roomA, 27 + ( 34 * 64 ), "marble")
for atx = 21, 26 do for aty = 34, 36 do table.insert(area_roomA, atx + aty * 64, "marble") end end
table.insert(area_roomA, 31 + ( 27 * 64 ), "marble")
--central room
table.insert(area_roomA, 32 + ( 28 * 64 ), "central")--central room
table.insert(area_roomA, 32 + ( 29 * 64 ), "central")--central room
for atx = 31, 33 do for aty = 30, 32 do table.insert(area_roomA, atx + aty * 64, "central") end end--central room
---
for atx = 60, 61 do for aty = 13, 29 do table.insert(area_roomA, atx + aty * 64, "wall") end end
table.insert(area_roomA, 59 + ( 17 * 64 ), "wall")
table.insert(area_roomA, 59 + ( 26 * 64 ), "wall")
table.insert(area_roomA, 59 + ( 27 * 64 ), "wall")
for atx = 56, 59 do for aty = 23, 24 do table.insert(area_roomA, atx + aty * 64, "wall") end end
table.insert(area_roomA, 55 + ( 24 * 64 ), "wall")
---
for atx = 52, 59 do for aty = 18, 21 do table.insert(area_roomA, atx + aty * 64, "lib") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(area_roomA, atx + aty * 64, "lib") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(area_roomA, atx + aty * 64, "lib") end end
table.insert(area_roomA, 44 + ( 20 * 64 ), "lib")
table.insert(area_roomA, 44 + ( 21 * 64 ), "lib")
---
table.insert(area_roomA, 59 + ( 15 * 64 ), "clock")
table.insert(area_roomA, 59 + ( 14 * 64 ), "clock")
table.insert(area_roomA, 59 + ( 11 * 64 ), "clock")
for atx = 53, 58 do for aty = 11, 15 do table.insert(area_roomA, atx + aty * 64, "clock") end end
table.insert(area_roomA, 49 + ( 14 * 64 ), "clock")
table.insert(area_roomA, 51 + ( 8 * 64 ), "clock")
for atx = 50, 52 do for aty = 9, 14 do table.insert(area_roomA, atx + aty * 64, "clock") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(area_roomA, atx + aty * 64, "clock") end end
table.insert(area_roomA, 40 + ( 10 * 64 ), "clock")
table.insert(area_roomA, 41 + ( 10 * 64 ), "clock")
---
for atx = 38, 39 do for aty = 5, 12 do table.insert(area_roomA, atx + aty * 64, "keep") end end
table.insert(area_roomA, 40 + ( 12 * 64 ), "keep")
for atx = 31, 37 do for aty = 8, 12 do table.insert(area_roomA, atx + aty * 64, "keep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(area_roomA, atx + aty * 64, "keep") end end
table.insert(area_roomA, 33 + ( 6 * 64 ), "keep")
table.insert(area_roomA, 31 + ( 7 * 64 ), "keep")
table.insert(area_roomA, 30 + ( 12 * 64 ), "keep")
---
for atx = 27, 28 do for aty = 10, 13 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
table.insert(area_roomA, 16 + ( 21 * 64 ), "chapel")
table.insert(area_roomA, 16 + ( 19 * 64 ), "chapel")
for atx = 8, 13 do for aty = 21, 22 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
table.insert(area_roomA, 10 + ( 20 * 64 ), "chapel")
table.insert(area_roomA, 29 + ( 13 * 64 ), "chapel")
for atx = 8, 9 do for aty = 21, 23 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
table.insert(area_roomA, 3 + ( 26 * 64 ), "chapel")
for atx = 2, 4 do for aty = 27, 28 do table.insert(area_roomA, atx + aty * 64, "chapel") end end
---
for atx = 14, 25 do for aty = 22, 24 do table.insert(area_roomA, atx + aty * 64, "colos") end end
table.insert(area_roomA, 26 + ( 24 * 64 ), "colos")
table.insert(area_roomA, 13 + ( 24 * 64 ), "colos")
for atx = 17, 22 do for aty = 21, 21 do table.insert(area_roomA, atx + aty * 64, "colos") end end
table.insert(area_roomA, 19 + ( 20 * 64 ), "colos")
table.insert(area_roomA, 20 + ( 20 * 64 ), "colos")
---
for atx = 18, 30 do for aty = 19, 19 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
table.insert(area_roomA, 34 + ( 21 * 64 ), "olrox")
table.insert(area_roomA, 33 + ( 21 * 64 ), "olrox")
for atx = 27, 32 do for aty = 21, 22 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
table.insert(area_roomA, 28 + ( 23 * 64 ), "olrox")
for atx = 29, 29 do for aty = 23, 25 do table.insert(area_roomA, atx + aty * 64, "olrox") end end
table.insert(area_roomA, 37 + ( 21 * 64 ), "olrox")
table.insert(area_roomA, 31 + ( 17 * 64 ), "olrox")
---
for atx = 19, 20 do for aty = 25, 27 do table.insert(area_roomA, atx + aty * 64, "lab") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(area_roomA, atx + aty * 64, "lab") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(area_roomA, atx + aty * 64, "lab") end end
table.insert(area_roomA, 16 + ( 28 * 64 ), "lab")
table.insert(area_roomA, 16 + ( 31 * 64 ), "lab")
for atx = 17, 17 do for aty = 28, 34 do table.insert(area_roomA, atx + aty * 64, "lab") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(area_roomA, atx + aty * 64, "lab") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(area_roomA, atx + aty * 64, "lab") end end
table.insert(area_roomA, 8 + ( 29 * 64 ), "lab")
table.insert(area_roomA, 10 + ( 29 * 64 ), "lab")
table.insert(area_roomA, 11 + ( 29 * 64 ), "lab")
for atx = 8, 11 do for aty = 30, 31 do table.insert(area_roomA, atx + aty * 64, "lab") end end
table.insert(area_roomA, 11 + ( 32 * 64 ), "lab")
table.insert(area_roomA, 12 + ( 32 * 64 ), "lab")
table.insert(area_roomA, 11 + ( 34 * 64 ), "lab")
table.insert(area_roomA, 12 + ( 36 * 64 ), "lab")
for atx = 12, 15 do for aty = 33, 35 do table.insert(area_roomA, atx + aty * 64, "lab") end end
table.insert(area_roomA, 16 + ( 34 * 64 ), "lab")
for atx = 14, 16 do for aty = 36, 36 do table.insert(area_roomA, atx + aty * 64, "lab") end end
table.insert(area_roomA, 16 + ( 35 * 64 ), "lab")
table.insert(area_roomA, 7 + ( 30 * 64 ), "lab")
table.insert(area_roomA, 29 + ( 27 * 64 ), "lab")
--cdroom arent show at all on the png
table.insert(area_roomA, 3 + ( 44 * 64 ), "cd")
table.insert(area_roomA, 15 + ( 41 * 64 ), "cd")
table.insert(area_roomA, 20 + ( 36 * 64 ), "cd")
table.insert(area_roomA, 17 + ( 36 * 64 ), "cd")
table.insert(area_roomA, 28 + ( 38 * 64 ), "cd")
table.insert(area_roomA, 36 + ( 34 * 64 ), "cd")
table.insert(area_roomA, 40 + ( 26 * 64 ), "cd")
table.insert(area_roomA, 27 + ( 36 * 64 ), "cd")
table.insert(area_roomA, 32 + ( 49 * 64 ), "cd")
table.insert(area_roomA, 60 + ( 14 * 64 ), "cd")
table.insert(area_roomA, 59 + ( 21 * 64 ), "cd")
table.insert(area_roomA, 60 + ( 25 * 64 ), "cd")
table.insert(area_roomA, 39 + ( 10 * 64 ), "cd")
table.insert(area_roomA, 29 + ( 12 * 64 ), "cd")
table.insert(area_roomA, 13 + ( 22 * 64 ), "cd")
table.insert(area_roomA, 26 + ( 22 * 64 ), "cd")
table.insert(area_roomA, 30 + ( 25 * 64 ), "cd")
table.insert(area_roomA, 4 + ( 28 * 64 ), "cd")
table.insert(area_roomA, 21 + ( 26 * 64 ), "cd")
table.insert(area_roomA, 13 + ( 22 * 64 ), "cd")
table.insert(area_roomA, 17 + ( 19 * 64 ), "cd")
--cdroom but from teleporters, they actually are never in a different area, and the music from previous level will stay
table.insert(area_roomA, 34 + ( 44 * 64 ), "mine")
table.insert(area_roomA, 16 + ( 38 * 64 ), "entrance")
table.insert(area_roomA, 36 + ( 21 * 64 ), "olrox")
table.insert(area_roomA, 60 + ( 17 * 64 ), "wall")
table.insert(area_roomA, 39 + ( 12 * 64 ), "keep")
table.insert(area_roomA, 3 + ( 45 * 64 ), "garden")



text_roomA ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(text_roomA, atx + aty * 64, "Catacombs") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(text_roomA, atx + aty * 64, "Catacombs") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(text_roomA, atx + aty * 64, "Catacombs") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(text_roomA, atx + aty * 64, "Catacombs") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(text_roomA, atx + aty * 64, "Catacombs") end end
---
for atx = 33, 33 do for aty = 48, 49 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
table.insert(text_roomA, 31 + ( 48 * 64 ), "Abandoned Mine")
for atx = 29, 35 do for aty = 44, 44 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(text_roomA, atx + aty * 64, "Abandoned Mine") end end
---
for atx = 14, 21 do for aty = 44, 44 do table.insert(text_roomA, atx + aty * 64, "Underground Gardens") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(text_roomA, atx + aty * 64, "Underground Gardens") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(text_roomA, atx + aty * 64, "Underground Gardens") end end
table.insert(text_roomA, 2 + ( 45 * 64 ), "Underground Gardens")
---
for atx = 2, 2 do for aty = 41, 44 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(text_roomA, atx + aty * 64, "Entrance") end end
table.insert(text_roomA, 15 + ( 38 * 64 ), "Entrance")
table.insert(text_roomA, 16 + ( 38 * 64 ), "Entrance")
---
table.insert(text_roomA, 8 + ( 42 * 64 ), "Underground Caverns")
table.insert(text_roomA, 16 + ( 41 * 64 ), "Underground Caverns")
table.insert(text_roomA, 17 + ( 41 * 64 ), "Underground Caverns")
for atx = 9, 13 do for aty = 42, 43 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
table.insert(text_roomA, 32 + ( 37 * 64 ), "Underground Caverns")
for atx = 33, 40 do for aty = 37, 38 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
table.insert(text_roomA, 39 + ( 40 * 64 ), "Underground Caverns")
for atx = 39, 55 do for aty = 41, 41 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
table.insert(text_roomA, 45 + ( 33 * 64 ), "Underground Caverns")
table.insert(text_roomA, 39 + ( 26 * 64 ), "Underground Caverns")
table.insert(text_roomA, 40 + ( 26 * 64 ), "Underground Caverns")
for atx = 35, 37 do for aty = 27, 27 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
table.insert(text_roomA, 37 + ( 28 * 64 ), "Underground Caverns")
for atx = 37, 37 do for aty = 32, 34 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
table.insert(text_roomA, 36 + ( 34 * 64 ), "Underground Caverns")
for atx = 40, 42 do for aty = 29, 29 do table.insert(text_roomA, atx + aty * 64, "Underground Caverns") end end
table.insert(text_roomA, 40 + ( 27 * 64 ), "Underground Caverns")
--
table.insert(text_roomA, 32 + ( 34 * 64 ), "Cursed Prison")
for atx = 33, 35 do for aty = 34, 36 do table.insert(text_roomA, atx + aty * 64, "Cursed Prison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(text_roomA, atx + aty * 64, "Cursed Prison") end end
--
for atx = 47, 59 do for aty = 25, 25 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
table.insert(text_roomA, 41 + ( 26 * 64 ), "Marble Gallery")
table.insert(text_roomA, 44 + ( 26 * 64 ), "Marble Gallery")
table.insert(text_roomA, 39 + ( 24 * 64 ), "Marble Gallery")
for atx = 37, 38 do for aty = 24, 26 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
table.insert(text_roomA, 34 + ( 25 * 64 ), "Marble Gallery")
table.insert(text_roomA, 32 + ( 24 * 64 ), "Marble Gallery")
for atx = 30, 34 do for aty = 23, 23 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
table.insert(text_roomA, 27 + ( 27 * 64 ), "Marble Gallery")
table.insert(text_roomA, 28 + ( 27 * 64 ), "Marble Gallery")
table.insert(text_roomA, 27 + ( 28 * 64 ), "Marble Gallery")
for atx = 25, 26 do for aty = 28, 32 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
table.insert(text_roomA, 27 + ( 32 * 64 ), "Marble Gallery")
table.insert(text_roomA, 27 + ( 33 * 64 ), "Marble Gallery")
table.insert(text_roomA, 27 + ( 34 * 64 ), "Marble Gallery")
for atx = 21, 26 do for aty = 34, 36 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end
table.insert(text_roomA, 31 + ( 27 * 64 ), "Marble Gallery")
---central room
table.insert(text_roomA, 32 + ( 28 * 64 ), "Marble Gallery")---central room
table.insert(text_roomA, 32 + ( 29 * 64 ), "Marble Gallery")---central room
for atx = 31, 33 do for aty = 30, 32 do table.insert(text_roomA, atx + aty * 64, "Marble Gallery") end end---central room
---
for atx = 60, 61 do for aty = 13, 29 do table.insert(text_roomA, atx + aty * 64, "Outer Wall") end end
table.insert(text_roomA, 59 + ( 17 * 64 ), "Outer Wall")
table.insert(text_roomA, 59 + ( 26 * 64 ), "Outer Wall")
table.insert(text_roomA, 59 + ( 27 * 64 ), "Outer Wall")
for atx = 56, 59 do for aty = 23, 24 do table.insert(text_roomA, atx + aty * 64, "Outer Wall") end end
table.insert(text_roomA, 55 + ( 24 * 64 ), "Outer Wall")
---
for atx = 52, 59 do for aty = 18, 21 do table.insert(text_roomA, atx + aty * 64, "Long Library") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(text_roomA, atx + aty * 64, "Long Library") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(text_roomA, atx + aty * 64, "Long Library") end end
table.insert(text_roomA, 44 + ( 20 * 64 ), "Long Library")
table.insert(text_roomA, 44 + ( 21 * 64 ), "Long Library")
---
table.insert(text_roomA, 59 + ( 15 * 64 ), "Clock Tower")
table.insert(text_roomA, 59 + ( 14 * 64 ), "Clock Tower")
table.insert(text_roomA, 59 + ( 11 * 64 ), "Clock Tower")
for atx = 53, 58 do for aty = 11, 15 do table.insert(text_roomA, atx + aty * 64, "Clock Tower") end end
table.insert(text_roomA, 49 + ( 14 * 64 ), "Clock Tower")
table.insert(text_roomA, 51 + ( 8 * 64 ), "Clock Tower")
for atx = 50, 52 do for aty = 9, 14 do table.insert(text_roomA, atx + aty * 64, "Clock Tower") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(text_roomA, atx + aty * 64, "Clock Tower") end end
table.insert(text_roomA, 40 + ( 10 * 64 ), "Clock Tower")
table.insert(text_roomA, 41 + ( 10 * 64 ), "Clock Tower")
---
for atx = 38, 39 do for aty = 5, 12 do table.insert(text_roomA, atx + aty * 64, "Castle Keep") end end
table.insert(text_roomA, 40 + ( 12 * 64 ), "Castle Keep")
for atx = 31, 37 do for aty = 8, 12 do table.insert(text_roomA, atx + aty * 64, "Castle Keep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(text_roomA, atx + aty * 64, "Castle Keep") end end
table.insert(text_roomA, 33 + ( 6 * 64 ), "Castle Keep")
table.insert(text_roomA, 31 + ( 7 * 64 ), "Castle Keep")
table.insert(text_roomA, 30 + ( 12 * 64 ), "Castle Keep")
---
for atx = 27, 28 do for aty = 10, 13 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
table.insert(text_roomA, 16 + ( 21 * 64 ), "Royal Chapel")
table.insert(text_roomA, 16 + ( 19 * 64 ), "Royal Chapel")
for atx = 8, 13 do for aty = 21, 22 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
table.insert(text_roomA, 10 + ( 20 * 64 ), "Royal Chapel")
for atx = 8, 9 do for aty = 21, 23 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
table.insert(text_roomA, 3 + ( 26 * 64 ), "Royal Chapel")
for atx = 2, 4 do for aty = 27, 28 do table.insert(text_roomA, atx + aty * 64, "Royal Chapel") end end
table.insert(text_roomA, 29 + ( 13 * 64 ), "Royal Chapel")
---
for atx = 14, 25 do for aty = 22, 24 do table.insert(text_roomA, atx + aty * 64, "Colosseum") end end
table.insert(text_roomA, 26 + ( 24 * 64 ), "Colosseum")
table.insert(text_roomA, 13 + ( 24 * 64 ), "Colosseum")
for atx = 17, 22 do for aty = 21, 21 do table.insert(text_roomA, atx + aty * 64, "Colosseum") end end
table.insert(text_roomA, 19 + ( 20 * 64 ), "Colosseum")
table.insert(text_roomA, 20 + ( 20 * 64 ), "Colosseum")
---
for atx = 18, 30 do for aty = 19, 19 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
table.insert(text_roomA, 34 + ( 21 * 64 ), "Olrox Quarter's")
table.insert(text_roomA, 33 + ( 21 * 64 ), "Olrox Quarter's")
for atx = 27, 32 do for aty = 21, 22 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
table.insert(text_roomA, 28 + ( 23 * 64 ), "Olrox Quarter's")
for atx = 29, 29 do for aty = 23, 25 do table.insert(text_roomA, atx + aty * 64, "Olrox Quarter's") end end
table.insert(text_roomA, 37 + ( 21 * 64 ), "Olrox Quarter's")
table.insert(text_roomA, 31 + ( 17 * 64 ), "Olrox Quarter's")
---
for atx = 19, 20 do for aty = 25, 27 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(text_roomA, 16 + ( 28 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 16 + ( 31 * 64 ), "Alchemy Laboratory")
for atx = 17, 17 do for aty = 28, 34 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(text_roomA, 8 + ( 29 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 10 + ( 29 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 11 + ( 29 * 64 ), "Alchemy Laboratory")
for atx = 8, 11 do for aty = 30, 31 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(text_roomA, 11 + ( 32 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 12 + ( 32 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 11 + ( 34 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 12 + ( 36 * 64 ), "Alchemy Laboratory")
for atx = 12, 15 do for aty = 33, 35 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(text_roomA, 16 + ( 34 * 64 ), "Alchemy Laboratory")
for atx = 14, 16 do for aty = 36, 36 do table.insert(text_roomA, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(text_roomA, 16 + ( 35 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 7 + ( 30 * 64 ), "Alchemy Laboratory")
table.insert(text_roomA, 29 + ( 27 * 64 ), "Alchemy Laboratory")

--special rooms, on the png the saveroom are red, teleporters are orange,
special_roomA = {}
--cdroom arent show at all on the png
table.insert(special_roomA, 3 + ( 44 * 64 ), "CD Room")
table.insert(special_roomA, 3 + ( 45 * 64 ), "CD Room")
table.insert(special_roomA, 15 + ( 41 * 64 ), "CD Room")
table.insert(special_roomA, 20 + ( 36 * 64 ), "CD Room")
table.insert(special_roomA, 17 + ( 36 * 64 ), "CD Room")
table.insert(special_roomA, 16 + ( 38 * 64 ), "CD Room")
table.insert(special_roomA, 28 + ( 38 * 64 ), "CD Room")
table.insert(special_roomA, 36 + ( 34 * 64 ), "CD Room")
table.insert(special_roomA, 40 + ( 26 * 64 ), "CD Room")
table.insert(special_roomA, 27 + ( 36 * 64 ), "CD Room")
table.insert(special_roomA, 34 + ( 44 * 64 ), "CD Room")
table.insert(special_roomA, 32 + ( 49 * 64 ), "CD Room")
table.insert(special_roomA, 60 + ( 14 * 64 ), "CD Room")
table.insert(special_roomA, 59 + ( 21 * 64 ), "CD Room")
table.insert(special_roomA, 60 + ( 17 * 64 ), "CD Room")
table.insert(special_roomA, 60 + ( 25 * 64 ), "CD Room")
table.insert(special_roomA, 39 + ( 10 * 64 ), "CD Room")
table.insert(special_roomA, 39 + ( 12 * 64 ), "CD Room")
table.insert(special_roomA, 29 + ( 12 * 64 ), "CD Room")
table.insert(special_roomA, 36 + ( 21 * 64 ), "CD Room")
table.insert(special_roomA, 13 + ( 22 * 64 ), "CD Room")
table.insert(special_roomA, 26 + ( 22 * 64 ), "CD Room")
table.insert(special_roomA, 30 + ( 25 * 64 ), "CD Room")
table.insert(special_roomA, 4 + ( 28 * 64 ), "CD Room")
table.insert(special_roomA, 21 + ( 26 * 64 ), "CD Room")
table.insert(special_roomA, 13 + ( 22 * 64 ), "CD Room")
table.insert(special_roomA, 17 + ( 19 * 64 ), "CD Room")
--teleport
table.insert(special_roomA, 2 + ( 45 * 64 ), "Bear Teleporter")
table.insert(special_roomA, 15 + ( 38 * 64 ), "Horse Teleporter")
table.insert(special_roomA, 35 + ( 44 * 64 ), "Viper Teleporter")
table.insert(special_roomA, 59 + ( 17 * 64 ), "Crab Teleporter")
table.insert(special_roomA, 40 + ( 12 * 64 ), "Lion Teleporter")
table.insert(special_roomA, 37 + ( 21 * 64 ), "Ram Teleporter")
--save rooms
table.insert(special_roomA, 17 + ( 37 * 64 ), "Save Room")
table.insert(special_roomA, 13 + ( 45 * 64 ), "Save Room")
table.insert(special_roomA, 5 + ( 39 * 64 ), "Save Room")
table.insert(special_roomA, 40 + ( 37 * 64 ), "Save Room")
table.insert(special_roomA, 40 + ( 27 * 64 ), "Save Room")
table.insert(special_roomA, 43 + ( 33 * 64 ), "Save Room")
table.insert(special_roomA, 32 + ( 34 * 64 ), "Save Room")
table.insert(special_roomA, 28 + ( 41 * 64 ), "Save Room")
table.insert(special_roomA, 30 + ( 50 * 64 ), "Save Room")
table.insert(special_roomA, 22 + ( 50 * 64 ), "Save Room")
table.insert(special_roomA, 55 + ( 24 * 64 ), "Save Room")
table.insert(special_roomA, 60 + ( 13 * 64 ), "Save Room")
table.insert(special_roomA, 51 + ( 19 * 64 ), "Save Room")
table.insert(special_roomA, 39 + ( 9 * 64 ), "Save Room")
table.insert(special_roomA, 29 + ( 13 * 64 ), "Save Room")
table.insert(special_roomA, 31 + ( 17 * 64 ), "Save Room")
table.insert(special_roomA, 31 + ( 27 * 64 ), "Save Room")
table.insert(special_roomA, 29 + ( 27 * 64 ), "Save Room")
table.insert(special_roomA, 25 + ( 23 * 64 ), "Save Room")
table.insert(special_roomA, 14 + ( 23 * 64 ), "Save Room")
table.insert(special_roomA, 2 + ( 28 * 64 ), "Save Room")
table.insert(special_roomA, 7 + ( 30 * 64 ), "Save Room")
table.insert(special_roomA, 15 + ( 27 * 64 ), "Save Room")
table.insert(special_roomA, 16 + ( 35 * 64 ), "Save Room")
--
table.insert(special_roomA, 49 + ( 20 * 64 ), "Librarian")
--
--
table.insert(special_roomA, 45 + ( 24 * 64 ), "Blue Door")
table.insert(special_roomA, 7 + ( 28 * 64 ), "Blue Door")
table.insert(special_roomA, 10 + ( 15 * 64 ), "Blue Door")
--
table.insert(special_roomA, 46 + ( 24 * 64 ), "Marble Gallery Switch")
--
table.insert(special_roomA, 32 + ( 26 * 64 ), "Central Clock")
--
table.insert(special_roomA, 60 + ( 15 * 64 ), "Elevator Switch")
--
table.insert(special_roomA, 59 + ( 26 * 64 ), "Break Wall")
--
table.insert(special_roomA, 19 + ( 19 * 64 ), "Break Wall")
--
table.insert(special_roomA, 29 + ( 22 * 64 ), "Break Wall")
--
table.insert(special_roomA, 19 + ( 36 * 64 ), "Switch To Marble Gallery")
--
table.insert(special_roomA, 14 + ( 41 * 64 ), "Switch To Underground Caverns")
--
table.insert(special_roomA, 12 + ( 40 * 64 ), "Big Rock")
--
table.insert(special_roomA, 17 + ( 38 * 64 ), "Switch To Horse Teleporter")
--
table.insert(special_roomA, 19 + ( 40 * 64 ), "Break")
--
table.insert(special_roomA, 11 + ( 41 * 64 ), "Hidden Door")
--
table.insert(special_roomA, 28 + ( 50 * 64 ), "Break Wall")
--
table.insert(special_roomA, 22 + ( 50 * 64 ), "Break Wall")
--
table.insert(special_roomA, 41 + ( 51 * 64 ), "Break Wall")
--
table.insert(special_roomA, 43 + ( 50 * 64 ), "Light Switch")
--
table.insert(special_roomA, 37 + ( 41 * 64 ), "Break Wall")
--
table.insert(special_roomA, 32 + ( 40 * 64 ), "Demon Familiar Switch")
--
table.insert(special_roomA, 16 + ( 19 * 64 ), "Switch To Olrox Quarter's")
--
table.insert(special_roomA, 9 + ( 15 * 64 ), "Maria Cutscene")
--
table.insert(special_roomA, 24 + ( 13 * 64 ), "Maria Cutscene")
--
table.insert(special_roomA, 49 + ( 18 * 64 ), "Bookshelf")
--
table.insert(special_roomA, 49 + ( 21 * 64 ), "Librarian Seat")
--
table.insert(special_roomA, 12 + ( 34 * 64 ), "Break Wall")
--
table.insert(special_roomA, 16 + ( 34 * 64 ), "Elevator Switch")
--
table.insert(special_roomA, 5 + ( 28 * 64 ), "Maria Cutscene")
--
table.insert(special_roomA, 31 + ( 9 * 64 ), "Break Wall")
--
table.insert(special_roomA, 31 + ( 11 * 64 ), "Break Wall")
--
table.insert(special_roomA, 38 + ( 10 * 64 ), "Lion Elevator")
--
table.insert(special_roomA, 35 + ( 8 * 64 ), "Secret Stairs")
--
table.insert(special_roomA, 33 + ( 8 * 64 ), "Save Richter")
--
table.insert(special_roomA, 43 + ( 11 * 64 ), "Break Wall")
--
table.insert(special_roomA, 41 + ( 10 * 64 ), "Break Wall")
--
table.insert(special_roomA, 42 + ( 10 * 64 ), "Break Wall")
--
table.insert(special_roomA, 43 + ( 10 * 64 ), "Break Wall")
--
table.insert(special_roomA, 48 + ( 11 * 64 ), "Break")
--
table.insert(special_roomA, 50 + ( 11 * 64 ), "Break Wall")
--
table.insert(special_roomA, 21 + ( 22 * 64 ), "Elevator Switch")
--
table.insert(special_roomA, 20 + ( 21 * 64 ), "Break Wall")
--
table.insert(special_roomA, 14 + ( 22 * 64 ), "Switch To Chapel")
--
table.insert(special_roomA, 16 + ( 21 * 64 ), "Confesional")
--
table.insert(special_roomA, 37 + ( 37 * 64 ), "Wooden Box")
--
table.insert(special_roomA, 48 + ( 41 * 64 ), "Gate")
--
table.insert(special_roomA, 39 + ( 39 * 64 ), "Break Floor")
--
table.insert(special_roomA, 36 + ( 27 * 64 ), "Break Wall")
--
table.insert(special_roomA, 13 + ( 42 * 64 ), "Cutscene Ferry")
--
table.insert(special_roomA, 40 + ( 41 * 64 ), "Cutscene Ferry")
--
table.insert(special_roomA, 29 + ( 37 * 64 ), "Wooden Bridge")
--
table.insert(special_roomA, 22 + ( 37 * 64 ), "Switch To Abandonned Mines")
--
table.insert(special_roomA, 33 + ( 36 * 64 ), "Gate Switch")






area_roomB ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcata") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcata") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcata") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcata") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcata") end end
for atx = 33, 33 do for aty = 48, 49 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 29, 35 do for aty = 44, 44 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmine") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgarden") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgarden") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgarden") end end
for atx = 2, 2 do for aty = 41, 44 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rgate") end end
for atx = 9, 13 do for aty = 42, 43 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 33, 40 do for aty = 37, 38 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 39, 55 do for aty = 41, 41 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 35, 37 do for aty = 27, 27 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 37, 37 do for aty = 32, 34 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 40, 42 do for aty = 29, 29 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcave") end end
for atx = 33, 35 do for aty = 34, 36 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rprison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rprison") end end
for atx = 47, 59 do for aty = 25, 25 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 37, 38 do for aty = 24, 26 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 30, 34 do for aty = 23, 23 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 25, 26 do for aty = 28, 32 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 21, 26 do for aty = 34, 36 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rmarble") end end
for atx = 31, 33 do for aty = 30, 32 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcentral") end end--central room
for atx = 60, 61 do for aty = 13, 29 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rwall") end end
for atx = 56, 59 do for aty = 23, 24 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rwall") end end
for atx = 52, 59 do for aty = 18, 21 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlib") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlib") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlib") end end
for atx = 53, 58 do for aty = 11, 15 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rclock") end end
for atx = 50, 52 do for aty = 9, 14 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rclock") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rclock") end end
for atx = 38, 39 do for aty = 5, 12 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rkeep") end end
for atx = 31, 37 do for aty = 8, 12 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rkeep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rkeep") end end
for atx = 27, 28 do for aty = 10, 13 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 8, 13 do for aty = 21, 22 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 8, 9 do for aty = 21, 23 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 2, 4 do for aty = 27, 28 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rchapel") end end
for atx = 14, 25 do for aty = 22, 24 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcolos") end end
for atx = 17, 22 do for aty = 21, 21 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rcolos") end end
for atx = 18, 30 do for aty = 19, 19 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 27, 32 do for aty = 21, 22 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 29, 29 do for aty = 23, 25 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rolrox") end end
for atx = 19, 20 do for aty = 25, 27 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 17, 17 do for aty = 28, 34 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 8, 11 do for aty = 30, 31 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 12, 15 do for aty = 33, 35 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
for atx = 14, 16 do for aty = 36, 36 do table.insert(area_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Rlab") end end
table.insert(area_roomB, 63 - 31 + ((63 * 64) - (48 * 64 )), "Rmine")
table.insert(area_roomB, 63 - 2 + ((63 * 64) - (45 * 64 )), "Rgarden")
table.insert(area_roomB, 63 - 15 + ((63 * 64) - (38 * 64 )), "Rgate")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (38 * 64 )), "Rgate")
table.insert(area_roomB, 63 - 32 + ((63 * 64) - (37 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 39 + ((63 * 64) - (40 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 8 + ((63 * 64) - (42 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (41 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 17 + ((63 * 64) - (41 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 37 + ((63 * 64) - (28 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 45 + ((63 * 64) - (33 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 39 + ((63 * 64) - (26 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 40 + ((63 * 64) - (26 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 36 + ((63 * 64) - (34 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 40 + ((63 * 64) - (27 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 32 + ((63 * 64) - (34 * 64 )), "Rprison")
table.insert(area_roomB, 63 - 41 + ((63 * 64) - (26 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 44 + ((63 * 64) - (26 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 39 + ((63 * 64) - (24 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 34 + ((63 * 64) - (25 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 32 + ((63 * 64) - (24 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 27 + ((63 * 64) - (27 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 28 + ((63 * 64) - (27 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 27 + ((63 * 64) - (28 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 27 + ((63 * 64) - (32 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 27 + ((63 * 64) - (33 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 27 + ((63 * 64) - (34 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 31 + ((63 * 64) - (27 * 64 )), "Rmarble")
table.insert(area_roomB, 63 - 32 + ((63 * 64) - (28 * 64 )), "Rcentral")--central room
table.insert(area_roomB, 63 - 32 + ((63 * 64) - (29 * 64 )), "Rcentral")--central room
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (17 * 64 )), "Rwall")
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (26 * 64 )), "Rwall")
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (27 * 64 )), "Rwall")
table.insert(area_roomB, 63 - 55 + ((63 * 64) - (24 * 64 )), "Rwall")
table.insert(area_roomB, 63 - 44 + ((63 * 64) - (20 * 64 )), "Rlib")
table.insert(area_roomB, 63 - 44 + ((63 * 64) - (21 * 64 )), "Rlib")
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (15 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (14 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (11 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 49 + ((63 * 64) - (14 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 51 + ((63 * 64) - (8 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 40 + ((63 * 64) - (10 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 41 + ((63 * 64) - (10 * 64 )), "Rclock")
table.insert(area_roomB, 63 - 40 + ((63 * 64) - (12 * 64 )), "Rkeep")
table.insert(area_roomB, 63 - 33 + ((63 * 64) - (6 * 64 )), "Rkeep")
table.insert(area_roomB, 63 - 31 + ((63 * 64) - (7 * 64 )), "Rkeep")
table.insert(area_roomB, 63 - 30 + ((63 * 64) - (12 * 64 )), "Rkeep")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (21 * 64 )), "Rchapel")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (19 * 64 )), "Rchapel")
table.insert(area_roomB, 63 - 10 + ((63 * 64) - (20 * 64 )), "Rchapel")
table.insert(area_roomB, 63 - 29 + ((63 * 64) - (13 * 64 )), "Rchapel")
table.insert(area_roomB, 63 - 3 + ((63 * 64) - (26 * 64 )), "Rchapel")
table.insert(area_roomB, 63 - 26 + ((63 * 64) - (24 * 64 )), "Rcolos")
table.insert(area_roomB, 63 - 13 + ((63 * 64) - (24 * 64 )), "Rcolos")
table.insert(area_roomB, 63 - 19 + ((63 * 64) - (20 * 64 )), "Rcolos")
table.insert(area_roomB, 63 - 20 + ((63 * 64) - (20 * 64 )), "Rcolos")
table.insert(area_roomB, 63 - 34 + ((63 * 64) - (21 * 64 )), "Rolrox")
table.insert(area_roomB, 63 - 33 + ((63 * 64) - (21 * 64 )), "Rolrox")
table.insert(area_roomB, 63 - 28 + ((63 * 64) - (23 * 64 )), "Rolrox")
table.insert(area_roomB, 63 - 37 + ((63 * 64) - (21 * 64 )), "Rolrox")
table.insert(area_roomB, 63 - 31 + ((63 * 64) - (17 * 64 )), "Rolrox")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (28 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (31 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 8 + ((63 * 64) - (29 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 10 + ((63 * 64) - (29 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 11 + ((63 * 64) - (29 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 11 + ((63 * 64) - (32 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 12 + ((63 * 64) - (32 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 11 + ((63 * 64) - (34 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 12 + ((63 * 64) - (36 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (34 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (35 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 7 + ((63 * 64) - (30 * 64 )), "Rlab")
table.insert(area_roomB, 63 - 29 + ((63 * 64) - (27 * 64 )), "Rlab")
--cdroom arent show at all on the png
table.insert(area_roomB, 63 - 3 + ((63 * 64) - (44 * 64 )), "cd")
table.insert(area_roomB, 63 - 15 + ((63 * 64) - (41 * 64 )), "cd")
table.insert(area_roomB, 63 - 20 + ((63 * 64) - (36 * 64 )), "cd")
table.insert(area_roomB, 63 - 17 + ((63 * 64) - (36 * 64 )), "cd")
table.insert(area_roomB, 63 - 28 + ((63 * 64) - (38 * 64 )), "cd")
table.insert(area_roomB, 63 - 36 + ((63 * 64) - (34 * 64 )), "cd")
table.insert(area_roomB, 63 - 40 + ((63 * 64) - (26 * 64 )), "cd")
table.insert(area_roomB, 63 - 27 + ((63 * 64) - (36 * 64 )), "cd")
table.insert(area_roomB, 63 - 32 + ((63 * 64) - (49 * 64 )), "cd")
table.insert(area_roomB, 63 - 60 + ((63 * 64) - (14 * 64 )), "cd")
table.insert(area_roomB, 63 - 59 + ((63 * 64) - (21 * 64 )), "cd")
table.insert(area_roomB, 63 - 60 + ((63 * 64) - (25 * 64 )), "cd")
table.insert(area_roomB, 63 - 39 + ((63 * 64) - (10 * 64 )), "cd")
table.insert(area_roomB, 63 - 29 + ((63 * 64) - (12 * 64 )), "cd")
table.insert(area_roomB, 63 - 13 + ((63 * 64) - (22 * 64 )), "cd")
table.insert(area_roomB, 63 - 26 + ((63 * 64) - (22 * 64 )), "cd")
table.insert(area_roomB, 63 - 30 + ((63 * 64) - (25 * 64 )), "cd")
table.insert(area_roomB, 63 - 4 + ((63 * 64) - (28 * 64 )), "cd")
table.insert(area_roomB, 63 - 21 + ((63 * 64) - (26 * 64 )), "cd")
table.insert(area_roomB, 63 - 13 + ((63 * 64) - (22 * 64 )), "cd")
table.insert(area_roomB, 63 - 17 + ((63 * 64) - (19 * 64 )), "cd")
--cdroom but from teleporters, they actually are never in a different area, and the music from previous level will stay
table.insert(area_roomB, 63 - 34 + ((63 * 64) - (44 * 64 )), "Rmine")
table.insert(area_roomB, 63 - 16 + ((63 * 64) - (38 * 64 )), "Rgate")
table.insert(area_roomB, 63 - 36 + ((63 * 64) - (21 * 64 )), "Rolrox")
table.insert(area_roomB, 63 - 60 + ((63 * 64) - (17 * 64 )), "Rwall")
table.insert(area_roomB, 63 - 39 + ((63 * 64) - (12 * 64 )), "Rkeep")
table.insert(area_roomB, 63 - 3 + ((63 * 64) - (45 * 64 )), "Rgarden")
--the 2 extra square in reverse lake
table.insert(area_roomB, 63 - 45 + ((63 * 64) - (42 * 64 )), "Rcave")
table.insert(area_roomB, 63 - 48 + ((63 * 64) - (42 * 64 )), "Rcave")




text_roomB ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Floating Catacombs") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Floating Catacombs") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Floating Catacombs") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Floating Catacombs") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Floating Catacombs") end end
for atx = 33, 33 do for aty = 48, 49 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 29, 35 do for aty = 44, 44 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Cave") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Hell Gardens") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Hell Gardens") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Hell Garden") end end
for atx = 2, 2 do for aty = 41, 44 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Entrance") end end
for atx = 9, 13 do for aty = 42, 43 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 33, 40 do for aty = 37, 38 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 39, 55 do for aty = 41, 41 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 35, 37 do for aty = 27, 27 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 37, 37 do for aty = 32, 34 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 40, 42 do for aty = 29, 29 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Caverns") end end
for atx = 33, 35 do for aty = 34, 36 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Cursed Prison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Cursed Prison") end end
for atx = 47, 59 do for aty = 25, 25 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 30, 34 do for aty = 23, 23 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 37, 38 do for aty = 24, 26 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 25, 26 do for aty = 28, 32 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 21, 26 do for aty = 34, 36 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end
for atx = 31, 33 do for aty = 30, 32 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Black Marble Gallery") end end---central room
for atx = 60, 61 do for aty = 13, 29 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Outer Wall") end end
for atx = 56, 59 do for aty = 23, 24 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Outer Wall") end end
for atx = 52, 59 do for aty = 18, 21 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Forbidden Library") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Forbidden Library") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Forbidden Library") end end
for atx = 53, 58 do for aty = 11, 15 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Clock Tower") end end
for atx = 50, 52 do for aty = 9, 14 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Clock Tower") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Clock Tower") end end
for atx = 38, 39 do for aty = 5, 12 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Keep") end end
for atx = 31, 37 do for aty = 8, 12 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Keep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Keep") end end
for atx = 27, 28 do for aty = 10, 13 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 8, 13 do for aty = 21, 22 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 2, 4 do for aty = 27, 28 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 14, 25 do for aty = 22, 24 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Colosseum") end end
for atx = 17, 22 do for aty = 21, 21 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Reverse Colosseum") end end
for atx = 8, 9 do for aty = 21, 23 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Anti-Chapel") end end
for atx = 18, 30 do for aty = 19, 19 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 19, 20 do for aty = 25, 27 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 17, 17 do for aty = 28, 34 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 27, 32 do for aty = 21, 22 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 29, 29 do for aty = 23, 25 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Death Wing's Lair") end end
for atx = 8, 11 do for aty = 30, 31 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 12, 15 do for aty = 33, 35 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
for atx = 14, 16 do for aty = 36, 36 do table.insert(text_roomB, 63 - atx + ((63 * 64) - (aty * 64)), "Necromancy Laboratory") end end
table.insert(text_roomB, 63 - 34 + ((63 * 64) - (21 * 64 )), "Death Wing's Lair")
table.insert(text_roomB, 63 - 33 + ((63 * 64) - (21 * 64 )), "Death Wing's Lair")
table.insert(text_roomB, 63 - 28 + ((63 * 64) - (23 * 64 )), "Death Wing's Lair")
table.insert(text_roomB, 63 - 37 + ((63 * 64) - (21 * 64 )), "Death Wing's Lair")
table.insert(text_roomB, 63 - 31 + ((63 * 64) - (17 * 64 )), "Death Wing's Lair")
table.insert(text_roomB, 63 - 31 + ((63 * 64) - (48 * 64 )), "Cave")
table.insert(text_roomB, 63 - 2 + ((63 * 64) - (45 * 64 )), "Hell Gardens")
table.insert(text_roomB, 63 - 15 + ((63 * 64) - (38 * 64 )), "Reverse Entrance")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (38 * 64 )), "Reverse Entrance")
table.insert(text_roomB, 63 - 8 + ((63 * 64) - (42 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (41 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 17 + ((63 * 64) - (41 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 32 + ((63 * 64) - (37 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 39 + ((63 * 64) - (40 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 45 + ((63 * 64) - (33 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 39 + ((63 * 64) - (26 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 40 + ((63 * 64) - (26 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 36 + ((63 * 64) - (34 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 37 + ((63 * 64) - (28 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 40 + ((63 * 64) - (27 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 32 + ((63 * 64) - (34 * 64 )), "Reverse Cursed Prison")
table.insert(text_roomB, 63 - 41 + ((63 * 64) - (26 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 44 + ((63 * 64) - (26 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 39 + ((63 * 64) - (24 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 34 + ((63 * 64) - (25 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 32 + ((63 * 64) - (24 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 27 + ((63 * 64) - (27 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 28 + ((63 * 64) - (27 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 27 + ((63 * 64) - (28 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 27 + ((63 * 64) - (32 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 27 + ((63 * 64) - (33 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 27 + ((63 * 64) - (34 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 31 + ((63 * 64) - (27 * 64 )), "Black Marble Gallery")
table.insert(text_roomB, 63 - 32 + ((63 * 64) - (28 * 64 )), "Black Marble Gallery")---central room
table.insert(text_roomB, 63 - 32 + ((63 * 64) - (29 * 64 )), "Black Marble Gallery")---central room
table.insert(text_roomB, 63 - 59 + ((63 * 64) - (17 * 64 )), "Reverse Outer Wall")
table.insert(text_roomB, 63 - 59 + ((63 * 64) - (26 * 64 )), "Reverse Outer Wall")
table.insert(text_roomB, 63 - 59 + ((63 * 64) - (27 * 64 )), "Reverse Outer Wall")
table.insert(text_roomB, 63 - 55 + ((63 * 64) - (24 * 64 )), "Reverse Outer Wall")
table.insert(text_roomB, 63 - 44 + ((63 * 64) - (20 * 64 )), "Forbidden Library")
table.insert(text_roomB, 63 - 44 + ((63 * 64) - (21 * 64 )), "Forbidden Library")
table.insert(text_roomB, 63 - 59 + ((63 * 64) - (15 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 59 + ((63 * 64) - (14 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 59 + ((63 * 64) - (11 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 49 + ((63 * 64) - (14 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 51 + ((63 * 64) - (8 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 40 + ((63 * 64) - (10 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 41 + ((63 * 64) - (10 * 64 )), "Reverse Clock Tower")
table.insert(text_roomB, 63 - 40 + ((63 * 64) - (12 * 64 )), "Reverse Keep")
table.insert(text_roomB, 63 - 33 + ((63 * 64) - (6 * 64 )), "Reverse Keep")
table.insert(text_roomB, 63 - 31 + ((63 * 64) - (7 * 64 )), "Reverse Keep")
table.insert(text_roomB, 63 - 30 + ((63 * 64) - (12 * 64 )), "Reverse Keep")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (21 * 64 )), "Anti-Chapel")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (19 * 64 )), "Anti-Chapel")
table.insert(text_roomB, 63 - 10 + ((63 * 64) - (20 * 64 )), "Anti-Chapel")
table.insert(text_roomB, 63 - 3 + ((63 * 64) - (26 * 64 )), "Anti-Chapel")
table.insert(text_roomB, 63 - 29 + ((63 * 64) - (13 * 64 )), "Anti-Chapel")
table.insert(text_roomB, 63 - 26 + ((63 * 64) - (24 * 64 )), "Reverse Colosseum")
table.insert(text_roomB, 63 - 13 + ((63 * 64) - (24 * 64 )), "Reverse Colosseum")
table.insert(text_roomB, 63 - 19 + ((63 * 64) - (20 * 64 )), "Reverse Colosseum")
table.insert(text_roomB, 63 - 20 + ((63 * 64) - (20 * 64 )), "Reverse Colosseum")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (28 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (31 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 8 + ((63 * 64) - (29 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 10 + ((63 * 64) - (29 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 11 + ((63 * 64) - (29 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 11 + ((63 * 64) - (32 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 12 + ((63 * 64) - (32 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 11 + ((63 * 64) - (34 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 12 + ((63 * 64) - (36 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (34 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 16 + ((63 * 64) - (35 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 7 + ((63 * 64) - (30 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 29 + ((63 * 64) - (27 * 64 )), "Necromancy Laboratory")
table.insert(text_roomB, 63 - 45 + ((63 * 64) - (42 * 64 )), "Reverse Caverns")
table.insert(text_roomB, 63 - 48 + ((63 * 64) - (42 * 64 )), "Reverse Caverns")









special_roomB = {}
--cdroom arent show at all on the png
table.insert(special_roomB, 63 - 3 + ((63 * 64) - (44 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 3 + ((63 * 64) - (45 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 15 + ((63 * 64) - (41 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 20 + ((63 * 64) - (36 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 17 + ((63 * 64) - (36 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 16 + ((63 * 64) - (38 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 28 + ((63 * 64) - (38 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 36 + ((63 * 64) - (34 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 40 + ((63 * 64) - (26 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 27 + ((63 * 64) - (36 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 34 + ((63 * 64) - (44 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 32 + ((63 * 64) - (49 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 60 + ((63 * 64) - (14 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 59 + ((63 * 64) - (21 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 60 + ((63 * 64) - (17 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 60 + ((63 * 64) - (25 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 39 + ((63 * 64) - (10 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 39 + ((63 * 64) - (12 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 29 + ((63 * 64) - (12 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 36 + ((63 * 64) - (21 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 13 + ((63 * 64) - (22 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 26 + ((63 * 64) - (22 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 30 + ((63 * 64) - (25 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 4 + ((63 * 64) - (28 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 21 + ((63 * 64) - (26 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 13 + ((63 * 64) - (22 * 64 )), "CD Room")
table.insert(special_roomB, 63 - 17 + ((63 * 64) - (19 * 64 )), "CD Room")
--teleport
table.insert(special_roomB, 63 - 2 + ((63 * 64) - (45 * 64 )), "Bear Teleporter")
table.insert(special_roomB, 63 - 15 + ((63 * 64) - (38 * 64 )), "Horse Teleporter")
table.insert(special_roomB, 63 - 35 + ((63 * 64) - (44 * 64 )), "Viper Teleporter")
table.insert(special_roomB, 63 - 59 + ((63 * 64) - (17 * 64 )), "Crab Teleporter")
table.insert(special_roomB, 63 - 40 + ((63 * 64) - (12 * 64 )), "Lion Teleporter")
table.insert(special_roomB, 63 - 37 + ((63 * 64) - (21 * 64 )), "Ram Teleporter")
--save rooms
table.insert(special_roomB, 63 - 17 + ((63 * 64) - (37 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 13 + ((63 * 64) - (45 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 5 + ((63 * 64) - (39 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 40 + ((63 * 64) - (37 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 40 + ((63 * 64) - (27 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 43 + ((63 * 64) - (33 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 32 + ((63 * 64) - (34 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 28 + ((63 * 64) - (41 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 30 + ((63 * 64) - (50 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 22 + ((63 * 64) - (50 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 55 + ((63 * 64) - (24 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 60 + ((63 * 64) - (13 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 51 + ((63 * 64) - (19 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 39 + ((63 * 64) - (9 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 29 + ((63 * 64) - (13 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 31 + ((63 * 64) - (17 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 31 + ((63 * 64) - (27 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 29 + ((63 * 64) - (27 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 25 + ((63 * 64) - (23 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 14 + ((63 * 64) - (23 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 2 + ((63 * 64) - (28 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 7 + ((63 * 64) - (30 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 15 + ((63 * 64) - (27 * 64 )), "Save Room")
table.insert(special_roomB, 63 - 16 + ((63 * 64) - (35 * 64 )), "Save Room")
--




teleports_roomX = {
2,
15,
35,
59,
40,
37
}
teleports_roomY = {
45,
38,
44,
17,
12,
21
}

save_roomX = {
17,
13,
5,
40,
40,
43,
32,
28,
30,
22,
55,
60,
51,
39,
29,
31,
31,
29,
25,
14,
2,
7,
15,
16
}
save_roomY = {
37,
45,
39,
37,
27,
33,
34,
41,
50,
50,
24,
13,
19,
9,
13,
17,
27,
27,
23,
23,
28,
30,
27,
35
}

cdr_roomX = {
3,
3,
15,
20,
17,
16,
28,
36,
40,
27,
34,
32,
60,
59,
60,
60,
39,
39,
29,
36,
13,
26,
30,
4,
21,
13,
17
}

cdr_roomY = {
44,
45,
41,
36,
36,
38,
38,
34,
26,
36,
44,
49,
14,
21,
17,
25,
10,
12,
12,
21,
22,
22,
25,
28,
26,
22,
19
}


mist_roomX = {
47,
21,
11,
59
}
mist_roomY = {
21,
22,
15,
27
}
Bdoor_roomX = {
45,
7,
10
}
Bdoor_roomY = {
24,
28,
15
}



--boss rooms ... in byte order huh dont think its important but anyway
boss_roomA ={}
table.insert(boss_roomA, 0 + ( 0 * 64 ), "Prologue")--safeguard? prologue is there but anyway at 0 I should trow it away
table.insert(boss_roomA, 19 + ( 16 * 64 ), "Olrox")--access
table.insert(boss_roomA, 20 + ( 16 * 64 ), "Olrox")--access
table.insert(boss_roomA, 19 + ( 17 * 64 ), "Olrox")
table.insert(boss_roomA, 20 + ( 17 * 64 ), "Olrox")
table.insert(boss_roomA, 57 + ( 23 * 64 ), "Alucard Lv10")
table.insert(boss_roomA, 58 + ( 23 * 64 ), "Alucard Lv10")
table.insert(boss_roomA, 18 + ( 50 * 64 ), "Granfaloon")
table.insert(boss_roomA, 19 + ( 50 * 64 ), "Granfaloon")--access
table.insert(boss_roomA, 18 + ( 51 * 64 ), "Granfaloon")--access
table.insert(boss_roomA, 19 + ( 51 * 64 ), "Granfaloon")
table.insert(boss_roomA, 19 + ( 22 * 64 ), "Minotor&Werewolf")
table.insert(boss_roomA, 20 + ( 22 * 64 ), "Minotor&Werewolf")
table.insert(boss_roomA, 40 + ( 39 * 64 ), "Scylla")--access
table.insert(boss_roomA, 41 + ( 38 * 64 ), "Scylla")--access
table.insert(boss_roomA, 9 + ( 27 * 64 ), "Slogra & Gaibon")--access
table.insert(boss_roomA, 10 + ( 27 * 64 ), "Solgra and Gaibon")
table.insert(boss_roomA, 11 + ( 27 * 64 ), "Solgra and Gaibon")
table.insert(boss_roomA, 12 + ( 27 * 64 ), "Solgra and Gaibon")--access
table.insert(boss_roomA, 9 + ( 28 * 64 ), "Solgra and Gaibon")
table.insert(boss_roomA, 10 + ( 28 * 64 ), "Solgra and Gaibon")
table.insert(boss_roomA, 11 + ( 28 * 64 ), "Solgra and Gaibon")
table.insert(boss_roomA, 12 + ( 28 * 64 ), "Solgra and Gaibon")--access
table.insert(boss_roomA, 23 + ( 13 * 64 ), "Hippogryph")
table.insert(boss_roomA, 24 + ( 13 * 64 ), "Hippogryph")
table.insert(boss_roomA, 45 + ( 33 * 64 ), "Succubus")
table.insert(boss_roomA, 40 + ( 10 * 64 ), "Karasuman")
table.insert(boss_roomA, 30 + ( 40 * 64 ), "Cerberus")
table.insert(boss_roomA, 31 + ( 40 * 64 ), "Cerberus")
table.insert(boss_roomA, 33 + ( 8 * 64 ), "Save Richter")
table.insert(boss_roomA, 45 + ( 20 * 64 ), "Lesser Demon")
table.insert(boss_roomA, 46 + ( 20 * 64 ), "Lesser Demon")
table.insert(boss_roomA, 21 + ( 44 * 64 ), "Skeleton Leader")
table.insert(boss_roomA, 20 + ( 40 * 64 ), "Meet Death")
table.insert(boss_roomA, 32 + ( 31 * 64 ), "Holy Glasses")
table.insert(boss_roomA, 49 + ( 20 * 64 ), "Meet Librarian")
table.insert(boss_roomA, 32 + ( 26 * 64 ), "Meet Maria")




--we have 2 squares for each boss, sometime u have 2 entry point, so you have 2 pair of coordinates
--for single room boss its 0 in second table, for the boss in second castle its 0 too
--byte order of time attack, with sayd boss coordinate, this is the first square we will draw
boss_roomA_data1 = {
"Prologue", 0, 0,
"Olrox", 19, 16,
"Alucard Lv10", 57, 23,
"Granfaloon", 19, 50,
"Minotor&Werewolf", 19, 22,
"Scylla", 40, 39,
"Solgra and Gaibon", 9, 27,
"Hippogryph", 24, 13,
"Beelzebub", 0, 0,
"Succubus", 45, 33,
"Karasuman", 40, 10,
"Evil Trio", 0, 0,
"Defeat Death", 0, 0,
"Cerberus", 30, 40,
"Save Richter", 33, 8,
"Medusa", 0, 0,
"The Creature", 0, 0,
"Lesser Demon", 45, 20,
"Alucard Lv40", 0, 0,
"Akmodan II", 0, 0,
"Darkwing Bat", 0, 0,
"Galamoth", 0, 0,
"Skeleton Leader", 21, 44,
"Final Save Point", 0, 0,
"Meet Death", 20, 40,
"Holy Glasses", 32, 31,
"Meet Librarian", 49, 20,
"Meet Maria", 32, 26,
}

--byte order of time attack, with sayd boss coordinate, this is the second square we will draw
boss_roomA_data2 = {
"Prologue", 0, 0,
"Olrox", 20, 16,
"Alucard Lv10", 58, 23,
"Granfaloon", 18, 51,
"Minotor&Werewolf", 20, 22,
"Scylla", 41, 38,
"Solgra and Gaibon", 12, 28,
"Hippogryph", 23, 13,
"Beelzebub", 0, 0,
"Succubus", 0, 0,
"Karasuman", 0, 0,
"Evil Trio", 0, 0,
"Defeat Death", 0, 0,
"Cerberus", 31, 40,
"Save Richter", 0, 0,
"Medusa", 0, 0,
"The Creature", 0, 0,
"Lesser Demon", 46, 20,
"Alucard Lv40", 0, 0,
"Akmodan II", 0, 0,
"Darkwing Bat", 0, 0,
"Galamoth", 0, 0,
"Skeleton Leader", 0, 0,
"Final Save Point", 0, 0,
"Meet Death", 0, 0,
"Holy Glasses", 0, 0,
"Meet Librarian", 0,0,
"Meet Maria", 0, 0,
}


boss_roomB ={}
table.insert(boss_roomB, 63 - 19 + ((63 * 64) - ( 16 * 64 )), "Akmodan II")--access
table.insert(boss_roomB, 63 - 20 + ((63 * 64) -  ( 16 * 64 )), "Akmodan II")--access
table.insert(boss_roomB, 63 - 19 + ((63 * 64) -  ( 17 * 64 )), "Akmodan II")
table.insert(boss_roomB, 63 - 20 + ((63 * 64) -  ( 17 * 64 )), "Akmodan II")
table.insert(boss_roomB, 63 - 57 + ((63 * 64) -  ( 23 * 64 )), "The Creature")
table.insert(boss_roomB, 63 - 58 + ((63 * 64) -  ( 23 * 64 )), "The Creature")
table.insert(boss_roomB, 63 - 18 + ((63 * 64) -  ( 50 * 64 )), "Galamoth")
table.insert(boss_roomB, 63 - 19 + ((63 * 64) -  ( 50 * 64 )), "Galamoth")--access
table.insert(boss_roomB, 63 - 18 + ((63 * 64) -  ( 51 * 64 )), "Galamoth")--access
table.insert(boss_roomB, 63 - 19 + ((63 * 64) -  ( 51 * 64 )), "Galamoth")
table.insert(boss_roomB, 63 - 19 + ((63 * 64) -  ( 22 * 64 )), "Evil Trio")
table.insert(boss_roomB, 63 - 20 + ((63 * 64) -  ( 22 * 64 )), "Evil Trio")
table.insert(boss_roomB, 63 - 40 + ((63 * 64) -  ( 39 * 64 )), "Alucard lvl40")--access
table.insert(boss_roomB, 63 - 9 + ((63 * 64) -  ( 27 * 64 )), "Beelzebub")--access
table.insert(boss_roomB, 63 - 10 + ((63 * 64) -  ( 27 * 64 )), "Beelzebub")
table.insert(boss_roomB, 63 - 11 + ((63 * 64) -  ( 27 * 64 )), "Beelzebub")
table.insert(boss_roomB, 63 - 12 + ((63 * 64) -  ( 27 * 64 )), "Beelzebub")--access
table.insert(boss_roomB, 63 - 9 + ((63 * 64) -  ( 28 * 64 )), "Beelzebub")
table.insert(boss_roomB, 63 - 10 + ((63 * 64) -  ( 28 * 64 )), "Beelzebub")
table.insert(boss_roomB, 63 - 11 + ((63 * 64) -  ( 28 * 64 )), "Beelzebub")
table.insert(boss_roomB, 63 - 12 + ((63 * 64) -  ( 28 * 64 )), "Beelzebub")--access
table.insert(boss_roomB, 63 - 23 + ((63 * 64) -  ( 13 * 64 )), "Medusa")
table.insert(boss_roomB, 63 - 24 + ((63 * 64) -  ( 13 * 64 )), "Medusa")
table.insert(boss_roomB, 63 - 40 + ((63 * 64) -  ( 10 * 64 )), "Darkwing Bat")
table.insert(boss_roomB, 63 - 30 + ((63 * 64) -  ( 40 * 64 )), "Death")
table.insert(boss_roomB, 63 - 31 + ((63 * 64) -  ( 40 * 64 )), "Death")
table.insert(boss_roomB, 63 - 31 + ((63 * 64) -  ( 27 * 64 )), "Last Save Point")



--we have 2 squares for each boss, sometime u have 2 entry point, so you have 2 pair of coordinates
--for single room boss its 0 in second table, for the boss in second castle its 0 too
--byte order of time attack, with sayd boss coordinate, this is the first square we will draw
boss_roomB_data1 = {
"Prologue", 0, 0,
"Olrox", 0, 0,
"Alucard Lv10", 0, 0,
"Granfaloon", 0, 0,
"Minotor&Werewolf", 0, 0,
"Scylla", 0, 0,
"Solgra and Gaibon", 0, 0,
"Hippogryph", 0, 0,
"Beelzebub", 9, 27,
"Succubus", 0, 0,
"Karasuman", 0, 0,
"Evil Trio", 19, 22,
"Defeat Death", 30, 40,
"Cerberus", 0, 0,
"Save Richter", 0, 0,
"Medusa", 24, 13,
"The Creature", 57, 23,
"Lesser Demon", 0, 0,
"Alucard Lv40", 40, 39,
"Akmodan II", 19, 16,
"Darkwing Bat", 40, 10,
"Galamoth", 19, 50,
"Skeleton Leader", 0, 0,
"Final Save Point", 31, 27,
"Meet Death", 0, 0,
"Holy Glasses", 0, 0,
"Meet Librarian", 0, 0,
"Meet Maria", 0, 0,
}

--byte order of time attack, with sayd boss coordinate, this is the second square we will draw
boss_roomB_data2 = {
"Prologue", 0, 0,
"Olrox", 0, 0,
"Alucard Lv10", 0, 0,
"Granfaloon", 0, 0,
"Minotor&Werewolf", 0, 0,
"Scylla", 0, 0,
"Solgra and Gaibon", 0, 0,
"Hippogryph", 0, 0,
"Beelzebub", 12, 28,
"Succubus", 0, 0,
"Karasuman", 0, 0,
"Evil Trio", 20, 22,
"Defeat Death", 31, 40,
"Cerberus", 0, 0,
"Save Richter", 0, 0,
"Medusa", 23, 13,
"The Creature", 58, 23,
"Lesser Demon", 0, 0,
"Alucard Lv40", 0, 0,
"Akmodan II", 20, 16,
"Darkwing Bat", 0, 0,
"Galamoth", 18, 51,
"Skeleton Leader", 0, 0,
"Final Save Point", 0, 0,
"Meet Death", 0, 0,
"Holy Glasses", 0, 0,
"Meet Librarian", 0, 0,
"Meet Maria", 0, 0,
}


--this is a empty table data for time attack
time_attack_data_time = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
"-------------------------",
}

--the text string that we want to display for our function timeattack, byte order
--typo are intended, so the text doesnt overlap on each others
time_attack_text = {
"Prologue",
"Olrox",
"Alucard Lv10",
"Granfaloon",
"Minotor&Werewolf",
"Scylla",
"Solgra and Gaibon",
"Hippogryph",
"Beelzebub",
"Succubus",
"Karasuman",
"Evil Trio",
"Defeat Death",
"Cerberus",
"Save Richter",
"Medusa",
"The Creature",
"Lesser Demon",
"Alucard Lv40",
"Akmodan II",
"Darkwing Bat",
"Galamoth",
"Skeleton Leader",
"Final Save Point",
"Meet Death",
"Holy Glasses",
"Meet Librarian",
"Meet Maria",
}


--relic rooms ... in byte order huh dont think its important but anyway
relic_roomA ={}
table.insert(relic_roomA, 59 + ( 11 * 64 ), "Fire of Bat")
table.insert(relic_roomA, 48 + ( 21 * 64 ), "Soul of Bat")
table.insert(relic_roomA, 16 + ( 16 * 64 ), "Echo of Bat")
table.insert(relic_roomA, 3 + ( 38 * 64 ), "Power of Wolf")
table.insert(relic_roomA, 61 + ( 18 * 64 ), "Soul of Wolf")
table.insert(relic_roomA, 21 + ( 22 * 64 ), "Form of Mist")
table.insert(relic_roomA, 15 + ( 33 * 64 ), "Skill of Wolf")
table.insert(relic_roomA, 31 + ( 9 * 64 ), "Power of Mist")
table.insert(relic_roomA, 25 + ( 31 * 64 ), "Soul Orb")
table.insert(relic_roomA, 18 + ( 36 * 64 ), "Cube of Zoe")
table.insert(relic_roomA, 31 + ( 11 * 64 ), "Leap Stone")
table.insert(relic_roomA, 34 + ( 23 * 64 ), "Gravity Boots")
table.insert(relic_roomA, 59 + ( 18 * 64 ), "Fairy's Scroll")
table.insert(relic_roomA, 55 + ( 41 * 64 ), "Holy Symbol")
table.insert(relic_roomA, 8 + ( 42 * 64 ), "Merman Statue")
table.insert(relic_roomA, 49 + ( 20 * 64 ), "Jewel of Open") --overlap with boss event "meet librarian" and librarian square...
table.insert(relic_roomA, 39 + ( 7 * 64 ), "Ghost Card")
table.insert(relic_roomA, 13 + ( 27 * 64 ), "Bat Card")
table.insert(relic_roomA, 29 + ( 44 * 64 ), "Demon Card")
table.insert(relic_roomA, 52 + ( 18 * 64 ), "Fairy Card")
table.insert(relic_roomA, 20 + ( 18 * 64 ), "Sprite Card")
table.insert(relic_roomA, 33 + ( 18 * 64 ), "Sword Card")
table.insert(relic_roomA, 19 + ( 20 * 64 ), "Nosedevil Card")
table.insert(relic_roomA, 31 + ( 8 * 64 ), "Godspeed Boots")

relic_roomA_data = {
"relic_bat_fire", 59, 11,
"relic_bat_soul", 48, 21,
"relic_bat_echo", 16, 16,
"relic_bat_power", 0, 0,
"relic_wolf_power", 15, 33,
"relic_wolf_soul", 61, 18,
"relic_mist_form", 21, 22,
"relic_wolf_skill", 2, 38,
"relic_mist_gaz", 0, 0,
"relic_mist_power", 31, 9,
"relic_orb", 25, 31,
"relic_cube", 18, 36,
"relic_stone", 31, 11,
"relic_gravity", 34, 23,
"relic_scroll", 59, 18,
"relic_j", 55, 41,
"relic_merman", 8, 42,
"relic_open", 49, 20,
"relic_ghost", 39, 7,
"relic_bat", 13, 27,
"relic_demon", 29, 44,
"relic_fairy", 52, 18,
"relic_sprite", 20, 18,
"relic_sword", 33, 18,
"relic_heart", 0, 0,
"relic_nose", 19, 20,
"relic_bone", 0, 0,
"relic_nail", 0, 0,
"relic_eye", 0, 0,
"relic_ring", 0, 0,
"relic_fake", 0, 0,
"relic_speed", 31, 8,
}



--the text string that we want at the for in function relic, byte order
relic_text = {
-- this text will match the icons naming scheme
"relic_bat_fire",--1
"relic_bat_soul",
"relic_bat_echo",
"relic_bat_power",
"relic_wolf_power",
"relic_wolf_soul",
"relic_mist_form",
"relic_wolf_skill",
"relic_mist_gaz",
"relic_mist_power",
"relic_orb",
"relic_cube",
"relic_stone",
"relic_gravity",
"relic_scroll",
"relic_j",
"relic_merman",
"relic_open",
"relic_ghost",
"relic_bat",
"relic_demon",
"relic_fairy",
"relic_sprite",
"relic_sword",
"relic_heart",
"relic_nose",
"relic_bone",
"relic_nail",
"relic_eye",
"relic_ring",
"relic_fake",
"relic_speed",--32
-- next is the text from map
"Fire of Bat",--33
"Soul of Bat",
"Echo of Bat",
"Force of Echo", --second castle
"Power of Wolf",
"Soul of Wolf",
"Form of Mist",
"Skill of Wolf",
"Poison Could", --second castle
"Power of Mist",
"Soul Orb",
"Cube of Zoe",
"Leap Stone",
"Gravity Boots",
"Fairy's Scroll",
"Holy Symbol",
"Merman Statue",
"Jewel of Open",
"Ghost Card",
"Bat Card",
"Demon Card",
"Fairy Card",
"Sprite Card",
"Sword Card",
"Heart of Vlad", --second castle
"Nosedevil Card",
"Rib of Vlad", --second castle
"Tooth of Vlad", --second castle
"Eye of Vlad", --second castle
"Ring of Vlad", --second castle
"- - -", --doesnt exist
"Godspeed Boots",
}

relic_roomB ={}
table.insert(relic_roomB, 63 - 58 + ((63 * 64) - (23 * 64 )), "Tooth of Vlad")
table.insert(relic_roomB, 63 - 23 + ((63 * 64) - (13 * 64 )), "Heart of Vlad")
table.insert(relic_roomB, 63 - 30 + ((63 * 64) - (40 * 64 )), "Eye of Vlad")
table.insert(relic_roomB, 63 - 20 + ((63 * 64) - (16 * 64 )), "Rib of Vlad")
table.insert(relic_roomB, 63 - 40 + ((63 * 64) - (10 * 64 )), "Ring of Vlad")
table.insert(relic_roomB, 63 - 55 + ((63 * 64) - (41 * 64 )), "Force of Echo")
table.insert(relic_roomB, 63 - 17 + ((63 * 64) - (50 * 64 )), "Poison Cloud")


relic_roomB_data = {
"relic_bat_fire", 0, 0,
"relic_bat_soul", 0, 0,
"relic_bat_echo", 0, 0,
"relic_bat_power", 55, 41,
"relic_wolf_power", 0, 0,
"relic_wolf_soul", 0, 0,
"relic_mist_form", 0, 0,
"relic_wolf_skill", 0, 0,
"relic_mist_gaz", 17, 50,
"relic_mist_power", 0, 0,
"relic_orb", 0, 0,
"relic_cube", 0, 0,
"relic_stone", 0, 0,
"relic_gravity", 0, 0,
"relic_scroll", 0, 0,
"relic_j", 0, 0,
"relic_merman", 0, 0,
"relic_open", 0, 0,
"relic_ghost", 0, 0,
"relic_bat", 0, 0,
"relic_demon", 0, 0,
"relic_fairy", 0, 0,
"relic_sprite", 0, 0,
"relic_sword", 0, 0,
"relic_heart", 23, 13,
"relic_nose", 0, 0,
"relic_bone", 20, 16,
"relic_nail", 58, 23,
"relic_eye", 30, 40,
"relic_ring", 40, 10,
"relic_fake", 0, 0,
"relic_speed", 0, 0,
}




lifeup_roomA ={}
table.insert(lifeup_roomA, 3 + ( 38 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 14 + ( 41 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 20 + ( 37 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 12 + ( 36 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 33 + ( 27 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 31 + ( 25 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 61 + ( 23 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 14 + ( 13 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 38 + ( 7 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 38 + ( 6 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 37 + ( 32 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 36 + ( 27 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 9 + ( 43 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 50 + ( 9 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 29 + ( 37 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 42 + ( 42 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 32 + ( 51 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 25 + ( 42 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 30 + ( 38 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 0 + ( 0 * 64 ), "Life Max Up")
table.insert(lifeup_roomA, 0 + ( 0 * 64 ), "Life Max Up")

heartup_roomA ={}
table.insert(heartup_roomA, 17 + ( 38 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 19 + ( 39 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 11 + ( 34 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 33 + ( 27 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 33 + ( 25 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 60 + ( 15 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 39 + ( 6 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 35 + ( 8 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 38 + ( 7* 64 ), "Heart Max Up")
table.insert(heartup_roomA, 52 + ( 9 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 29 + ( 37 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 21 + ( 19 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 26 + ( 24 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 26 + ( 50 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 32 + ( 51 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")
table.insert(heartup_roomA, 0 + ( 0 * 64 ), "Heart Max Up")

pickup_roomA ={}
table.insert(pickup_roomA, 18 + ( 22 * 64 ), "Library Card")
table.insert(pickup_roomA, 10 + ( 41 * 64 ), "Jewel Sword - Life Apple")
table.insert(pickup_roomA, 5 + ( 38 * 64 ), "Holy Armor")
table.insert(pickup_roomA, 19 + ( 36 * 64 ), "Shield Potion")
table.insert(pickup_roomA, 19 + ( 27 * 64 ), "Potion")
table.insert(pickup_roomA, 16 + ( 34 * 64 ), "Basilard")
table.insert(pickup_roomA, 13 + ( 35 * 64 ), "Leather Shield")
table.insert(pickup_roomA, 11 + ( 32 * 64 ), "Resist Thunder")
table.insert(pickup_roomA, 16 + ( 31 * 64 ), "Sunglasses")
table.insert(pickup_roomA, 10 + ( 29 * 64 ), "Cloth Cape")
table.insert(pickup_roomA, 14 + ( 36 * 64 ), "Hide Armor")
table.insert(pickup_roomA, 26 + ( 28 * 64 ), "Strength Potion")
table.insert(pickup_roomA, 26 + ( 30 * 64 ), "Magic Hammer")
table.insert(pickup_roomA, 44 + ( 26 * 64 ), "Library Card - Attack Potion")
table.insert(pickup_roomA, 34 + ( 25 * 64 ), "Alucart Sword - Alucart Armor")
table.insert(pickup_roomA, 30 + ( 23 * 64 ), "Potion - Magic Hammer - Life Apple")
table.insert(pickup_roomA, 33 + ( 25 * 64 ), "Alucart Shield")
table.insert(pickup_roomA, 46 + ( 21 * 64 ), "Takemitsu - Onyx - Frankfurter")
table.insert(pickup_roomA, 49 + ( 21 * 64 ), "Bronze Armor")
table.insert(pickup_roomA, 50 + ( 18 * 64 ), "Holy Rod")
table.insert(pickup_roomA, 49 + ( 18 * 64 ), "Stone Mask")
table.insert(pickup_roomA, 61 + ( 25 * 64 ), "Zircon")
table.insert(pickup_roomA, 59 + ( 23 * 64 ), "Gladius")
table.insert(pickup_roomA, 61 + ( 24 * 64 ), "Garnet")
table.insert(pickup_roomA, 59 + ( 27 * 64 ), "Jewel Knuckles - Mirror Cuirass")
table.insert(pickup_roomA, 6 + ( 23 * 64 ), "Ank of Life - TNT")
table.insert(pickup_roomA, 5 + ( 24 * 64 ), "Shuriken")
table.insert(pickup_roomA, 4 + ( 25 * 64 ), "Mystic Pendant - Magic Missile")
table.insert(pickup_roomA, 2 + ( 27 * 64 ), "Aquamarine")
table.insert(pickup_roomA, 8 + ( 15 * 64 ), "Silver Ring")
table.insert(pickup_roomA, 9 + ( 21 * 64 ), "Mace")
table.insert(pickup_roomA, 50 + ( 18 * 64 ), "Topaz Circlet")
table.insert(pickup_roomA, 52 + ( 18 * 64 ), "Potion - Antivenon")
table.insert(pickup_roomA, 27 + ( 11 * 64 ), "Potion")
table.insert(pickup_roomA, 27 + ( 10 * 64 ), "Talwar")
table.insert(pickup_roomA, 19 + ( 31 * 64 ), "Zircon")
table.insert(pickup_roomA, 15 + ( 13 * 64 ), "Strength Potion")
table.insert(pickup_roomA, 14 + ( 12 * 64 ), "Silver Plate")
table.insert(pickup_roomA, 10 + ( 21 * 64 ), "Goggles")
table.insert(pickup_roomA, 7 + ( 23 * 64 ), "Boomrang")
table.insert(pickup_roomA, 39 + ( 8 * 64 ), "Falchion")
table.insert(pickup_roomA, 35 + ( 6 * 64 ), "Platinum Mail - Resist Dark/Stone")
table.insert(pickup_roomA, 36 + ( 6 * 64 ), "Resist Holy")
table.insert(pickup_roomA, 34 + ( 6 * 64 ), "Frankfurter")
table.insert(pickup_roomA, 33 + ( 6 * 64 ), "Turkey - Pot Roast - Sirloin")
table.insert(pickup_roomA, 39 + ( 1 * 64 ), "Tyrfing")
table.insert(pickup_roomA, 31 + ( 9 * 64 ), "Fire Mail")
table.insert(pickup_roomA, 31 + ( 11 * 64 ), "Turquoise - Turkey")
table.insert(pickup_roomA, 55 + ( 13 * 64 ), "Bekatowa")
table.insert(pickup_roomA, 42 + ( 11 * 64 ), "Healing Mail")
table.insert(pickup_roomA, 49 + ( 14 * 64 ), "Gold Plate - Star Flail - Iron Helmet")
table.insert(pickup_roomA, 55 + ( 14 * 64 ), "Pentagram")
table.insert(pickup_roomA, 56 + ( 14 * 64 ), "Magic Missile")
table.insert(pickup_roomA, 22 + ( 37 * 64 ), "Herald Shield")
table.insert(pickup_roomA, 51 + ( 9 * 64 ), "Rainbow Cloak")
table.insert(pickup_roomA, 55 + ( 13 * 64 ), "Ice Armor - Shaman Shield")
table.insert(pickup_roomA, 40 + ( 41 * 64 ), "Knuckle Duster")
table.insert(pickup_roomA, 45 + ( 41 * 64 ), "Onyx")
table.insert(pickup_roomA, 45 + ( 38 * 64 ), "Pot Roast")
table.insert(pickup_roomA, 43 + ( 39 * 64 ), "Resist Ice")
table.insert(pickup_roomA, 45 + ( 39 * 64 ), "Scimitar")
table.insert(pickup_roomA, 44 + ( 33 * 64 ), "Moonstone - Meal ticket")
table.insert(pickup_roomA, 44 + ( 32 * 64 ), "Meal Ticket x3")
table.insert(pickup_roomA, 43 + ( 29 * 64 ), "Claymore")
table.insert(pickup_roomA, 38 + ( 36 * 64 ), "Shiitake")
table.insert(pickup_roomA, 35 + ( 27 * 64 ), "Bandanna")
table.insert(pickup_roomA, 45 + ( 33 * 64 ), "Gold Ring")
table.insert(pickup_roomA, 39 + ( 26 * 64 ), "Zircon")
table.insert(pickup_roomA, 38 + ( 38 * 64 ), "Nunchaku")
table.insert(pickup_roomA, 17 + ( 41 * 64 ), "Shiitake")
table.insert(pickup_roomA, 23 + ( 42 * 64 ), "Toadstool")
table.insert(pickup_roomA, 23 + ( 40 * 64 ), "Shiitake")
table.insert(pickup_roomA, 24 + ( 39 * 64 ), "Secret Boots")
table.insert(pickup_roomA, 25 + ( 37 * 64 ), "Pentagram")
table.insert(pickup_roomA, 37 + ( 37 * 64 ), "Shiitake")
table.insert(pickup_roomA, 38 + ( 37 * 64 ), "Toadstool")
table.insert(pickup_roomA, 52 + ( 42 * 64 ), "Elixir")
table.insert(pickup_roomA, 22 + ( 16 * 64 ), "Iron Ball")
table.insert(pickup_roomA, 30 + ( 15 * 64 ), "Estoc")
table.insert(pickup_roomA, 35 + ( 17 * 64 ), "Luck Potion")
table.insert(pickup_roomA, 35 + ( 19 * 64 ), "Resist Fire")
table.insert(pickup_roomA, 35 + ( 20 * 64 ), "Mana Prism")
table.insert(pickup_roomA, 32 + ( 22 * 64 ), "Broadsword - Onyx - Frankfurter")
table.insert(pickup_roomA, 32 + ( 46 * 64 ), "Shiitake")
table.insert(pickup_roomA, 32 + ( 47 * 64 ), "Shiitake")
table.insert(pickup_roomA, 31 + ( 48 * 64 ), "Combat Knife - Karma Coin")
table.insert(pickup_roomA, 37 + ( 41 * 64 ), "Ring Of Ares - Turkey")
table.insert(pickup_roomA, 36 + ( 41 * 64 ), "Power of Sire - Tea - Peanut x4")
table.insert(pickup_roomA, 19 + ( 24 * 64 ), "Barley Tea")
table.insert(pickup_roomA, 14 + ( 22 * 64 ), "Knight Shield")
table.insert(pickup_roomA, 20 + ( 24 * 64 ), "Blood Cape")
table.insert(pickup_roomA, 13 + ( 24 * 64 ), "Shield Rod")
table.insert(pickup_roomA, 26 + ( 50 * 64 ), "Ballroom Mask")
table.insert(pickup_roomA, 41 + ( 50 * 64 ), "Library Card")
table.insert(pickup_roomA, 17 + ( 50 * 64 ), "Morgemil")
table.insert(pickup_roomA, 23 + ( 50 * 64 ), "Walk Armor")
table.insert(pickup_roomA, 24 + ( 50 * 64 ), "Icebrand")
table.insert(pickup_roomA, 28 + ( 50 * 64 ), "Cat-Eye Circlet")
table.insert(pickup_roomA, 20 + ( 51 * 64 ), "Lyric Card")
table.insert(pickup_roomA, 33 + ( 51 * 64 ), "Monster Vial 3")
table.insert(pickup_roomA, 41 + ( 51 * 64 ), "Spike Breaker")
table.insert(pickup_roomA, 48 + ( 50 * 64 ), "Karma Coin x2 Cross Shuriken x2")
table.insert(pickup_roomA, 28 + ( 50 * 64 ), "Blood Pendant")
table.insert(pickup_roomA, 48 + ( 51 * 64 ), "Pork Bun")
table.insert(pickup_roomA, 6 + ( 44 * 64 ), "Alucard Autograph")
table.insert(pickup_roomA, 35 + ( 36 * 64 ), "Smelly Rice")
table.insert(pickup_roomA, 33 + ( 35 * 64 ), "Astral Dagger")
table.insert(pickup_roomA, 35 + ( 35 * 64 ), "Karma Coin")
table.insert(pickup_roomA, 30 + ( 38 * 64 ), "Uncurse")
table.insert(pickup_roomA, 40 + ( 38 * 64 ), "Crystal Cloak")


heartup_roomB ={}
table.insert(heartup_roomA, 17 + ( 38 * 64 ), "Heart Max Up")

lifeup_roomB ={}
table.insert(lifeup_roomA, 3 + ( 38 * 64 ), "Life Max Up")


pickup_roomB ={}
table.insert(pickup_roomA, 18 + ( 22 * 64 ), "Library Card")




unlockA_byte = {
"marble", 	--byte1
"no", 		--byte2
"no", 		--byte3
"no", 		--byte4
"no", 		--byte5
"no", 		--byte6
"no", 		--byte7
"no", 		--byte8
"no", 		--byte9
"no", 		--byte10
"no", 		--byte11
"no", 		--byte12
"no", 		--byte13
"no", 		--byte14
"no", 		--byte15
"no", 		--byte16
"no", 		--byte17
"no", 		--byte18
"marble", 	--byte19
"marble", 	--byte20
"no", 		--byte21
"marble", 	--byte22
"no", 		--byte23
"no", 		--byte24
"no", 		--byte25
"no", 		--byte26
"no", 		--byte27
"no", 		--byte28
"no", 		--byte29
"no", 		--byte30
"no", 		--byte31
"no", 		--byte32
"no", 		--byte33
"no", 		--byte34
"no", 		--byte35
"wall", 	--byte36
"wall", 	--byte37
"wall", 	--byte38
"wall", 	--byte39
"no", 		--byte40
"no", 		--byte41
"no", 		--byte42
"no", 		--byte43
"????", 	--byte44
"no", 		--byte45
"no", 		--byte46
"no", 		--byte47
"no", 		--byte48
"no", 		--byte49
"no", 		--byte50
"olrox", 	--byte51
"olrox", 	--byte52
"no", 		--byte53
"olrox", 	--byte54
"no", 		--byte55
"no", 		--byte56
"no", 		--byte57
"no", 		--byte58
"????", 	--byte59
"????", 	--byte60
"no", 		--byte61
"no", 		--byte62
"no", 		--byte63
"no", 		--byte64
"no", 		--byte65
"no", 		--byte66
"gate", 	--byte67
"gate", 	--byte68
"gate", 	--byte69
"gate", 	--byte70
"????", 	--byte71
"gate", 	--byte72
"gate", 	--byte73
"no", 		--byte74
"gate", 	--byte75
"gate", 	--byte76
"????", 	--byte77
"gate", 	--byte78
"????", 	--byte79
"no", 		--byte80
"no", 		--byte81
"no", 		--byte82
"cata", 	--byte83
"cata", 	--byte84
"cata", 	--byte85
"cata", 	--byte86
"no", 		--byte87
"cata", 	--byte88
"no", 		--byte89
"no", 		--byte90
"no", 		--byte91
"????", 	--byte92
"????", 	--byte93
"no", 		--byte94
"no", 		--byte95
"no", 		--byte96
"no", 		--byte97
"no", 		--byte98
"mine", 	--byte99





}


unlock_byte_order = {
"marble", --weird switch in maria boss
"marble",
"wall",
"olrox",
"gate",
"cata",
"mine",
"chapel",
"lib",
"lab",
"keep",
"clock",
"colos",
"cave",
"marble", --teleporter "state" and maria boss cutscene
"marble",  --unknow range
"prison", --and garden... but whatever
}


pickupA_byte = {
"gateA", 	--byte1
"gateA", 	--byte2
"gate", 	--byte3
"gate", 	--byte4
"lab", 		--byte5
"lab", 		--byte6
"marble",	--byte7
"marble",	--byte8
"lib",		--byte9
"wall",		--byte10
"chapel",	--byte11
"lib",		--byte12
"unused",	--byte13
"chapel",	--byte14
"keep",		--byte15
"keep",		--byte16
"clock",	--byte17
"keep",		--byte18
"cave",		--byte19
"clock",	--byte20
"cave",		--byte21
"cave",		--byte22
"cave",		--byte23
"cave",		--byte24
"olrox",	--byte25
"olrox",	--byte26
"mine",		--byte27
"colos",	--byte28
"cata",		--byte29
"mine",		--byte30
"cata",		--byte31
"cata",		--byte32
"garden",	--byte33
"unused",	--byte34
"unknow",	--byte35!!!!! at least 7 bit are set there
"prison",	--byte36
}


pickupB_byte = {
"unknow", 	--byte38
"lab", 		--byte39
"lab", 		--byte40
"marble", 	--byte41
"unused", 	--byte42
"unused", 	--byte43
"marble",	--byte44
"unused",	--byte45
"wall",		--byte46
"lib",		--byte47
"unused",	--byte48
"unused",	--byte49
"lib",		--byte50
"chapel",	--byte51
"chapel",	--byte52
"keep",		--byte53
"chapel",	--byte54
"keep",		--byte55
"keep",		--byte56
"clock",	--byte57
"keep",		--byte58
"unknow",	--byte59
"clock",	--byte60
"unknow",	--byte61
"cave",		--byte62
"olrox",	--byte63
"unknow",	--byte64
"colos",	--byte65
"olrox",	--byte66
"unused",	--byte67
"unused",	--byte68
"unused",	--byte69
"unknow",	--byte70
"unknow",	--byte71
"unused",	--byte72
"unknow",	--byte73
"unknow",	--byte74
"unused",	--byte75
"unused",	--byte76
"unknow",	--byte77
"garden",	--byte78
}

music_ID = {
[1280] = "Dance of Gold",
[2560] = "Marble Gallery",
[3328] = "Tower of Mist",
[1792] = "Wood Carving Partita",
[512] = "Requiem for the Gods",
[2304] = "Heavenly Doorway",
[768] = "Dance of Pales",
[3584] = "Wandering Ghosts",
[2048] = "Crystal Teardrop",
[10240] = "Chaconne c.moll",
[11776] = "Chaconne c.moll (Music Hall)", --theres 2 identic track... this id come from music playe
[9728] = "Vampire Killer (Remix 1)",
[1024] = "Abandoned Pit",
[1536] = "Rainbow Cemetery",
[3072] = "The Tragic Prince",
[6144] = "Finale Toccata",
[4352] = "Lost Painting",
[11520] = "Vampire Killer (Remix 2)",
[10752] = "Begining Remix 1",
[4864] = "Curse Zone",
[4608] = "Door of Holy Spirits",
[6656] = "Prologue",
[5632] = "Prayer",
[12032] = "Metamorphosis",
[6400] = "Dance of Illusions",
[12288] = "Moonlight Nocturne",
[2816] = "Dracula's Castle",
[8448] = "Nocturne",
[4096] = "Festival of Servants",
[8192] = "Land of Benediction",
[7936] = "Silence",
[6912] = "Enchanted Banquet",
[5376] = "Death Ballad",
[3840] = "The Door to the Abyss",
[5888] = "Blood Relations",
[12544] = "Metamorphosis II",
[5120] = "Black Banquet",
[12800] = "Metamorphosis III",
[9472] = "Master Librarian",
[10496] = "Begining Remix 2",
[11008] = "Bloody Tears (Remix 1)",
[11264] = "Bloody Tears (Remix 2)",
[9216] = "Guardian",
[7680] = "I am the Wind",
[7168] = "Background Tempest Noise A",
[7424] = "Background Tempest Noise B",
[0] = "Nothing (boot)",
[23808] = "Konami Main Logo",
[20224] = "Transition (logo)",
[19968] = "Transition (logo)",
[22784] = "Transition (logo)",
[21248] = "Konami Nagoya Logo",
[3585] = "Main Menu (clean boot)",
[3841] = "Transition (boot)",
[3329] = "Transition (boot)",
[48128] = "Ending??? plz confirm and edit me"
}

--13312,18688,13824,25856,25600,52736,52224,22528,52480 unknow before prologue


--[[

music_area_alucard = {
6144,
4352,
11520,
10752,
4864,
4608,
5120
}

--pickup data

format hgfe dcba, with

im actually using biz ramwatch order, so the format is wrong?
00000001 for byte1

byte 05CAF2 clock tower break elements control
a = ????
b = ????
c = ????
d = ????
e = nearest karasuman (left)
f = middle
g = farthest karasuman (right)
h = big room






byte1:gateC
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = life max up 3,38
byte2:gateC
a = heart max up, 17,38
b = life max up, 14,41
c = holy armor, 5,38
d = shield potion, 19,36
e = ????
f = life apple, 10,41
g = life max up, 20,37
h = heart max up, 19,39
byte3:gate
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = jewel sword, 10,41
h = life max up, 3,38
byte4:gate
a = heart max up, 17,38
b = life max up, 14,41
c = holy armor, 5,38
d = shield potion, 19,36
e = ????
f = life apple, 10,41 
g = life max up, 20,37
h = heart max up, 19,39
byte5:lab
a = ????
b = ????
c = ????
d = ????
e = ????
f = potion 19, 27
g = basilard 16,34
h = leather shield, 13,35
byte6:lab
a = resist thunder, 11,32
b = sunglasses 16,31
c = ????
d = ???
e = life max up, 12,36
f = ?cloth cape, 10,29
g = heart max up, 11,34
h = hide armor, 14,36
byte7:marble
a = ????
b = ????
c = strength potion 26,28
d = magic hammer 26,30
e = str potion 44,26
f = lib card 44,26
g = heart max up 33,27
h = life max up 33,27
byte8:marble
a = alucart sword 34,25
b = alucart armor 34,25
c = potion 30,23
d = magic hammer 30,23
e = life apple 30,23
f = heart max up 33,25
g = alucart shield 33,25
h = life max up 31,25
byte9:lib
a = frankfurt 46,21
b = onyx 46,21
c = yellow 2h, 46,21
d = bronze armor 49,21
e = ????
f = flail? 50,18
g = stone mask 49,18
h = ????
byte10:wall
a = ????
b = jewel green 61,25
c = life max up 61,23
d = broadsword 59,23
e = garnet 61,24
f = heart max up 60,15
g = mirror cuirass 59,27
h = jewel knuckles 59,27
byte11:chapel
a = tnt 6,24
b = shuriken 5,25
c = magic missile 4,25 --its at the limit of y 26 so fuck that, I want single data if possible
d = mystic pendant 4,26
e = blue jewel 2,27
f = silver ring 8,15
g = mace 9,21
h = ank of life 6,24
byte12:lib
a = ????
b = ????
c = ????
d = ????
e = ????
f = circlet 50,18
g = antivenon 52,18
h = potion 52,18
byte13:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte14:chapel
a = potion 27,11
b = talwar 27,10
c = green jewel 19,11
d = life max up 14,13
e = strength potion 15,13
f = iron plate 14,12
g = google 10,21
h = boomrang 7,23
byte15:keep
a = heart max up 39,6
b = life max up 38,7
c = life max up 38,6
d = falchion 39,8
e = platinum armor 35,6
f = resist holy 36,6
g = resist dark 35,6
h = resist stone 35,6
byte16:keep
a = frankfurt 34,6
b = turkey 33,6
c = poat roast 33,6
d = sirloin 33,6
e = tyrfing 39,11
f = fire mail 31,9
g = turkey 31,11
h = Turquoise 31,11
byte17:clock
a = bekatowa 55,13
b = silver mail 42,11
c = iron helmet 49,14
d = gold plate 49,14
e = star flail 49,14
f = ????
g = pentagram 55,14
h = magic missile 56,14
byte18:keep
a = ????
b = ????
c = ????
d = ????
e = ????
f = heart max up 35,8
g = ????
h = heart max up 38,7
byte19:cave
a = herald shield 22,37
b = life max up 25,42
c = life max up 30,38
d = uncurse 30,38
e = ????
f = crystal cloak 40,38
g = life max up 37,32
h = life max up 36,27 + 9,43 --bugged pickup
byte20:clock
a = ????
b = ????
c = ????
d = rainbow cloak 51,9
e = heart max up 52,9
f = life max up 50,9
g = ice armor 55,13
h = shaman shield 55,13
byte21:cave
a = knuckle 40,41
b = Onyx 45,41
c = pot roast 45,38
d = resist ice 43,39
e = scimitar 45,39
f = moonstone 44,33
g = ticket 44,33 down
h = ticket 44,32 left
byte22:cave
a = ticket 44,32 right
b = ticket 44,32 up
c = claymore 43,29
d = shiitake 38,36
e = bandanna 35,27
f = gold ring 45,33
g = green jewel 39,26
h = ????
byte23:cave
a = ????
b = ????
c = ????
d = nunchaku 38,38
e = shiitake 17,41
f = ????
g = toadstool 23,42
h = shiitake 23,40
byte24:cave
a = secret boot 24,39
b = pentagram 25,37
c = heart max up 29,37
d = life max up 29,37
e = shiitake 37,37
f = toadstool 38,37
g = elixir 52,42
h = life max up 42,42
byte25:olrox
a = ????
b = ????
c = ????
d = ????
e = iron ball 22,16
f = estoc 30,15
g = blue pill 35,17
h = resist fire 35,19
byte26:olrox
a = mana prism 35,20
b = frankfurt 32,22
c = jewel black 32,22
d = whatever sword 32,22
e = ????
f = ????
g = heart max up 21,19
h = ????
byte27:mine
a = shiitake 32,46
b = shiitake 32,47
c = combat knife 31,48
d = ring of ares 37,41
e = turkey 37,41
f = ????
g = karma coin 31,48
h = power of sire 36,41
byte28:colos
a = ????
b = barley tea 19,24
c = library card 18,22
d = knight shield 14,22
e = blood cape 20,24
f = ????
g = shield rod 13,24
h = max heart up 26,24
byte29:cata
a = ballroom mask 26,50
b = heart max up 26,50
c = ????
d = library card 41,50
e = morgemil 17,50
f = walk armor 23,50
g = icebrand 24,50
h = circlet 28,50
byte30:mine
a = ????
b = ????
c = ????
d = peanut 36,41
e = peanut 36,41
f = peanut 36,41
g = peanut 36,41
h = tea 36,41
byte31:cata
a = ????
b = ????
c = lyric card 20,51
d = ????
e = ????
f = ????
g = monster vial 3 33,51
h = spike breaker 41,51
byte32:cata
a = pork bun 48,51
b = karma coin 48,50
c = karma coin 48,50
d = Cross Shuriken 48,50
e = Cross Shuriken 48,50
f = heart max up 32,51
g = life max up 32,51
h = blood pendant 28,50
byte33:garden
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = alucard autograph 6,44
byte34:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte35:gate IC
a = fire boomrang 5,38
b = beryl circlet 10,41
c = opal 10,41
d = zircon 10,41
e = heart max up 19,36
f = high potion 19,40
g = uncurse 2,38
h = magic hammer 3,38
byte36:prison
a = ????
b = ????
c = ????
d = ????
e = ????
f = smelly rice 35,36
g = astral dagger 33,35
h = karma coin 35,35

---------------------------------------
---------------------------------------
---------------------------------------
byte37:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
---------------------------------------
---------------------------------------
---------------------------------------
byte38:gate
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = talisman 20,37
h = life max up 19,39
byte39:lab
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = resist dark 14,36
h = arcana ring 13,27
byte40:lab
a = Turquoise 19,26 globe
b = potion 15,33
c = Katana 12,36
d = many prism 13,35
e = goddess shield 16,31
f = life max up 10,29
g = max heart up 11,34
h = ????
byte41:marble
a = resist green 33,25
b = resist yellow 34,25
c = resist dark 34,25
d = ????
e = life max up 30,23
f = ????
g = ????
h = ????
byte42:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte43:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte44:marble
a = ????
b = ????
c = ????
d = ????
e = heart refresh 33,27
f = iron ball 44,26
g = lib card 46,24
h = resist orange 33,25
byte45:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte46:wall
a = gem 60,15
b = big potion 61,23
c = green pill 59,23
d = blue pill 61,24
e = life max up 61,25
f = magic hammer 59,27
g = shotel 59,27
h = heart max up 61,28
byte47:lib
a = sword whatever 50,18
b = neutron bomb 49,18
c = resist stone 52,18
d = resist purple 52,18
e = resist orange 52,18
f = library card 49,20
g = gem orange 49,20
h = gem red 49,20
byte48:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte49:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte50:lib
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = staurolite 48,21
byte51:chapel
a = magic missile 27,11
b = bwaka knife 27,10
c = talwar 19,11
d = life max up 14,13
e = smart potion 15,13
f = mana prism 14,12
g = javelin 7,22
h = boomrang 6,23
byte52: chapel
a = dynamite 5,24
b = shuriken 4,25
c = heart max up 4,26
d = green gem 2,27
e = diamong 6,24
f = fire boomrang 9,21
g = ????
h = ????
byte53:keep
a = life max up 34,6
b = heart max up 33,6
c = life max up 33,6
d = bastard/broadsword? 33,6
e = ????
f = green gem 34,8
g = iron ball 31,9
h = sword of dawn 31,11
byte54:chapel
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = heart max up 3,28
h = twilight cloak 9,15
byte55:keep
a = lightning mail 39,11
b = gem orange 31,11
c = big potion 39,6
d = resist stone 39,7
e = resist green 38,7
f = resist purple 39,6
g = resist orange 38,6
h = ????
byte56:keep
a = ????
b = ????
c = ????
d = ????
e = royal cape 35,6
f = heart max up 35,6
g = life max up 35,6
h = heart max up 34,6
byte57:clock
a = life apple 49,14
b = diamond 49,14
c = dragon helm 59,11
d = ????
e = ????
f = ????
g = karma coin 55,14
h = magic missile 56,14
byte58:keep
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = library card 39,8
byte59:cave
a = heart max up 38,38
b = life max up 30,38
c = bat pentagram 25,37
d = garnet 22,37
e = shiitake 23,40
f = toadstool 23,41
g = shiitake 17,41
h = alucard shield 8,42
byte60:clock
a = ????
b = ????
c = ????
d = ????
e = moonrod 42,11
f = heart max up 50,9
g = life max up 52,9
h = sunstone 49,14
byte61:cave
a = dark blade 40,38
b = pot roast 45,38
c = zircoon 43,39
d = meal ticket 44,33
e = meal ticket 44,33
f = meal ticket 44,32
g = meal ticket 44,32
h = meal ticket 44,32
byte62:cave
a = heart max up 43,29
b = green gem 39,26
c = diamond 35,27
d = life max up 36,27
e = opal 37,32
f = shiitake 38,37
g = shiitake 37,37
h = potion 30,38
byte63:olrox
a = alucard mail 33,18
b = blue gem 30,15
c = mana prism 35,17
d = blue pill 35,19
e = green pill 35,19
f = big potion 32,22
g = hunter sword 32,22
h = gem orange 32,22
byte64:cave
a = ????
b = ????
c = ????
d = ????
e = ????
f = osafune katana 25,42
g = elixir 45,41
h = mana prism 42,42
byte65:colos
a = heart max up 23,23
b = life max up, 23,23
c = heart max up 23,23
d = blue gem 26,24
e = gram 20,24
f = buffalo star 19,24
g = green gem 13,24
h = fury mail 19,20
byte66:olrox
a = ????
b = ????
c = ????
d = ????
e = heart max up 16,16
f = shuriken 22,16
g = heart refresh 20,18
h = life max up 21,19
byte67:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte68:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte69:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte70:mine
a = shiitake 32,46
b = shiitake 32,47
c = ????
d = power of sire 31,48
e = barley tea 37,41
f = alucard sword 29,44
g = golden apple 36,41
h = power of sire 36,41
byte71:cata
a = elixir 41,51
b = red bean bun 48,51
c = karma coin 48,50
d = karma coin 48,50
e = resist fire 48,50
f = resist thunder 48,50
g = buffalo star 28,50
h = magic missile 28,50
byte72:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte73:cata
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ruby circlet 17,50
h = life max up 17,51
byte74:cata
a = heart max up 17,51
b = diamond 23,50
c = necklace of J 24,50
d = attack potion 26,50
e = shield potion 26,50
f = heart max up 32,51
g = life max up 32,51
h = library card 41,51
byte75:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte76:UNUSUED
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte77:prison
a = ????
b = ????
c = ????
d = ????
e = ????
f = delicious meal 35,35
g = opal 33,35
h = meal ticket 35,34
byte78:garden
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = alucard spear




058C84
music tracks:

Prologue

Entrance 
Dracula's Castle (Alucard, Richter PSX) 
Vampire Killer (Remix 2) (Maria game, Saturn version only) 
Bloody Tears Remix ? (Richter game, Saturn version only)


gateA/B, Dracula's Castle Vampire Killer (Remix 2) Bloody Tears Remix ?


--id {name, castleA, castleB, both castle, area table{ ["alucard"] = {area_ID}, ["richter"] = {area_ID}, ["maria"] = {area_ID} } }








[7168] = { name = "Background Tempest Noise A", castleB = false } --entrance
[7424] = { name = "Background Tempest Noise B", castleB = false } --entrance
[2816] = { name = "Dracula's Castle", castleB = false }
[1280] = { name = "Dance of Gold", castleB = false }
[2560] = { name = "Marble Gallery", castleB = false }
[3328] = { name = "Tower of Mist", castleB = false }
[1792] = { name = "Wood Carving Partita", castleB = false }
[9472] = { name = "Master Librarian", castleB = false }
[768] = { name = "Dance of Pales", castleB = false }
[512] = { name = "Requiem for the Gods", castleB = false }
[3584] = { name = "Wandering Ghosts", castleB = false }
[2048] = { name = "Crystal Teardrop", castleB = false }
[10240] = { name = "Chaconne c.moll", castleB = false }
[1536] = { name = "Rainbow Cemetery", castleB = false }
[3072] = { name = "The Tragic Prince", castleB = false }
[9728] = { name = "Vampire Killer (Remix 1)", castleB = true }
[5888] = { name = "Blood Relations", castleB = false } --richter boss
[9216] = { name = "Guardian", castleB = false } --maria boss




[6144] = { name = "Finale Toccata", castleB = true } --gate,lab,marble,wall,olrox,clock
[4352] = { name = "Lost Painting", castleB = true } --lib,chapel,cave
[11520] = { name = "Vampire Killer (Remix 2)", castleB = true } --prison
[10752] = { name = "Begining Remix 1", castleB = false } --garden
[4864] = { name = "Curse Zone", castleB = true } --cata
[4608] = { name = "Door of Holy Spirits", castleB = true } --colos
[5120] = { name = "Black Banquet", castleB = true } --dracula end boss





[3840] = { name = "The Door to the Abyss", castleB = false } --central
[9216] = { name = "Guardian", castleB = false } --maria boss

[3840] = { name = "The Door to the Abyss", castleB = true } --central
[5376] = { name = "Death Ballad", castleB = true } --shaft

[1024] = { name = "Abandoned Pit", castleB = false } --mine
[4096] = { name = "Festival of Servants", castleB = false } --cerberus

[1024] = { name = "Abandoned Pit", castleB = true } --mine
[5376] = { name = "Death Ballad", castleB = true } --death


[2304] = { name = "Heavenly Doorway", castleB = false } --keep
[5888] = { name = "Blood Relations", castleB = false } --richter boss

[2304] = { name = "Heavenly Doorway", castleB = true } --keep

--shaft, galamoth, death, belzebub = death balad
alucard lvl40, franky, bat, mummy, trio 4096 festival of servants 23,24
medusa 6912
alucard lvl10,karasuman 4096
5376 hyppo, olrox

franky 4096 alucard lvl10 4096
bat 4096 karasuman 4096
mummy 4096 olrox 5376 
medusa 6912 hypo 5376
trio 4096 minotaur 4096
shaft 5376 maria 9216
galamoth 5376 granfalon 5376
death 5376 cerberus 4096
belzebub 5376 gaibon 4096
lvl40 4096 scylla head 4096

nightmare 6912
scylla boss 4096
}



[7936] = { name = "Silence", castleB = true }
[10496] = { name = "Begining Remix 2", castleB = true }
[11008] = { name = "Bloody Tears (Remix 1)", castleB = true }
[11264] = { name = "Bloody Tears (Remix 2)", castleB = true }
[12288] = { name = "Moonlight Nocturne", castleB = true }
[8448] = { name = "Nocturne", castleB = true }
[8192] = { name = "Land of Benediction", castleB = true }
[6912] = { name = "Enchanted Banquet", castleB = true }
[5376] = { name = "Death Ballad", castleB = true }

--boss
[6400] = { name = "Dance of Illusions", castleB = true }
[4096] = { name = "Festival of Servants", castleB = true }

[5632] = { name = "Prayer", castleB = true }

[12032] = { name = "Metamorphosis", castleB = true }
[12544] = { name = "Metamorphosis II", castleB = true }
[12800] = { name = "Metamorphosis III", castleB = true }

[1024] = { name = "Abandoned Pit", castleB = true }
[3840] = { name = "The Door to the Abyss", castleB = true }
[2304] = { name = "Heavenly Doorway", castleB = true }
[6656] = { name = "Prologue", castleB = true }

[11776] = { name = "Chaconne c.moll", castleB = true } --music hall value
[7680] = { name = "I am the Wind", castleB = true }
[0] = { name = "Nothing (boot)", castleB = true }
[23808] = { name = "Konami Main Logo", castleB = true }
[20224] = { name = "Transition (logo)", castleB = true }
[19968] = { name = "Transition (logo)", castleB = true }
[22784] = { name = "Transition (logo)", castleB = true }
[21248] = { name = "Konami Nagoya Logo", castleB = true }
[3585] = { name = "Main Menu (clean boot)", castleB = true }
[3841] = { name = "Transition (boot)", castleB = true }
[3329] = { name = "Transition (boot)" castleB = true }



gate alucard, 2816
lab, 1280
marble, 2560
wall, 3328
lib, 1792
chapel, 512
keep, 2304
olrox, 768
colos, 3584
cave, 2048
prison, 10240
garden, 9728
mine, 1024
cata, 1536
clock, 3072
---

gate, 6144
lab, 6144
marble, 6144
wall, 6144
lib, 4352
chapel, 4352
olrox, 6144
colos, 4608
cave,  4352
prison, 11520
garden, 10752
cata, 4864
clock, 6144

mine, 1024

keep, 2304




[6144] = {"Finale Toccata", false, true, false, {["alucard"] = {"gate,lab,marble,wall,olrox,clock"}, ["richter"] = {"gate,lab,marble,wall,olrox,clock"}, ["maria"] = {"gate,lab,marble,wall,olrox,clock"} },
[7680] = {"I am the Wind", false, false, false, {["alucard"] = {"fmv"}, ["richter"] = {"fmv"}, ["maria"] = {"fmv"} },
[11520] = {"Vampire Killer (Remix 2)", false, false, false, {["alucard"] = {"prison"}, ["richter"] = {"gate"}, ["maria"] = nil },
}


["id"]=11520, ["name"]="Vampire Killer (Remix 2)", ["area"]="prison", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=11520, ["name"]="Vampire Killer (Remix 2)", ["area"]="gate", ["castleA"]="true", ["castleB"]="false", ["player"]="maria",


music_ID = {
["id"]=1280, ["name"]="Dance of Gold", ["area"]="lab", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=2560, ["name"]="Marble Gallery", ["area"]="marble", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=3328, ["name"]="Tower of Mist", ["area"]="wall", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=1792, ["name"]="Wood Carving Partita", ["area"]="lib", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=512, ["name"]="Requiem for the Gods", ["area"]="chapel", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=2304, ["name"]="Heavenly Doorway", ["area"]="keep", ["castleA"]="true", ["castleB"]="true", ["player"]="alucard",
["id"]=768, ["name"]="Dance of Pales", ["area"]="olrox", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=3584, ["name"]="Wandering Ghosts", ["area"]="colos", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=2048, ["name"]="Crystal Teardrop", ["area"]="cave", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=10240, ["name"]="Chaconne c.moll", ["area"]="prison", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=11776, ["name"]="Chaconne c.moll", ["area"]="menu", ["castleA"]="false", ["castleB"]="false", ["player"]=nil, --theres 2 identic track... this id come from music player
["id"]=9728, ["name"]="Vampire Killer (Remix 1)", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=1024, ["name"]="Abandoned Pit", ["area"]="mine", ["castleA"]="true", ["castleB"]="true", ["player"]="alucard",
["id"]=1536, ["name"]="Rainbow Cemetery", ["area"]="cata", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=3072, ["name"]="The Tragic Prince", ["area"]="clock", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=6144, ["name"]="Finale Toccata", ["area"]="gate,lab,marble,wall,olrox,clock", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=4352, ["name"]="Lost Painting", ["area"]="lib,chapel,cave", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=11520, ["name"]="Vampire Killer (Remix 2)", ["area"]="prison", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=11520, ["name"]="Vampire Killer (Remix 2)", ["area"]="gate", ["castleA"]="true", ["castleB"]="false", ["player"]="maria",
["id"]=10752, ["name"]="Begining Remix 1", ["area"]="garden", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=4864, ["name"]="Curse Zone", ["area"]="cata", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=4608, ["name"]="Door of Holy Spirits", ["area"]="colos", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard",
["id"]=6656, ["name"]="Prologue", ["area"]="prologue", ["castleA"]="false", ["castleB"]="false", ["player"]="richter",
["id"]=5632, ["name"]="Prayer", ["area"]="file", ["castleA"]="false", ["castleB"]="false", ["player"]=nil,
["id"]=12032, ["name"]="Metamorphosis", ["area"]="fmv", ["castleA"]="false", ["castleB"]="false", ["player"]=nil,
["id"]=6400, ["name"]="Dance of Illusions", ["area"]="prologue", ["castleA"]="false", ["castleB"]="false", ["player"]="richter",
["id"]=12288, ["name"]="Moonlight Nocturne", ["area"]="fmv", ["castleA"]="false", ["castleB"]="false", ["player"]=nil,
["id"]=2816, ["name"]="Dracula's Castle", ["area"]="gate", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard",
["id"]=8448, ["name"]="Nocturne", ["area"]="any", ["castleA"]="true", ["castleB"]="true", ["player"]="alucard",
["id"]=4096, ["name"]="Festival of Servants", ["area"]="boss", ["castleA"]="true", ["castleB"]="true", ["player"]="any",
["id"]=8192, ["name"]="Land of Benediction", ["area"]="any", ["castleA"]="true", ["castleB"]="true", ["player"]="any", --"game over"
["id"]=7936, ["name"]="Silence", ["area"]="unknow", ["castleA"]="true", ["castleB"]="true", ["player"]="any", --need to find where its used....
["id"]=6912, ["name"]="Enchanted Banquet", ["area"]="boss", ["castleA"]="true", ["castleB"]="true", ["player"]="any", --need to find where its used....
["id"]=5376, ["name"]="Death Ballad", ["area"]="boss", ["castleA"]="true", ["castleB"]="true", ["player"]="any", --need to find where its used....
["id"]=3840, ["name"]="The Door to the Abyss", ["area"]="central", ["castleA"]="true", ["castleB"]="true", ["player"]="any", 
["id"]=5888, ["name"]="Blood Relations", ["area"]="boss", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard", --seems to be richter boss
["id"]=12544, ["name"]="Metamorphosis II", ["area"]="fmv", ["castleA"]="false", ["castleB"]="false", ["player"]="any", --fmv in between castle?
["id"]=5120, ["name"]="Black Banquet", ["area"]="dracula", ["castleA"]="false", ["castleB"]="true", ["player"]="alucard", --end boss
["id"]=12800, ["name"]="Metamorphosis III", ["area"]="fmv", ["castleA"]="false", ["castleB"]="false", ["player"]="alucard", --fmv blow up the castle
["id"]=9472, ["name"]="Master Librarian", ["area"]="lib", ["castleA"]="true", ["castleB"]="false", ["player"]="any?", --librarian
["id"]=10496, ["name"]="Begining Remix 2", ["area"]="unknow", ["castleA"]="false", ["castleB"]="false", ["player"]=nil, --im not sure if this is used
["id"]=11008, ["name"]="Bloody Tears (Remix 1)", ["area"]="gate", ["castleA"]="true", ["castleB"]="false", ["player"]="richter", --need to check more
["id"]=11264, ["name"]="Bloody Tears (Remix 2)", ["area"]="boss", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard", --need to check more
["id"]=9216, ["name"]="Guardian", ["area"]="boss", ["castleA"]="true", ["castleB"]="false", ["player"]="alucard", --is this maria or ending or unused ?
["id"]=7680, ["name"]="I am the Wind", ["area"]="fmv", ["castleA"]="false", ["castleB"]="false", ["player"]=nil

11264
10496
11008
9728
7680
6912

12288 Moonlight Nocturne
11776
}

gateA alucard, 7168 --noise no music
gateA alucard, 7424 --noise no music

gateA alucard, 2816 --like gateB
gateB alucard, 2816
lab, Dance of Gold, 1280
marble, Marble Gallery, 2560
wall, Tower of Mist, 3328
lib, Wood Carving Partita, 1792
chapel, Requiem for the Gods, 512
keep, Heavenly Doorway, 2304
olrox, Dance of Pales, 768
colos, Wandering Ghosts, 3584
cave, Crystal Teardrop, 2048
prison, Chaconne c.moll, 10240
garden, Vampire Killer (Remix 1), 9728
mine, Abandoned Pit, 1024
cata, Rainbow Cemetery, 1536
clock, The Tragic Prince, 3072
---
gate, Finale Toccata, 6144
lab, Finale Toccata, 6144
marble, Finale Toccata, 6144
wall, Finale Toccata, 6144
lib, Lost Painting, 4352
chapel, Lost Painting, 4352
keep, Heavenly Doorway, 2304
olrox, Finale Toccata, 6144
colos, Door of Holy Spirits, 4608
cave,  Lost Painting, 4352
prison, Begining Remix 2, 11520
garden, Begining Remix 1, 10752
mine, Abandoned Pit, 1024
cata, Curse Zone, 4864
clock, Finale Toccata, 6144

teleporters : the keep the music track from where you coming, until you load the next level

central: 3840 (both castles)

5632 main menu

the main menu will retain the last music that was playing

prologue : 6656, then 6400
after prologue, fmv : 8704
after fmv, outside castle : 7168 then 7424 in first corridor, then 2816 (entrance music) after half corridor

maria entrance : 7168,7424, 11520
richter entrance : 7168,7424, 11008

7680 I am the wind

gate alucard, 2816
lab, 1280
marble, 2560
wall, 3328
lib, 1792
chapel, 512
keep, 2304
olrox, 768
colos, 3584
cave, 2048
prison, 10240
garden, 9728
mine, 1024
cata, 1536
clock, 3072
---

gate, 6144
lab, 6144
marble, 6144
wall, 6144
lib, 4352
chapel, 4352
olrox, 6144
colos, 4608
cave,  4352
prison, 11520
garden, 10752
cata, 4864
clock, 6144

mine, 1024

keep, 2304









zeek GFAQ data for each area

---------------------------------------------------------------------------
Facts About:    Final Stage: Bloodlines
Music Track:    Prologue
Enemies Found:  None
Bosses Found:   Dracula
Items Found:    Badelaire, Dark Shield, Firebrand, Heart Refresh, Moon Rod,
                Shield Rod, Sunglasses, Power of Sire
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Entrance
Music Track:    Dracula's Castle (Alucard, Richter PSX)
                Vampire Killer (Remix 2) (Maria game, Saturn version only)
                Bloody Tears Remix ? (Richter game, Saturn version only)
Enemies Found:  Bat, Blade, Bloody Zombie, Bone Scimitar, Gurkha, Merman,
                Owl, Owl Knight, Warg, Zombie
Bosses Found:   Gaibon and Slogra (Optional)
Items Found:    Cube of Zoe, Heart Max Up x2, Holy Mail, Jewel Sword, Life
                Apple, Life Max Up x3, Pot Roast, Power of Wolf, Shield
                Potion, Turkey
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Alchemy Laboratory
Music Track:    Dance of Gold
Enemies Found:  Axe Knight, Blood Skeleton, Bloody Zombie, Bone Scimitar,
                Skeleton, Spittle Bone
Bosses Found:   Gaibon and Slogra (Not optional, this time)
Items Found:    Basilard, Bat Card, Cloth Cape, Heart Max Up, Hide Cuirass,
                Leather Shield, Life Max Up, Potion, Resist Thunder, Skill
                of Wolf, Sunglasses
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Marble Gallery
Music Track:    Marble Gallery
Enemies Found:  Axe Knight, Ctulhu, Diplocephalus, Flea Man, Marionette,
                Ouija Table, Plate Lord, Slinger, Skelerang, Skeleton,
                Stone Rose
Bosses Found:   None
Items Found:    Alucart Mail, Alucart Shield, Alucart Sword, Attack Potion,
                Hammer, Heart Max Up x2, Holy Glasses, Library Card, Life
                Apple, Life Max Up x2, Potion, Spirit Orb
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts about:    Outer Wall
Music Track:    Tower of Mist
Enemies Found:  Armor Lord, Axe Knight, Bone Archer, Bone Musket, Medusa
                Head, Skeleton, Skeleton Ape, Spear Guard, Sword Lord
Bosses Found:   Doppleganger10
Items Found:    Garnet, Heart Max Up, Jewel Knuckles, Life Max Up, Mirror
                Cuirass, Pot Roast, Soul of Wolf, Zircon
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Long Library
Music Track:    Wood Carving Partita
Enemies Found:  Corpseweed, Dhuron, Ectoplasm, Flea Armor, Flea Man, Magic
                Tome, Mudman, Spellbook, Thornweed
Bosses Found:   Lesser Demon
Items Found:    Antivenom, Bronze Cuirass, Faerie Card, Faerie Scroll,
                Frankfurter, Holy Rod, Jewel of Open, Onyx, Potion, Soul of
                Bat, Stone Mask, Takemitsu, Topaz Circlet, Uncurse
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Royal Chapel
Music Track:    Requiem for the Gods
Enemies Found:  Bat, Black Crow, Blue Raven, Bone Halberd, Bone Pillar,
                Corner Guard, Hunting Girl, Skelerang, Spectral Sword,
                Winged Guard
Bosses Found:   Hippogryph
Items Found:    Ankh of Life, Aquamarine, Boomerang, Cutlass, Goggles,
                Grape Juice, Life Max Up, Magic Missile, Morningstar,
                Mystic Pendant, Potion, Shuriken, Silver Plate, Silver
                Ring, Str. Potion, TNT, Zircon
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Castle Keep
Music Track:    Heavenly Doorway
Enemies Found:  Axe Knight, Flea Rider
Bosses Found:   Richter Belmont, Shaft
Items Found:    Falchion, Fire Mail, Frankfurter, Ghost Card, Heart Max Up
                x2, Leap Stone, Life Max Up x2, Pot Roast, Power of Mist,
                Resist Dark, Resist Holy, Resist Stone, Sirloin, Turkey,
                Turquoise, Tyrfing
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Olrox's Quarters
Music Track:    Dance of Pales
Enemies Found:  Blade, Hammer, Skelerang, Spectral Sword
Bosses Found:   Olrox (Who were you expecting? Akmodan II?)
Items Found:    Broadsword, Cheese, Echo of Bat, Estoc, Garnet (NA/EU
                only), Heart Max Up, Iron Ball, Luck Potion, Manna Prism,
                Resist Fire, Sprite Card (JP only), Sword Card
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Colosseum
Music Track:    Wandering Ghosts
Enemies Found:  Armor Lord, Blade Soldier, Blade Master, Bone Musket, Bone
                Scimitar, Hunting Girl, Owl, Owl Knight, Paranthropus,
                Plate Lord, Valhalla Knight
Bosses Found:   Minotaurus and Werewolf
Items Found:    Blood Cloak, Form of Mist, Green Tea, Heart Max Up, Holy
                Sword (NA/EU only), Knight Shield, Library Card, Nosedevil
                Card (JP only), Shield Rod
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Underground Caverns
Music Track:    Crystal Teardrop
Enemies Found:  Bone Archer, Fishhead, Frog, Frozen Shade, Killer Fish,
                Scylla Wyrm, Skeleton Ape, Spear Guard, Toad
Bosses Found:   Scylla, Succubus
Items Found:    $2000, Antivenom, Bandanna, Claymore, Crystal Cloak,
                Elixir, Gold Ring, Heart Max Up x2, Herald Shield, Holy
                Symbol, Knuckle Duster, Life Max Up x5, Meal Ticket x4,
                Merman Statue, Moonstone, Nunchaku, Onyx, Pentagram, Pot
                Roast, Resist Ice, Scimitar, Secret Boots, Shiitake x4,
                Toadstool x2, Zircon
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Abandoned Mine
Music Track:    Abandoned Pit
Enemies Found:  Corpseweed, Gremlin, Salem Witch, Thornweed, Venus Weed
Bosses Found:   Cerberos
Items Found:    Combat Knife, Demon Card, Karma Coin, Peanuts x4, Power of
                Sire, Ring of Ares, Shiitake x2, Turkey
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Catacombs
Music Track:    Rainbow Cemetery
Enemies Found:  Bloody Skeleton, Bone Ark, Discus Lord, Grave Keeper,
                Hellfire Beast, Large Slime, Lossoth, Slime, Thornweed,
                Wereskeleton
Bosses Found:   Granfaloon
Items Found:    Ballroom Mask, Bloodstone, Cat-eye Circlet, Cross Shuriken
                x2, Heart Max Up x2, Icebrand, Karma Coin x2, Library Card,
                Life Max Up, Lyric Card (Saturn only), Monster Vial 3 x3,
                Mormegil, Pork bun, Spike Breaker, Walk Armor
----------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Clock Tower
Music Track:    The Tragic Prince
Enemies Found:  Cloaked Knight, Flail Guard, Flea Armor, Harpy, Medusa
                Head, Phantom Skull, Skull Lord, Sword Lord, Vandal Sword
Bosses Found:   Karasuman
Items Found:    Bekatowa, Bwaka Knife, Gold Plate, Fire of Bat, Healing
                Mail, Heart Max Up, Ice Mail, Life Max Up, Magic Missile,
                Pentagram, Pot Roast, Rainbow Colored Robe (Saturn only),
                Shaman Shield, Shuriken, Star Flail, Steel Helm, TNT
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Reverce Keep
Music Track:    Heavenly Doorway
Enemies Found:  Skull Lord, Tombstone, Yorick
Bosses Found:   None
Items Found:    Bastard Sword, Heart Max Up x3, Garnet, High Potion, Iron
                Ball, Library Card, Life Max Up x3, Lightning Mail, Resist
                Fire, Resist Ice, Resist Stone, Resist Thunder, Royal
                Cloak, Sword of Dawn, Zircon
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Reverse Clock Tower
Music Track:    Finale Toccata
Enemies Found:  Bomb Knight, Cloaked Knight, Medusa Head (yellow only),
                Valhalla Knight
Bosses Found:   Darkwing Bat
Items Found:    Bwaka Knife, Diamond, Dragon Helm, Heart Max Up, Karma
                Coin, Magic Missile, Life Apple, Life Max Up, Luminus, Moon
                Rod, Pot Roast, Ring of Vlad, Shuriken, Smart Potion, Str.
                Potion, Sunstone, TNT
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Reverse Outer Wall
Music Track:    Finale Toccata
Enemies Found:  Jack O' Bones, Nova Skeleton, Paranthropus, Stone Skull
Bosses Found:   The Creature
Items Found:    Dim Sum Set, Garnet, Hammer, Heart Max Up, High Potion,
                Life Max Up, Luck Potion, Shield Potion, Shotel, Tooth
                of Vlad
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Forbidden Library
Music Track:    Lost Painting
Enemies Found:  Lion, Scarecrow, Schmoo, Tin Man
Bosses Found:   None
Items Found:    Badelaire, Library Card, Neutron Bomb, Opal, Resist Fire,
                Resist Ice, Resist Stone, Staurolite, Turquoise
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Black Marble Gallery
Music Track:    Finale Toccata
Enemies Found:  Blade, Corpseweed, Guardian, Jack O'Bones, Thornweed
Bosses Found:   Dracula, Shaft
Items Found:    Antivenom, Heart Max Up, Heart Refresh, Iron Ball, Library
                Card, Life Max Up, Meal Ticket, Potion, Resist Dark, Resist
                Fire, Resist Holy, Resist Thunder
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Death Wing's Lair
Music Track:    Finale Tocatta (again)
Enemies Found:  Azaghal, Ctulhu, Flying Zombie, Ghost Dancer, Karasuman,
                Malachi, Medusa Head
Bosses Found:   Akmodan II
Items Found:    Alucard Mail, Aquamarine, Heart Max Up, Heart Refresh, High
                Potion, Life Max Up, Luck Potion, Manna Prism, Opal, Rib of
                Vlad, Shield Potion, Shuriken, Sword of Hador
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Anti-Chapel
Music Track:    Lost Painting
Enemies Found:  Archer, Balloon Pod, Black Panther, Imp, Sniper of Goth
Bosses Found:   Medusa
Items Found:    Boomerang, Diamond, Fire Boomerang, Heart of Vlad, Heart
                Max Up x2, Javelin, Life Max Up, Manna Prism, Shuriken,
                Talwar, TNT, Twilight Cloak, Zircon
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Reverce Caverns
Music Track:    Lost Painting
Enemies Found:  Balloon Pod, Blue Venus Weed, Cave Troll, Dark Octopus,
                Killer Fish, Imp, Jack O'Bones, Nova Skeleton, Rock Knight
Bosses Found:   Doppleganger40
Items Found:    $2000, Alucard Shield, Bat Pentagram, Dark Blade, Diamond,
                Elixir, Force of Echo, Garnet, Heart Max Up x2, Life Max Up
                x2, Manna Prism, Meal Ticket x5, Opal, Osafune Katana,
                Peanuts xInfinity, Potion, Pot Roast, Shiitake x4,
                Toadstool, Zircon x2
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Cave
Music Track:    Abandoned Pit
Enemies Found:  Bat, Corpseweed, Gaibon, Slogra, Thornweed
Bosses Found:   Death
Items Found:    Alucard Sword, Eye of Vlad, Green Tea, Life Apple, Power of
                Sire x2, Shiitake x2
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Floating Catacombs
Music Track:    Curse Zone
Enemies Found:  Bat, Blood Skeleton, Frozen Half, Salome, Skeleton
Bosses Found:   Galamoth
Items Found:    Attack Potion, Buffalo Star, Diamond, Elixir, Gas Cloud,
                Heart Max Up x2, Karma Coin x2, Library Card, Life Max Up
                x2, Magic Missile, Necklace of J, Red Bean Bun, Resist
                Fire, Resist Thunder, Shield Potion
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Reverse Entrance
Music Track:    Finale Toccata (the official theme song of the second
                castle, apparently)
Enemies Found:  Blue Venus Weed, Dodo Bird, Dragon Rider, Fire Warg, Jack
                O'Bones, Nova Skeleton, Orobourous, Warg Rider
Bosses Found:   None
Items Found:    Antivenom, Beryl Circlet, Fire Boomerang, Hammer, Heart
                Max Up, High Potion, Life Max Up, Opal, Pot Roast,
                Talisman, Zircon
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Necromancy Laboratory
Music Track:    Finale Toccata (did the music people go on strike during
                the development of this game?)
Enemies Found:  Bitterfly, Ctulhu, Fire Demon, Gremlin, Imp, Lesser Demon,
                Salem Witch
Bosses Found:   Beezelbub, Lord of the Flies
Items Found:    Goddess Shield, Heart Max Up, High Potion, Katana, Life Max
                Up, Manna Prism, Resist Dark, Ring of Arcana, Turquoise
---------------------------------------------------------------------------
---------------------------------------------------------------------------
Facts About:    Reverce Colosseum
Music Track:    Door of Holy Spirits
Enemies Found:  Azaghal, Minotaur, Stone Skull, Werewolf, White Dragon
Bosses Found:   Fake Grant, Fake Sypha, and Fake Trevor
Items Found:    Aquamarine, Buffalo Star, Fury Plate, Gram, Heart Max Up
                x2, Life Max Up, Zircon
---------------------------------------------------------------------------
-----------------------* Begin Saturn Version Only *-----------------------
Facts About:    Reverse Cursed Prison
Music Track:    Chaconne c.moll
Enemies Found:  Flying Zombie, Gargoyle, Nova Skeleton, Wight, Wraith
Bosses Found:   None
Items Found:    Delicious Meal, Meal Ticket, Opal
---------------------------------------------------------------------------
-----------------------* Begin Saturn Version Only *-----------------------
Facts About:    Hell Garden
Music Track:    Begining Remix 1
Enemies Found:  Bitterfly, Blue Venus Weed, Cave Troll, Copper Armor,
                Cloaked Knight, Ifreet, Skeleton Guardian
Bosses Found:   None
Items Found:    Alucard Spear
---------------------------------------------------------------------------
------------------------* Begin Saturn Version Only *---------------------
Facts About:    Cursed Prison
Music Track:    Chaconne c.moll
Enemies Found:  Bone Archer, Gargoyle, Slinger, Spear Guard, Spectre,
                Will o' Wisp
Bosses Found:   None
Items Found:    Astral Dagger, Karma Coin, Rotten Meal
---------------------------------------------------------------------------
-----------------------* Begin Saturn Version Only *-----------------------
Facts About:    Underground Garden
Music Track:    Vampire Killer (Remix 1)
Enemies Found:	Corpseweed, Gardener, Gargoyle, Hitotorusou, Jinnunja,
                Skeleton Beast, Skeleton Breeder, Slinger, Weed
Bosses Found:   Skeleton Leader
Items Found:    Sain Irishitajiki
---------------------------------------------------------------------------

]]


