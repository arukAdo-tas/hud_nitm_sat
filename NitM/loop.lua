
--------------------------------
--loop
while script_run == true do
flashy_colors()
if script_map_cursor then minimap_buttons() end
refresh_data()
where_is_player()
if castle_check then castlecheck() end
resolution_switch()
if script_gamebox == true then game_box() end
if script_info_time == true then info_time() end
if script_vpad then vpad() end
if script_stat then stat() end
-----------
if game_is_boot then --lets rock
--those are the ones we want to screenshot
	if script_timeattack then timeattack() end
	if script_relic then relic() end
	if script_gear then gear() end
	if script_familiar then familiar() end
	if script_map then minimap() end
	if script_bestiary then bestiary() end
	if script_unlock then unlock() end
	if script_shot then take_shot() end
	if shot_refresh == false and script_shot == false then splash_png() end --yeah we dont want to splash them if the shot is not ready 
--the rest is just text and boxes

if script_hitbox then
	if script_player_hitbox then player_hitbox() end
	if script_objects_hitbox then objects_hitbox() end
end

	if script_position then position() end
	if script_rng then rng() end

	if script_status then status() end
	if script_monitor then monitor() end
	if script_pickup then pickup() end

	if script_map_info then map_info() end

	if script_map_cursor then 
		draw_map_cursor() 
		gui.drawImage('.\\NitM\\hud\\button_cursor_on.png', 3, 182, 12, 12, true) 
	else 
		gui.drawImage('.\\NitM\\hud\\button_cursor_off.png', 3, 182, 12, 12, true)
	end
end

if extra_refresh then extra_refresh = false shot_refresh = true end

-----------
if script_debug then
	debug_data = debug_data.."  ram:"..math.floor((collectgarbage("count")))
	debug_data1 = string.sub(debug_data, 1, 90)
	debug_data2 = string.sub(debug_data, 91, 184)
	debug_data3 = string.sub(debug_data, 185, 270)
	debug_data4 = string.sub(debug_data, 271, 360)
	debug_data5 = string.sub(debug_data, 361, 450)
	debug_data6 = string.sub(debug_data, 451, 540)
	debug_data7 = string.sub(debug_data, 541, 630)
--	debug_data8 = string.sub(debug_data, 631, 720)
--	debug_data9 = string.sub(debug_data, 721, 900)
	debug_data10 = string.sub(debug_dataB, 1, 80)
	debug_data11 = string.sub(debug_dataB, 81, 200)
	gui.drawText(275, 40, debug_data1, "white", nil, 9, "Microsoft Sans Serif" , nil, nil, nil)
	gui.drawText(275, 50, debug_data2, "white", nil, 9, "Microsoft Sans Serif" , nil, nil, nil)
	gui.drawText(275, 60, debug_data3, "white", nil, 9, "Microsoft Sans Serif" , nil, nil, nil)
	gui.drawText(275, 70, debug_data4, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
	gui.drawText(275, 80, debug_data5, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
	gui.drawText(275, 90, debug_data6, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
	gui.drawText(275, 310, debug_data7, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
	gui.drawText(275, 320, debug_data10, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
	gui.drawText(275, 330, debug_data11, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
--	gui.drawText(275, 340, debug_data10, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
--	gui.drawText(275, 350, debug_data11, "white", nil, 9, "Microsoft Sans Serif", nil, nil, nil)
	debug_data = "debug: "
	debug_dataB = ""
end
-----------
--inhouse wait super function lol
if wait < max_wait then wait = wait + 1 else wait_long = wait_long + 1 wait = 0 end 
if wait_long == 90 then wait_long = 0 wait_very_long = wait_very_long +1 end
if wait_very_long == 4 then wait_very_long = 0 end
-----------
--when script start the shot dont work, thats the "fix"
if wait == 2 and first_shot then first_shot = false shot_refresh = true wait = 0 end 
-----------
--print()
emu.frameadvance()
end
--------------------------------