
function exit_script()
	client.SetGameExtraPadding(0, 0, 0, 0)
	if client_osd == true then
	client.setscreenshotosd(true)
	end
	gui.clearImageCache()
	os.remove('.\\NitM\map.png')
	os.remove('.\\NitM\familiar.png')
	os.remove('.\\NitM\relic.png')
	os.remove('.\\NitM\timeattack.png')
	os.remove('.\\NitM\gear.png')
end


function snap_to_grid(x, y)
    return {
        math.floor((x - (-289)) / 4) * 4 + (-289),
        math.floor((y - (-72)) / 4) * 4 + (-72)
    }
end

function byterange_decode(values, size, big_endian, signed)
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

function flashy_colors()
--special thanks to brunovalads
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
local alpha1 = math.ceil(0xFF*speed1)*0x1000000
local alpha2 = math.ceil(0xFF*speed2)*0x1000000
local alpha3 = math.ceil(0xFF*speed3)*0x1000000
local alpha4 = math.ceil(0xFF*speed4)*0x1000000
local alpha5 = math.ceil(0x77*speed1)*0x1000000
local alpha6 = math.ceil(0x77*speed3)*0x1000000
local alpha7 = math.ceil(0x77*speed1)*0x1000000
local alpha8 = math.ceil(0x77*speed3)*0x1000000
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
if debug_Zcolor == true then
	print(Zcolor)
end
-- for a 60 frames cycle: 64*cos(x*pi/30)+191
-- for a 10 frames cycle: 64*cos(x*pi/5)+191
end


