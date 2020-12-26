--------------------------------
function timeattack()
	gui.drawBox(65, 220, 275, 399, 0xCF646464, nil)
	local time_attack_data_time = {}
	local time_attack_data_sort = {}
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
			if byteA == 0 and byteC == 0 and byteD > 0 then --this is a data with only the forth byte, it can be read directly, its only seconds
				if byteD > 100 and byteD < 200 then --its over 100 but never can be over 255, so we just truncate one zero from the time display
					textta = "00:01:"..(byteD-100).." "..textta
					time_attack_data_time[ln] = byteD
					time_attack_data_time[ln+28] = textta
				elseif byteD > 200 then
					textta = "00:02:"..(byteD-200).." "..textta
					time_attack_data_time[ln] = byteD
					time_attack_data_time[ln+28] = textta
				elseif byteD > 0 and byteD < 10 then
					textta = "00:00:0"..(byteD).." "..textta
					time_attack_data_time[ln] = byteD
					time_attack_data_time[ln+28] = textta
				else
					textta = "00:00:"..(byteD).." "..textta
					time_attack_data_time[ln] = byteD
					time_attack_data_time[ln+28] = textta
				end
			end
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
			if byteA > 0 and byteC == 0 and byteD == 0 then --this is a data without seconds/minutes, I dont think its possible but... anyway
				local ctime = ((byteA*256)*256) --this is the real result, but have to translate into 00:00:00, max value game will read is 999999
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
			if byteA > 0 and byteC > 0 and byteD > 0 then --this is a data with all 3 bytes (seconds)(minutes)(hours)
				local ctime = ((byteA*256)*256)+(256*byteD)+byteC --this is the real result, but have to translate into 00:00:00, max value game will read is 999999
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
			if byteA > 0 and byteC > 0 and byteD == 0 then --this is a data without seconds
				local ctime = ((byteA*256)*256)+byteC --this is the real result, but have to translate into 00:00:00, max value game will read is 999999
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
	for z = 1,28,1 do 
		table.insert(time_attack_data_sort, z, time_attack_data_time[z+28])	
	end
	table.sort(time_attack_data_sort)
	for i = 0, 108, 4 do
		if i >= 0 and i < 54 then
			local lnz = i/4+1
			gui.drawText(67, 276+i*3-50, lnz.." "..time_attack_data_sort[i/4+1], 0xCFFFFFFF, nil, 8, "Ebrima", nil, nil, nil)
		else
			local lnz = i/4+1
			gui.drawText(174, 58+(i*3), lnz.." "..time_attack_data_sort[i/4+1], 0xCFFFFFFF, nil, 8, "Ebrima", nil, nil, nil)
		end
	end
	time_attack_data_sort = nil
	time_attack_data_time = nil
	script_timeattack = false
	script_shot = true
end
--------------------------------
function relic()
	gui.drawBox(676, 170, 791, 399, 0xCF646464, nil)
	for i = 1, 31, 2 do--we want to make 4 sets of 8 relics icon, but we want to invert the order, so we do 2 for
		if relic_data[i] == 3 then --the relic is on, draw on button and the relic
			gui.drawImage('.\\NitM\\hud\\button_on.png', 696, 166+(i*7), 36, 12, true)
			gui.drawImage(".\\NitM\\relic\\"..relic_text[i+1]..".png", 680, 166+(i*7), 15, 14, true)
		elseif relic_data[i] == 1 then --the relic is off, draw off button and the relic
			gui.drawImage('.\\NitM\\hud\\button_off.png', 696, 166+(i*7), 36, 12, true)
			gui.drawImage(".\\NitM\\relic\\"..relic_text[i+1]..".png", 680, 166+(i*7), 15, 14, true)
		else --its 0 so you dont have the relic ... draw greyed relic and off button
			gui.drawImage('.\\NitM\\hud\\button_off.png', 696, 166+(i*7), 36, 12, true)
			gui.drawImage(".\\NitM\\relic\\"..relic_text[i+1].."_grey.png", 680, 166+(i*7), 15, 14, true)
		end
	end
	for i = 0, 31, 2 do
		if relic_data[i] == 3 then --the relic is on, draw on button and the relic
			gui.drawImage('.\\NitM\\hud\\button_on.png', 751, 166+(i*7)+7, 36, 12, true)
			gui.drawImage(".\\NitM\\relic\\"..relic_text[i+1]..".png", 735, 166+(i*7)+7, 15, 14, true)
		elseif relic_data[i] == 1 then --the relic is off, draw off button and the relic
			gui.drawImage('.\\NitM\\hud\\button_off.png', 751, 166+(i*7)+7, 36, 12, true)
			gui.drawImage(".\\NitM\\relic\\"..relic_text[i+1]..".png", 735, 166+(i*7)+7, 15, 14, true)
		else --its 0 so you dont have the relic ... draw greyed relic and off button
			gui.drawImage('.\\NitM\\hud\\button_off.png', 751, 166+(i*7)+7, 36, 12, true)
			gui.drawImage(".\\NitM\\relic\\"..relic_text[i+1].."_grey.png", 735, 166+(i*7)+7, 15, 14, true)
		end
	end
	script_relic = false
	script_shot = true
end
--------------------------------
function gear()
--notes: empty accID 58, empty capeID 48, empty armorID 0, empty headID 26, empty handsID 0
	gui.drawBox(676, 55, 791, 170, 0xCF646464, nil)
	for i = 0 , 2, 1 do
		gui.drawImage(".\\NitM\\hand\\"..gear_data[i*4]..".png", 688, 57+i*14, 14, 14, true)
			gui.drawText(708, 56+i*14, handID[2+(gear_data[i*4]*2)], 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	end
	for i = 1 , 5, 1 do
		gui.drawImage(".\\NitM\\gear\\"..gear_data[8+(i*4)]..".png", 688, 85+(i*14), 14, 14, true)
		gui.drawText(708, 84+(i*14), gearID[2+(gear_data[8+(i*4)]*2)], 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	end
	if game_is_inventory == false then gear_data = nil end
	script_gear = false
	script_shot = true
end
--------------------------------
function familiar()
	current_familiar = "- - - - -"
	gui.drawBox(0, 220, 65, 399, 0xCF646464, nil)
	for i = 1, 8, 1 do 
		if i ~= 7 then
			if relic_data[i+17] == 0 then --we dont have the relic, its grey and stop symbol
				if i ~= 8 then
					gui.drawText(28, 203+(24*i), "Level - -", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
					gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey_no.png", 2, 197+(24*i), 24, 27, true)
				else
					gui.drawText(28, 371, "Level - -", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
					gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey_no.png", 2, 366, 24, 27, true)				
				end
			elseif relic_data[i+17] == 1 then --its off so its grey
				if i ~= 8 then
					gui.drawText(28, 203+(24*i), "Level "..familiar_data_level[i], 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
					gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey.png", 2, 197+(24*i), 24, 27, true)				
				else
					gui.drawText(28, 371, "Level "..familiar_data_level[i], 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
					gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i].."_grey.png", 2, 366, 24, 27, true)				
				end
			elseif relic_data[i+17] == 3 then --its on so its colored
					current_familiar = ""..familiar_text[i]
				if i ~= 8 then
					gui.drawText(28, 203+(24*i), "Level "..familiar_data_level[i], 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
					gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i]..".png", 2, 197+(24*i), 24, 27, true)				
				else				
					gui.drawText(28, 371, "Level "..familiar_data_level[i], 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
					gui.drawImage(".\\NitM\\relic\\relic_"..familiar_text[i]..".png", 2, 366, 24, 27, true)

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
	gui.drawText(18, 385, "now "..current_familiar, 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
	familiar_data_level = nil
	script_familiar = false
	script_shot = true
end
--------------------------------string.format("%08s", bizstring.binary(val))
function unlock()
	gui.drawBox(525, 20, 630, 40, 0xCF646464, nil)
	gui.drawText(525, 17, "Unlock", 0xCFFFFFFF, nil, 10, "Impact",  nil, nil, nil)
	gui.drawText(525, 27, "Teleporters", 0xCFFFFFFF, nil, 10, "Impact",  nil, nil, nil)
--
--	gui.drawText(560, 20, bizstring.binary(unlock_data[0])..bizstring.binary(unlock_data[1])..bizstring.binary(unlock_data[2])..bizstring.binary(unlock_data[3])..bizstring.binary(unlock_data[4])..bizstring.binary(unlock_data[5])..bizstring.binary(unlock_data[6])..bizstring.binary(unlock_data[7])..bizstring.binary(unlock_data[8])..bizstring.binary(unlock_data[9])..bizstring.binary(unlock_data[10])..bizstring.binary(unlock_data[11])..bizstring.binary(unlock_data[12])..bizstring.binary(unlock_data[13])..bizstring.binary(unlock_data[14])..bizstring.binary(unlock_data[15]), 0xCFFFFFFF, nil, 7, "Ebrima",  nil, nil, nil)
	gui.drawText(560, 20, string.format("%01s", bizstring.binary(unlock_data[0]))..string.format("%01s", bizstring.binary(unlock_data[1]))..string.format("%01s", bizstring.binary(unlock_data[2]))..string.format("%01s", bizstring.binary(unlock_data[3]))..string.format("%01s", bizstring.binary(unlock_data[4]))..string.format("%01s", bizstring.binary(unlock_data[5]))..string.format("%01s", bizstring.binary(unlock_data[6]))..string.format("%01s", bizstring.binary(unlock_data[7]))..string.format("%01s", bizstring.binary(unlock_data[8]))..string.format("%01s", bizstring.binary(unlock_data[9]))..string.format("%01s", bizstring.binary(unlock_data[10]))..string.format("%01s", bizstring.binary(unlock_data[11]))..string.format("%01s", bizstring.binary(unlock_data[12]))..string.format("%01s", bizstring.binary(unlock_data[13]))..string.format("%01s", bizstring.binary(unlock_data[14]))..string.format("%01s", bizstring.binary(unlock_data[15])), 0xCFFFFFFF, nil, 7, "Ebrima",  nil, nil, nil)
	gui.drawText(585, 26, string.format("%08s", bizstring.binary(teleportA)), 0xCFFFFFFF, nil, 7, "Ebrima",  nil, nil, nil)
	gui.drawText(585, 32, string.format("%08s", bizstring.binary(teleportB)), 0xCFFFFFFF, nil, 7, "Ebrima",  nil, nil, nil)
--
	script_unlock = false
	script_shot = true
end
--------------------------------
function bestiary()
	gui.drawBox(630, 20, 791, 40, 0xCF646464, nil)
--
	for i = 1, 4, 1 do
		gui.drawText(630, 19+((i-1)*5), string.format("%08s", bizstring.binary(bestiary_data[i-1])), 0xCFFFFFFF, nil, 6, "Ebrima",  nil, nil, nil)
	end
	for i = 1, 4, 1 do
		gui.drawText(655, 19+((i-1)*5), string.format("%08s", bizstring.binary(bestiary_data[4+i-1])), 0xCFFFFFFF, nil, 6, "Ebrima",  nil, nil, nil)
	end
	for i = 1, 4, 1 do
		gui.drawText(680, 19+((i-1)*5), string.format("%08s", bizstring.binary(bestiary_data[8+i-1])), 0xCFFFFFFF, nil, 6, "Ebrima",  nil, nil, nil)
	end
	for i = 1, 4, 1 do
		gui.drawText(705, 19+((i-1)*5), string.format("%08s", bizstring.binary(bestiary_data[12+i-1])), 0xCFFFFFFF, nil, 6, "Ebrima",  nil, nil, nil)
	end
	for i = 1, 4, 1 do
		gui.drawText(730, 19+((i-1)*5), string.format("%08s", bizstring.binary(bestiary_data[16+i-1])), 0xCFFFFFFF, nil, 6, "Ebrima",  nil, nil, nil)
	end
	gui.drawText(755, 19, string.format("%08s", bizstring.binary(bestiary_data[21])), 0xCFFFFFFF, nil, 6, "Ebrima",  nil, nil, nil)
--
	gui.drawText(753, 19+5, "Bestiary", 0xCFFFFFFF, nil, 10, "impact",  nil, nil, nil)
--	
	bestiary_data = nil
	script_bestiary = false
	script_shot = true
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
	if castleB then
		data[1] = 272 - 22 - 16 - i % 16 * 16
		data[2] = 272 - 22 - i % 16 * 16
		data[3] = 194 - 5 - 4 * math.floor(i / 16)
		data[4] = map_data[i]
		data[5] = map_data[1 + i]
		return data
	else
		data[1] = 38 + i % 16 * 16
		data[2] = 22 + i % 16 * 16
		data[3] = 5 + 4 * math.floor(i / 16)
		data[4] = map_data[i]
		data[5] = map_data[1 + i]
		return data
	end
end
--------------------------------
function displayMap(mapData)
--special thanks to Really_Tall, yoshi ect...
gui.drawBox(0, 0, 275, 195, 0xCF646464, nil)
if castleB then
gui.drawImage('.\\NitM\\hud\\map256x189B.png', 10, 5, 256, 189, true) 
end
if castleB == false and prologue == false then
gui.drawImage('.\\NitM\\hud\\map256x189.png', 10, 5, 256, 189, true) 
end
if prologue then --hack in a new map for prologue...
gui.drawImage('.\\NitM\\hud\\map256x189_prologue.png', 10, 5, 256, 189, true)
end
gui.drawImage('.\\NitM\\hud\\button_map_on.png', 2, 1, 14, 13, true)
user_cursor = false--satefy guard, if its true, it will hack the x/y


build_mapcolor() --set the map squares color
build_unlock() --generate the wall to show or not ect...


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


if castleB then --insert the 2 extra rooms...
	table.insert(area_roomA, 45 + ( 42 * 64 ), "cave")
	table.insert(area_roomA, 48 + ( 42 * 64 ), "cave")
else
	area_roomA[ 45 + ( 42 * 64 )] = nil
	area_roomA[ 48 + ( 42 * 64 )] = nil
end

if castleB then
	for mapIndex = 1, #mapData do
		local baseX = {[0] = mapData[mapIndex][2], [1] = mapData[mapIndex][1]}
		local baseY = mapData[mapIndex][3]
		local baseMapSquare = {[0] = mapData[mapIndex][5], [1] = mapData[mapIndex][4]}
		for mapSubIndex = 7, 0, -1 do
			bitIndex = mapSubIndex % 4
			baseIndex = (mapSubIndex - bitIndex) / 4
			if bit.check(baseMapSquare[baseIndex], 2 * bitIndex) then -- if the current bit(sqaure) is set ON
				gui.drawRectangle(baseX[baseIndex] + 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_On, square_fill_On)
			elseif bit.check(baseMapSquare[baseIndex], 2 * bitIndex + 1) then --else if the next bit is set, and the current bit wasn't set, librarian-map-square
				--gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
			else  -- else the bit (square) is OFF, and if in castle bounds (first_castle_data) we want to draw the whatever color we use
				if area_roomA[320 + ((mapIndex - 1) * 2 + baseIndex + 1) * 4 - bitIndex - 1] then
					gui.drawRectangle(baseX[baseIndex] + 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
				end
			end
		end
	end
else
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
				--gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
			else  -- else the bit (square) is OFF, and if in castle bounds (first_castle_data) we want to draw the whatever color we use
				if area_roomA[320 + ((mapIndex - 1) * 2 + baseIndex + 1) * 4 - bitIndex - 1] then
					gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
				end
			end
		end
	end
end

square_sizeX = nil
square_sizeY = nil
square_line_On = nil
square_line_Off = nil
mapData = nil
map_data = nil
script_map = false
script_shot = true
end
--------------------------------
function take_shot()
local biz_size = client.getwindowsize()
if biz_size ~= 2 then client.setwindowsize(2) end
gui.clearImageCache()
gui.DrawFinish()
client.screenshot('.\\NitM\\shot.png')
if biz_size ~= 2 then client.setwindowsize(biz_size) end
script_shot = false
shot_refresh = false
end
--------------------------------
function splash_png()
if game_is_map == false then
--	gui.drawImageRegion('.\\NitM\\shot.png', 0, 0, 275, 195, 0, 0, 275, 195) 			--map
--	if castleB then
--	gui.drawImageRegion('.\\NitM\\shot.png', 1, 1, 275, 195, 1+275, 1+195, -275, -195)
--	else
--	gui.drawImageRegion('.\\NitM\\shot.png', 0, 0, 275, 195, 0, 0, 275, 195) 			--map
--	end
	gui.drawImageRegion('.\\NitM\\shot.png', 0, 0, 275, 195, 0, 0, 275, 195) 			--map
	gui.drawImageRegion('.\\NitM\\shot.png', 0, 220, 66, 180, 0, 220, 66, 180) 			--familiar
	gui.drawImageRegion('.\\NitM\\shot.png', 65, 220, 211, 180, 65, 220, 211, 180)		--timeattack
	if game_is_alt_rez == false then
		gui.drawImageRegion('.\\NitM\\shot.png', 676, 170, 116, 400, 676, 170, 116, 400)	--relic
		gui.drawImageRegion('.\\NitM\\shot.png', 676, 55, 116, 116, 676, 55, 116, 116)		--gear
		gui.drawImageRegion('.\\NitM\\shot.png', 635, 20, 791, 40, 635, 20, 791, 40)		--beastiary
		gui.drawImageRegion('.\\NitM\\shot.png', 525, 20, 635, 40, 525, 20, 635, 40)		--unlock
	end
end
end
--------------------------------