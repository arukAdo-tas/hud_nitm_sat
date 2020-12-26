--[[-----------------------------------------------------------------------------------------
HuD lua script for Saturn Castlevania NitM  by arukAdo -- alpha5--
extra.lua > extra functions--
data.lua > all the hardcoded data--
ram.lua > used as a place to make comment on ram address-----
init.lua > all the init vars for the script, this is where you can customize what the script does---
logic.lua > will do all the ram fetching while the script run, buttons and resolution switching-----
shots.lua > the functions that are rendered only for one frame, then screenshot, and split for the overlay right after---
hitbox.lua > will draw all the boxes for "objects" and the player---
functions.lua > everything that is draw on every frame (text and "modules" boxes)-----
cursors.lua > all the drawing on the minimap, to light up squares on it-----------------------------------------------------------
loop.lua > the main loop----------------------------
]]-------------------------
--if you didnt stop the script properly and closed the lua console, ill clean up your mess----------------
collectgarbage('restart')---------------------------------------------------------------------------------
gui.clearImageCache()-------------------------------------------------------------------------------------
os.remove('.\\NitM\shot.png')-------------
--if u dont have osd off, its required, ill put it back to on IF you turn off the script properly---------
biz_message = client.getconfig().displaymessages--------------------------
if biz_message then client.displaymessages(false) end----
biz_osd = client.getconfig().ScreenshotCaptureOsd--------
if biz_osd then client.setscreenshotosd(false) end--
biz_windowsize = client.getwindowsize()------------------------
if biz_windowsize ~= 2 then client.setwindowsize(2) end --this is not necessary...maybe---------
biz_Y_rez = client.screenheight()--
biz_X_rez = client.screenwidth()----------------------------------------------------------------
biz_X = client.xpos()--------------------------------------------------------------------
biz_Y = client.ypos()---
----------------------------------
script_debug = true --probly not usefull for most ppl-----------
----------------------------------------------------------------
----------------------------------------------------------------
--require "gd"-----------------------------------
module_files = { "extra", "data", "ram", "init", "buttons", "logic", "shots", "hitbox", "functions", "cursors", "loop" }-------
for i = 1,11,1 do--
	_G["module_"..module_files[i]] = loadfile("NitM\\"..module_files[i]..".lua");--
	if (_G["module_"..module_files[i]] == nil) then--
		console.writeline("failed to interpret NitM\\"..module_files[i]..".lua");--
		return false;--
	end--
	_G["module_"..module_files[i]]();--
end---
--------
--------
--------
--------
--------
--------