--------------------------------
function draw_map_cursor()

if castleB then --we need to offset
offs = 28
else --we dont need to offset...
offs = 0
end


--Zcolor[25]  Zcolor[17]
--x265 y 185 bottom right
--top right of the map is x265,y3 13 23 33 ....
--top left of the map is x5,y3 13 23 33 ....

if cursor_player == true then
	if alucard then
		gui.drawImage('.\\NitM\\hud\\button_alucard_on.png', 5, 45, 8, 8, true)
	elseif richter then
		gui.drawImage('.\\NitM\\hud\\button_richter_on.png', 5, 45, 8, 8, true)
	elseif maria then
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
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2 - offs, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7 - offs, 6, 6, true)
end
elseif cursor_player_speed == 2 then
CPcolor = Zcolor[42] 
gui.drawImage('.\\NitM\\hud\\button_speed_2.png', 5, 69, 8, 8, true)
if wait >= 10 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2 - offs, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7 - offs, 6, 6, true)
end
elseif cursor_player_speed == 3 then
CPcolor = Zcolor[41] 
gui.drawImage('.\\NitM\\hud\\button_speed_3.png', 5, 69, 8, 8, true)
if wait >= 15 and wait <= 30 or wait >= 40 and wait <= 55 then
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2 - offs, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_orange.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_orange.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_orange.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7 - offs, 6, 6, true)
end
end

gui.drawRectangle(theroomX + 10, theroomY + 5 - offs, 4, 4, 0xFFFF6600, CPcolor)
gui.drawRectangle((room_X_min_grid * 4) + 10, (room_Y_max_grid * 4)-16+1 - offs, (room_X_size_grid * 4), (room_Y_size_grid * 4), CPcolor, nil)
gui.drawImage('.\\NitM\\hud\\button_color_orange.png', 5, 57, 8, 8, true)



elseif cursor_player == true and cursor_player_color == 2 then
if cursor_player_speed == 0 then 
CPcolor = 0xFF00FFFF 
gui.drawImage('.\\NitM\\hud\\button_speed_0.png', 5, 69, 8, 8, true)
elseif cursor_player_speed == 1 then
CPcolor = Zcolor[19] 
gui.drawImage('.\\NitM\\hud\\button_speed_1.png', 5, 69, 8, 8, true)
if wait >= 0 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2 - offs, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7 - offs, 6, 6, true)
end
elseif cursor_player_speed == 2 then
CPcolor = Zcolor[18] 
gui.drawImage('.\\NitM\\hud\\button_speed_2.png', 5, 69, 8, 8, true)
if wait >= 10 and wait <= 30 or wait >= 40 and wait <= 60 then
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2 - offs, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7 - offs, 6, 6, true)
end
elseif cursor_player_speed == 3 then
CPcolor = Zcolor[17] 
gui.drawImage('.\\NitM\\hud\\button_speed_3.png', 5, 69, 8, 8, true)
if wait >= 15 and wait <= 30 or wait >= 40 and wait <= 55 then
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)+3 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-6 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+2 - offs, 6, 6, true)
else
gui.drawImage('.\\NitM\\hud\\cursor_right_cyan.png',(room_X_min_grid * 4)-2 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2)-2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_left_cyan.png',(room_X_min_grid * 4)+10+(room_X_size_grid * 4)+7 , ((room_Y_max_grid*4)-16)+((room_Y_size_grid * 4)/2) - 2 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_down_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)-11 - offs, 6, 6, true)
gui.drawImage('.\\NitM\\hud\\cursor_up_cyan.png', 10 + (room_X_min_grid * 4) + ((room_X_size_grid * 4)/2) - 3 , ((room_Y_max_grid*4)-16)+(room_Y_size_grid * 4)+7 - offs, 6, 6, true)
end
end
gui.drawRectangle(theroomX + 10 , theroomY + 5 - offs, 4, 4, 0xFF00FFFF, CPcolor)
gui.drawRectangle((room_X_min_grid * 4) + 10, (room_Y_max_grid * 4)-16+1 - offs, (room_X_size_grid * 4), (room_Y_size_grid * 4), CPcolor, nil)
gui.drawImage('.\\NitM\\hud\\button_color_cyan.png', 5, 57, 8, 8, true)

elseif cursor_player == false then

end



--trail, maybe I should check player cursor is on... or not...im not sure if its a seperate feature or not... guess it is for now
if cursor_trail == true then
--cursor_player = false
	for i = 1, (#trail_data-1)/5, 1 do
		if trail_data[(i*5)+1] then
			gui.drawRectangle( 10+trail_data[(i*5)+2]*4, 5+trail_data[(i*5)+3]*4-20 - offs, 4, 4, Zcolor[wait+i], Zcolor[wait-i])
		end
	end
	for i = 1, #trail_data/5, 2 do
		if trail_data[(i*5)+1] then
			gui.drawRectangle( 10+trail_data[(i*5)+2]*4, 5+trail_data[(i*5)+3]*4-20 - offs, 4, 4, Zcolor[i+2], Zcolor[i-1])
		end
	end
	for i = 1, #trail_data/5, 4 do
		if trail_data[(i*5)+1] then
			gui.drawRectangle( 10+trail_data[(i*5)+2]*4, 5+trail_data[(i*5)+3]*4-20 - offs, 4, 4, Zcolor[wait+i], Zcolor[wait-3])
		end
	end
	for i = 1, #trail_data/5, 8 do
		if trail_data[(i*5)+1] then
			gui.drawRectangle( 10+trail_data[(i*5)+2]*4, 5+trail_data[(i*5)+3]*4-20 - offs, 4, 4, Zcolor[wait+3], Zcolor[wait*i])
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
		if castleB then
		if time_attack_data[(4*i)-1] == 0 and time_attack_data[(4*i)-2] == 0 and time_attack_data[(4*i)-4] == 0 and boss_roomB_data1[(i*3)-1] > 0 then
			gui.drawRectangle( 10+boss_roomB_data1[(i*3)-1]*4, 5+boss_roomB_data1[(i*3)]*4-20 - offs, 4, 4, CBcolorA, CBcolorA)
			gui.drawRectangle( 10+boss_roomB_data2[(i*3)-1]*4, 5+boss_roomB_data2[(i*3)]*4-20 - offs, 4, 4, CBcolorA, CBcolorA)
		else
			gui.drawRectangle( 10+boss_roomB_data1[(i*3)-1]*4, 5+boss_roomB_data1[(i*3)]*4-20 - offs, 4, 4, CBcolorB, CBcolorB)
			gui.drawRectangle( 10+boss_roomB_data2[(i*3)-1]*4, 5+boss_roomB_data2[(i*3)]*4-20 - offs, 4, 4, CBcolorB, CBcolorB)
		end		
		else
		if time_attack_data[(4*i)-1] == 0 and time_attack_data[(4*i)-2] == 0 and time_attack_data[(4*i)-4] == 0 and boss_roomA_data1[(i*3)-1] > 0 then
			gui.drawRectangle( 10+boss_roomA_data1[(i*3)-1]*4, 5+boss_roomA_data1[(i*3)]*4-20 - offs, 4, 4, CBcolorA, CBcolorA)
			gui.drawRectangle( 10+boss_roomA_data2[(i*3)-1]*4, 5+boss_roomA_data2[(i*3)]*4-20 - offs, 4, 4, CBcolorA, CBcolorA)
		else
			gui.drawRectangle( 10+boss_roomA_data1[(i*3)-1]*4, 5+boss_roomA_data1[(i*3)]*4-20 - offs, 4, 4, CBcolorB, CBcolorB)
			gui.drawRectangle( 10+boss_roomA_data2[(i*3)-1]*4, 5+boss_roomA_data2[(i*3)]*4-20 - offs, 4, 4, CBcolorB, CBcolorB)
		end
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
		if castleB then
		if relic_data[(i)-1] == 0 then
			gui.drawRectangle( 10+relic_roomB_data[(i*3)-1]*4, 5+relic_roomB_data[(i*3)]*4-20 - offs, 4, 4, CRcolorA, CRcolorA)
		else
			gui.drawRectangle( 10+relic_roomB_data[(i*3)-1]*4, 5+relic_roomB_data[(i*3)]*4-20 - offs, 4, 4, CRcolorB, CRcolorB)
		end		
		else
		if relic_data[(i)-1] == 0 then
			gui.drawRectangle( 10+relic_roomA_data[(i*3)-1]*4, 5+relic_roomA_data[(i*3)]*4-20 - offs, 4, 4, CRcolorA, CRcolorA)
		else
			gui.drawRectangle( 10+relic_roomA_data[(i*3)-1]*4, 5+relic_roomA_data[(i*3)]*4-20 - offs, 4, 4, CRcolorB, CRcolorB)
		end
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
cursor_user_idle = cursor_user_idle + 1
	if (mouse_X > -279 and mouse_X < -38 and mouse_Y > -72 and mouse_Y < 115) then --then we are on the map area
		cursor_user_idle = 0
		if (mouse_X > -279 and mouse_X < -225 and mouse_Y > 95 and mouse_Y < 115)--we want to avoid borders
		or (mouse_X > -87 and mouse_X < -38 and mouse_Y > 86 and mouse_Y < 115)
		or (mouse_X > -53 and mouse_X < -38 and mouse_Y > 38 and mouse_Y < 115)
		or (mouse_X > -279 and mouse_X < -170 and mouse_Y > -80 and mouse_Y < -55)
		then--so we do nothing
		cursor_querry_X = 0
		cursor_querry_Y = 0
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
		cursor_querry_X = (mouse_pos_snapped[1]-1-10)/4
		cursor_querry_Y = (mouse_pos_snapped[2]+1+75+15)/4
		cursor_querry_X = math.floor(cursor_querry_X+ 0.5*1)
		if castleB then
			cursor_querry_Y = math.floor(cursor_querry_Y+ 0.5*1)-19+7
		else
			cursor_querry_Y = math.floor(cursor_querry_Y+ 0.5*1)-19
		end
		querry_1D = cursor_querry_X + cursor_querry_Y * 64 --like always, x + (y*64)
		if castleB then
		if boss_roomB[querry_1D] then room_boss = boss_roomB[querry_1D] else room_boss = "- - -" end 
		if relic_roomB[querry_1D] then room_relic = relic_roomB[querry_1D] else room_relic = "- - -" end 
		if lifeup_roomA[querry_1D] then room_lifeup = lifeup_roomA[querry_1D] else room_lifeup = "- - -" end 
		if heartup_roomA[querry_1D] then room_heartup = heartup_roomA[querry_1D] else room_heartup = "- - -" end 
		if pickup_roomA[querry_1D] then room_pickup = pickup_roomA[querry_1D] else room_pickup = "- - -" end 
		if special_roomB[querry_1D] then room_special = special_roomB[querry_1D] else room_special = "- - -" end 
		if text_roomB[querry_1D] then room_text = "X "..cursor_querry_X.." Y"..cursor_querry_Y.." "..text_roomB[querry_1D] else room_text = "- - -" end 
		else
		if boss_roomA[querry_1D] then room_boss = boss_roomA[querry_1D] else room_boss = "- - -" end 
		if relic_roomA[querry_1D] then room_relic = relic_roomA[querry_1D] else room_relic = "- - -" end 
		if lifeup_roomA[querry_1D] then room_lifeup = lifeup_roomA[querry_1D] else room_lifeup = "- - -" end 
		if heartup_roomA[querry_1D] then room_heartup = heartup_roomA[querry_1D] else room_heartup = "- - -" end 
		if pickup_roomA[querry_1D] then room_pickup = pickup_roomA[querry_1D] else room_pickup = "- - -" end 
		if special_roomA[querry_1D] then room_special = special_roomA[querry_1D] else room_special = "- - -" end 
		if text_roomA[querry_1D] then room_text = "X "..cursor_querry_X.." Y"..cursor_querry_Y.." "..text_roomA[querry_1D] else room_text = "- - -" end 
		end
		if cursor_user_color == 1 or cursor_user_color == 2 then --draw some flashy rectangles for those cursors
			gui.drawRectangle(mouse_pos_snapped[1]-2 , mouse_pos_snapped[2], 6, 6, Zcolor[1])
			gui.drawRectangle(mouse_pos_snapped[1]-4 , mouse_pos_snapped[2]-2, 10, 10, Zcolor[1])
			gui.drawRectangle(mouse_pos_snapped[1]-6 , mouse_pos_snapped[2]-4, 14, 14, Zcolor[1])
		end
		end
	end
if cursor_user_idle == 60 then
cursor_user = false
cursor_user_color = 4
cursor_user_idle = 0
end
end
--------------------------------


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

if cursor_switch then
	local col = nil
	for i = 1, #data_switch/3, 1 do
		if data_switch[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_switch[((i-1)*3)+1]*4, 5+data_switch[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_switch[((i-1)*3)+1]*4, 5+data_switch[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\switch_on.png', 259, 1, 16, 16, true)
else
	gui.drawImage('.\\NitM\\hud\\switch_off.png', 259, 1, 16, 16, true)
end

if cursor_wall then
	local col = nil
	for i = 1, #data_wall/3, 1 do
		if data_wall[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_wall[((i-1)*3)+1]*4, 5+data_wall[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_wall[((i-1)*3)+1]*4, 5+data_wall[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\button_eye_on.png', 259, 19, 16, 16, true)
else
	gui.drawImage('.\\NitM\\hud\\button_eye_off.png', 259, 19, 16, 16, true)
end

if cursor_cutscene then
	local col = nil
	for i = 1, #data_cutscene/3, 1 do
		if data_cutscene[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_cutscene[((i-1)*3)+1]*4, 5+data_cutscene[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_cutscene[((i-1)*3)+1]*4, 5+data_cutscene[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	for i = 1, #data_title/3, 1 do
		if data_title[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_title[((i-1)*3)+1]*4, 5+data_title[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_title[((i-1)*3)+1]*4, 5+data_title[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\cinematic_on.png', 240, 1, 16, 16, true)
else
	gui.drawImage('.\\NitM\\hud\\cinematic_off.png', 240, 1, 16, 16, true)
end

if cursor_break then
	local col = nil
	for i = 1, #data_break/3, 1 do
		if data_break[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_break[((i-1)*3)+1]*4, 5+data_break[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_break[((i-1)*3)+1]*4, 5+data_break[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\break_on.png', 261, 119, 11, 14, true)
else
	gui.drawImage('.\\NitM\\hud\\break_off.png', 261, 119, 11, 14, true)
end

if cursor_heartup then
	local col = nil
	for i = 1, #data_heartup/3, 1 do
		if data_heartup[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_heartup[((i-1)*3)+1]*4, 5+data_heartup[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_heartup[((i-1)*3)+1]*4, 5+data_heartup[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\heartup_on.png', 259, 134, 14, 12, true)
else
	gui.drawImage('.\\NitM\\hud\\heartup_off.png', 259, 134, 14, 12, true)
end

if cursor_lifeup then
	local col = nil
	for i = 1, #data_lifeup/3, 1 do
		if data_lifeup[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_lifeup[((i-1)*3)+1]*4, 5+data_lifeup[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_lifeup[((i-1)*3)+1]*4, 5+data_lifeup[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\lifeup_on.png', 260, 149, 13, 14, true)
else
	gui.drawImage('.\\NitM\\hud\\lifeup_off.png', 260, 149, 13, 14, true)
end

if cursor_pickup then
	local col = nil
	for i = 1, #data_pickup/3, 1 do
		if data_pickup[((i-1)*3)+3] == true then
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[9] end --rgb mode
			gui.drawRectangle( 10+data_pickup[((i-1)*3)+1]*4, 5+data_pickup[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		else
			if cursor_joker_speed == 5 then col = Zcolor[wait] else col = Zcolor[1] end --rgb mode
			gui.drawRectangle( 10+data_pickup[((i-1)*3)+1]*4, 5+data_pickup[((i-1)*3)+2]*4-20 - offs, 4, 4, 0x00000000, col)
		end
	end
	col = nil
	gui.drawImage('.\\NitM\\hud\\pickup_on.png', 259, 165, 14, 14, true)
else
	gui.drawImage('.\\NitM\\hud\\pickup_off.png', 259, 165, 14, 14, true)
end

end
-------
