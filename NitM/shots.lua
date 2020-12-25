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
    data[1] = 38 + i % 16 * 16
	data[2] = 22 + i % 16 * 16
	data[3] = 5 + 4 * math.floor(i / 16)
	data[4] = map_data[i]
	data[5] = map_data[1 + i]
	return data
end
--------------------------------
function displayMap(mapData)
--special thanks to Really_Tall, yoshi ect...
gui.drawBox(0, 0, 275, 195, 0xCF646464, nil)
if castleB then
gui.drawImage('.\\NitM\\hud\\map256x189B.png', 10, 5, 256, 189, true) 
else
gui.drawImage('.\\NitM\\hud\\map256x189.png', 10, 5, 256, 189, true) 
end
gui.drawImage('.\\NitM\\hud\\button_map_on.png', 2, 1, 14, 13, true)
user_cursor = false--satefy guard, if its true, it will hack the x/y

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

local roomz = {}
if castleB then roomz = area_roomB else roomz = area_roomA end
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
			if roomz[320 + ((mapIndex - 1) * 2 + baseIndex + 1) * 4 - bitIndex - 1] then
				gui.drawRectangle(baseX[baseIndex] - 4 * bitIndex, baseY, square_sizeX, square_sizeY, square_line_Off, square_fill_Off)
			end
        end
    end
end
roomz = nil
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