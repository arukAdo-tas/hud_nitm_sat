-------------------------------------
function stop() --call when you exit the script (properly)
	client.SetGameExtraPadding(0, 0, 0, 0)
	if biz_osd == true then
	client.setscreenshotosd(true)
	end
	if biz_message == true then
	client.displaymessages(true)
	end
	client.setwindowsize(biz_windowsize)
	gui.clearImageCache()
	os.remove('.\\NitM\shot.png')
end
--------------------------------
function loadstate() --we need to refresh the data when user load a state
castle_check = true
shot_refresh = true
trail_data = { 0, 0, 0, 0, 0 }
wait = 0
wait_long = 0
extra_refresh = true
prologue_up = false
end
--------------------------------
function snap_to_grid(x, y) --super code to make the mouse stick to squares
    return {
        math.floor((x - (-289)) / 4) * 4 + (-289),
        math.floor((y - (-72)) / 4) * 4 + (-72)
    }
end
--------------------------------
function byterange_decode(values, size, big_endian, signed) --let me decode the whole stat range in 2 bytes
--special thanks to brunovallads
--syntax: raw = memory.readbyterange(); data = raw:byterange_decode(4);
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
--------------------------------
function flashy_colors() --super colors feature 2021
--special thanks to brunovalads
-- Color format: OORRGGBB(Opacity, Red, Green, Blue)
local base_color = {
0x00FF0000,--red
0x0000FF00,--green
0x0000FFFF,--cyan
0x00FFFF00,--yellow
0x00FF00FF,--pink
0x00FF6600,--orange
0x00C010F0,--purple
0x000000FF,--blue
0x00646464,--grey
0x00FFFFFF,--white
0x00000000,--black
}
Zcolor = {}
local speed1 = (math.cos(the_frame*math.pi/10)+1)/2
local speed2 = (math.cos(the_frame*math.pi/30)+1)/2
local speed3 = (math.cos(the_frame*math.pi/60)+1)/2
local speed4 = (math.cos(the_frame*math.pi/90)+1)/2
local speed5 = (64*math.cos(the_frame*math.pi/5)+191)
local speed6 = (64*math.cos(the_frame*math.pi/90)+191)
local alpha1 = math.ceil(0xFF*speed1)*0x1000000
local alpha2 = math.ceil(0xFF*speed2)*0x1000000
local alpha3 = math.ceil(0xFF*speed3)*0x1000000
local alpha4 = math.ceil(0xFF*speed4)*0x1000000
local alpha5 = math.ceil(0x77*speed1)*0x1000000
local alpha6 = math.ceil(0x77*speed3)*0x1000000
local alpha7 = speed5*0x1000000
local alpha8 = speed6*0x10000FF
--string.sub(alpha7, 1,4)
--alpha9 = string.sub(alpha8, 1,2)
--print(alpha8)
for i = 1 ,11 ,1 do
	Zcolor[1+(i*8)-8] = base_color[i] + alpha1
	Zcolor[2+(i*8)-8] = base_color[i] + alpha2
	Zcolor[3+(i*8)-8] = base_color[i] + alpha3
	Zcolor[4+(i*8)-8] = base_color[i] + alpha4
	Zcolor[5+(i*8)-8] = base_color[i] + alpha5
	Zcolor[6+(i*8)-8] = base_color[i] + alpha6
	Zcolor[7+(i*8)-8] = base_color[i] + alpha7
	Zcolor[8+(i*8)-8] = base_color[i] + alpha8
end
if script_debug == true then
	debug_dataB = " Z-1:"..bizstring.hex(Zcolor[1]).." 2:"..bizstring.hex(Zcolor[2]).." 3:"..bizstring.hex(Zcolor[3]).." 4:"..bizstring.hex(Zcolor[4]).." 5:"..bizstring.hex(Zcolor[5]).." 6:"..bizstring.hex(Zcolor[6]).." 7:"..bizstring.hex(Zcolor[7]).." 8:"..bizstring.hex(Zcolor[8])
	debug_dataB = debug_dataB.." Z-64:"..bizstring.hex(Zcolor[64]).." 63:"..bizstring.hex(Zcolor[63])
end
-- for a 60 frames cycle: 64*cos(x*pi/30)+191
-- for a 10 frames cycle: 64*cos(x*pi/5)+191
end
--------------------------------
function vpad()
-- ripped from bizhawk lua, only 1P and saturn
gui.drawBox(275, 20, 324, 40, 0xCF646464, 0xCF646464)
local c
if movie.mode() == 'PLAY' then c = movie.getinput(emu.framecount() - 1, 1) else c = joypad.get(1) end
------------
			gui.drawRectangle(277+ 2,20+ 4,41,12,0xC0FFFFFF,0xC0FFFFFF)
			gui.drawRectangle(277+ 3,20+ 2,39, 1,0xC0FFFFFF,0xC0FFFFFF)
			gui.drawLine(277+ 1,20+ 6,277+ 1,20+16,0xC0FFFFFF)
			gui.drawLine(277+ 0,20+10,277+ 0,20+16,0xC0FFFFFF)
			gui.drawLine(277+44,20+ 6,277+44,20+16,0xC0FFFFFF)
			gui.drawLine(277+45,20+10,277+45,20+16,0xC0FFFFFF)
			gui.drawLine(277+ 1,20+17,277+19,20+17,0xC0FFFFFF)
			gui.drawLine(277+26,20+17,277+44,20+17,0xC0FFFFFF)
			gui.drawLine(277+ 2,20+18,277+15,20+18,0xC0FFFFFF)
			gui.drawLine(277+30,20+18,277+43,20+18,0xC0FFFFFF)
			gui.drawLine(277+ 4,20+19,277+ 9,20+19,0xC0FFFFFF)
			gui.drawLine(277+36,20+19,277+41,20+19,0xC0FFFFFF)
			gui.drawLine(277+ 4,20+ 1,277+19,20+ 1,0xC0FFFFFF)
			gui.drawLine(277+ 6,20+ 0,277+15,20+ 0,0xC0FFFFFF)
			gui.drawLine(277+26,20+ 1,277+41,20+ 1,0xC0FFFFFF)
			gui.drawLine(277+30,20+ 0,277+39,20+ 0,0xC0FFFFFF)
------------
			gui.drawRectangle(277+ 8,20+ 4, 3, 3,c['Up']    and 0xC0FF0000 or 0xC0000000,c['Up']    and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+ 8,20+12, 3, 3,c['Down']  and 0xC0FF0000 or 0xC0000000,c['Down']  and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+ 4,20+ 8, 3, 3,c['Left']  and 0xC0FF0000 or 0xC0000000,c['Left']  and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+12,20+ 8, 3, 3,c['Right'] and 0xC0FF0000 or 0xC0000000,c['Right'] and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+24,20+ 8, 1, 1,c['X']     and 0xC0FF0000 or 0xC0000000,c['X']     and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+31,20+ 6, 1, 1,c['Y']     and 0xC0FF0000 or 0xC0000000,c['Y']     and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+37,20+ 4, 1, 1,c['Z']     and 0xC0FF0000 or 0xC0000000,c['Z']     and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+19,20+12, 3, 1,c['Start'] and 0xC0FF0000 or 0xC0000000,c['Start'] and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+ 8,20+ 0, 3, 1,c['L']     and 0xC0FF0000 or 0xC0000000,c['L']     and 0xC0FF0000 or 0xC0000000)
			gui.drawRectangle(277+34,20+ 0, 3, 1,c['R']     and 0xC0FF0000 or 0xC0000000,c['R']     and 0xC0FF0000 or 0xC0000000)
------------
			gui.drawEllipse(277+26,20+11, 3, 3,c['A'] and 0xC0FF0000 or 0xC0000000,c['A'] and 0xC0FF0000 or 0xC0000000)
			gui.drawEllipse(277+32,20+ 9, 3, 3,c['B'] and 0xC0FF0000 or 0xC0000000,c['B'] and 0xC0FF0000 or 0xC0000000)
			gui.drawEllipse(277+38,20+ 7, 3, 3,c['C'] and 0xC0FF0000 or 0xC0000000,c['C'] and 0xC0FF0000 or 0xC0000000)
end
--------------------------------