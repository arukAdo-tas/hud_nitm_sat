
--[[
Map Data
]]


--data to define a "area ID" of mine
area_text_data ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(area_text_data, atx + aty * 64, "Catacombs") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(area_text_data, atx + aty * 64, "Catacombs") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(area_text_data, atx + aty * 64, "Catacombs") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(area_text_data, atx + aty * 64, "Catacombs") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(area_text_data, atx + aty * 64, "Catacombs") end end
for atx = 33, 33 do for aty = 48, 49 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
table.insert(area_text_data, 31 + ( 48 * 64 ), "Abandoned Mine")
for atx = 29, 35 do for aty = 44, 44 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(area_text_data, atx + aty * 64, "Abandoned Mine") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(area_text_data, atx + aty * 64, "Underground Gardens") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(area_text_data, atx + aty * 64, "Underground Gardens") end end
table.insert(area_text_data, 2 + ( 45 * 64 ), "Underground Gardens")
for atx = 2, 2 do for aty = 41, 44 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(area_text_data, atx + aty * 64, "Entrance") end end
table.insert(area_text_data, 15 + ( 38 * 64 ), "Entrance")
table.insert(area_text_data, 16 + ( 38 * 64 ), "Entrance")
table.insert(area_text_data, 8 + ( 42 * 64 ), "Underground Caverns")
table.insert(area_text_data, 16 + ( 41 * 64 ), "Underground Caverns")
table.insert(area_text_data, 17 + ( 41 * 64 ), "Underground Caverns")
for atx = 9, 13 do for aty = 42, 43 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
table.insert(area_text_data, 32 + ( 37 * 64 ), "Underground Caverns")
for atx = 33, 40 do for aty = 37, 38 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
table.insert(area_text_data, 39 + ( 40 * 64 ), "Underground Caverns")
for atx = 39, 55 do for aty = 41, 41 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
table.insert(area_text_data, 45 + ( 33 * 64 ), "Underground Caverns")
table.insert(area_text_data, 39 + ( 26 * 64 ), "Underground Caverns")
table.insert(area_text_data, 40 + ( 26 * 64 ), "Underground Caverns")
for atx = 35, 37 do for aty = 27, 27 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
table.insert(area_text_data, 37 + ( 28 * 64 ), "Underground Caverns")
for atx = 37, 37 do for aty = 32, 34 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
table.insert(area_text_data, 36 + ( 34 * 64 ), "Underground Caverns")
for atx = 40, 42 do for aty = 29, 29 do table.insert(area_text_data, atx + aty * 64, "Underground Caverns") end end
--
table.insert(area_text_data, 32 + ( 34 * 64 ), "Cursed Prison")
for atx = 33, 35 do for aty = 34, 36 do table.insert(area_text_data, atx + aty * 64, "Cursed Prison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(area_text_data, atx + aty * 64, "Cursed Prison") end end
--
for atx = 47, 59 do for aty = 25, 25 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
table.insert(area_text_data, 41 + ( 26 * 64 ), "Marble Gallery")
table.insert(area_text_data, 44 + ( 26 * 64 ), "Marble Gallery")
table.insert(area_text_data, 39 + ( 24 * 64 ), "Marble Gallery")
for atx = 37, 38 do for aty = 24, 26 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
table.insert(area_text_data, 34 + ( 25 * 64 ), "Marble Gallery")
table.insert(area_text_data, 32 + ( 24 * 64 ), "Marble Gallery")
for atx = 30, 34 do for aty = 23, 23 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
table.insert(area_text_data, 27 + ( 27 * 64 ), "Marble Gallery")
table.insert(area_text_data, 28 + ( 27 * 64 ), "Marble Gallery")
table.insert(area_text_data, 27 + ( 28 * 64 ), "Marble Gallery")
for atx = 25, 26 do for aty = 28, 32 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
table.insert(area_text_data, 27 + ( 32 * 64 ), "Marble Gallery")
table.insert(area_text_data, 27 + ( 33 * 64 ), "Marble Gallery")
table.insert(area_text_data, 27 + ( 34 * 64 ), "Marble Gallery")
for atx = 21, 26 do for aty = 34, 36 do table.insert(area_text_data, atx + aty * 64, "Marble Gallery") end end
---
table.insert(area_text_data, 32 + ( 28 * 64 ), "Central Room")
table.insert(area_text_data, 32 + ( 29 * 64 ), "Central Room")
for atx = 31, 33 do for aty = 30, 32 do table.insert(area_text_data, atx + aty * 64, "Central Room") end end
---
for atx = 60, 63 do for aty = 13, 30 do table.insert(area_text_data, atx + aty * 64, "Outerwall") end end
table.insert(area_text_data, 59 + ( 17 * 64 ), "Outerwall")
table.insert(area_text_data, 59 + ( 26 * 64 ), "Outerwall")
table.insert(area_text_data, 59 + ( 27 * 64 ), "Outerwall")
for atx = 56, 59 do for aty = 23, 24 do table.insert(area_text_data, atx + aty * 64, "Outerwall") end end
table.insert(area_text_data, 55 + ( 24 * 64 ), "Outerwall")
---
for atx = 52, 59 do for aty = 18, 21 do table.insert(area_text_data, atx + aty * 64, "Long Library") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(area_text_data, atx + aty * 64, "Long Library") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(area_text_data, atx + aty * 64, "Long Library") end end
table.insert(area_text_data, 44 + ( 20 * 64 ), "Long Library")
table.insert(area_text_data, 44 + ( 21 * 64 ), "Long Library")
---
table.insert(area_text_data, 59 + ( 15 * 64 ), "Clock Tower")
table.insert(area_text_data, 59 + ( 14 * 64 ), "Clock Tower")
table.insert(area_text_data, 59 + ( 11 * 64 ), "Clock Tower")
for atx = 53, 58 do for aty = 11, 15 do table.insert(area_text_data, atx + aty * 64, "Clock Tower") end end
table.insert(area_text_data, 49 + ( 14 * 64 ), "Clock Tower")
table.insert(area_text_data, 51 + ( 8 * 64 ), "Clock Tower")
for atx = 50, 52 do for aty = 9, 14 do table.insert(area_text_data, atx + aty * 64, "Clock Tower") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(area_text_data, atx + aty * 64, "Clock Tower") end end
table.insert(area_text_data, 40 + ( 10 * 64 ), "Clock Tower")
table.insert(area_text_data, 41 + ( 10 * 64 ), "Clock Tower")
---
for atx = 38, 39 do for aty = 5, 12 do table.insert(area_text_data, atx + aty * 64, "Castle Keep") end end
table.insert(area_text_data, 40 + ( 12 * 64 ), "Castle Keep")
for atx = 31, 37 do for aty = 8, 12 do table.insert(area_text_data, atx + aty * 64, "Castle Keep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(area_text_data, atx + aty * 64, "Castle Keep") end end
table.insert(area_text_data, 33 + ( 6 * 64 ), "Castle Keep")
table.insert(area_text_data, 31 + ( 7 * 64 ), "Castle Keep")
table.insert(area_text_data, 30 + ( 12 * 64 ), "Castle Keep")
---
for atx = 27, 28 do for aty = 12, 13 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
table.insert(area_text_data, 16 + ( 21 * 64 ), "Royal Chapel")
table.insert(area_text_data, 16 + ( 19 * 64 ), "Royal Chapel")
for atx = 8, 13 do for aty = 21, 22 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
table.insert(area_text_data, 10 + ( 20 * 64 ), "Royal Chapel")
for atx = 8, 9 do for aty = 21, 23 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
table.insert(area_text_data, 3 + ( 26 * 64 ), "Royal Chapel")
for atx = 2, 4 do for aty = 27, 28 do table.insert(area_text_data, atx + aty * 64, "Royal Chapel") end end
---
for atx = 14, 25 do for aty = 22, 24 do table.insert(area_text_data, atx + aty * 64, "Colosseum") end end
table.insert(area_text_data, 26 + ( 24 * 64 ), "Colosseum")
table.insert(area_text_data, 13 + ( 24 * 64 ), "Colosseum")
for atx = 17, 22 do for aty = 21, 21 do table.insert(area_text_data, atx + aty * 64, "Colosseum") end end
table.insert(area_text_data, 19 + ( 20 * 64 ), "Colosseum")
table.insert(area_text_data, 20 + ( 20 * 64 ), "Colosseum")
---
for atx = 18, 30 do for aty = 19, 19 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
table.insert(area_text_data, 34 + ( 21 * 64 ), "Olrox Quarter's")
table.insert(area_text_data, 33 + ( 21 * 64 ), "Olrox Quarter's")
for atx = 27, 32 do for aty = 21, 22 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
table.insert(area_text_data, 28 + ( 23 * 64 ), "Olrox Quarter's")
for atx = 29, 29 do for aty = 23, 25 do table.insert(area_text_data, atx + aty * 64, "Olrox Quarter's") end end
---
for atx = 19, 20 do for aty = 25, 27 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(area_text_data, 16 + ( 28 * 64 ), "Alchemy Laboratory")
table.insert(area_text_data, 16 + ( 31 * 64 ), "Alchemy Laboratory")
for atx = 17, 17 do for aty = 28, 34 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(area_text_data, 8 + ( 29 * 64 ), "Alchemy Laboratory")
table.insert(area_text_data, 10 + ( 29 * 64 ), "Alchemy Laboratory")
table.insert(area_text_data, 11 + ( 29 * 64 ), "Alchemy Laboratory")
for atx = 8, 11 do for aty = 30, 31 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(area_text_data, 11 + ( 32 * 64 ), "Alchemy Laboratory")
table.insert(area_text_data, 12 + ( 32 * 64 ), "Alchemy Laboratory")
table.insert(area_text_data, 11 + ( 34 * 64 ), "Alchemy Laboratory")
table.insert(area_text_data, 12 + ( 36 * 64 ), "Alchemy Laboratory")
for atx = 12, 15 do for aty = 33, 35 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(area_text_data, 16 + ( 34 * 64 ), "Alchemy Laboratory")
for atx = 14, 16 do for aty = 36, 36 do table.insert(area_text_data, atx + aty * 64, "Alchemy Laboratory") end end
--special rooms, on the png the saveroom are red, teleporters are orange, cdroom arent show at all
table.insert(area_text_data, 3 + ( 44 * 64 ), "CD Room")
table.insert(area_text_data, 3 + ( 45 * 64 ), "CD Room")
table.insert(area_text_data, 2 + ( 45 * 64 ), "Bear Teleporter")
table.insert(area_text_data, 13 + ( 45 * 64 ), "Save Room")
table.insert(area_text_data, 5 + ( 39 * 64 ), "Save Room")
table.insert(area_text_data, 15 + ( 41 * 64 ), "CD Room")
table.insert(area_text_data, 20 + ( 36 * 64 ), "CD Room")
table.insert(area_text_data, 17 + ( 36 * 64 ), "CD Room")
table.insert(area_text_data, 17 + ( 37 * 64 ), "Save Room")
table.insert(area_text_data, 16 + ( 38 * 64 ), "CD Room")
table.insert(area_text_data, 15 + ( 38 * 64 ), "Horse Teleporter")
table.insert(area_text_data, 28 + ( 38 * 64 ), "CD Room")
table.insert(area_text_data, 40 + ( 37 * 64 ), "Save Room")
table.insert(area_text_data, 36 + ( 34 * 64 ), "CD Room")
table.insert(area_text_data, 40 + ( 26 * 64 ), "CD Room")
table.insert(area_text_data, 40 + ( 27 * 64 ), "Save Room")
table.insert(area_text_data, 43 + ( 33 * 64 ), "Save Room")
table.insert(area_text_data, 32 + ( 34 * 64 ), "Save Room")
table.insert(area_text_data, 27 + ( 36 * 64 ), "CD Room")
table.insert(area_text_data, 28 + ( 41 * 64 ), "Save Room")
table.insert(area_text_data, 34 + ( 44 * 64 ), "CD Room")
table.insert(area_text_data, 35 + ( 44 * 64 ), "Viper Teleporter")
table.insert(area_text_data, 32 + ( 49 * 64 ), "CD Room")
table.insert(area_text_data, 30 + ( 50 * 64 ), "Save Room")
table.insert(area_text_data, 22 + ( 50 * 64 ), "Save Room")
table.insert(area_text_data, 55 + ( 24 * 64 ), "Save Room")
table.insert(area_text_data, 60 + ( 13 * 64 ), "Save Room")
table.insert(area_text_data, 59 + ( 17 * 64 ), "Crab Teleporter")
table.insert(area_text_data, 60 + ( 14 * 64 ), "CD Room")
table.insert(area_text_data, 59 + ( 21 * 64 ), "CD Room")
table.insert(area_text_data, 60 + ( 17 * 64 ), "CD Room")
table.insert(area_text_data, 60 + ( 25 * 64 ), "CD Room")
table.insert(area_text_data, 51 + ( 19 * 64 ), "Save Room")
table.insert(area_text_data, 49 + ( 20 * 64 ), "Librarian")
table.insert(area_text_data, 39 + ( 9 * 64 ), "Save Room")
table.insert(area_text_data, 40 + ( 12 * 64 ), "Lion Teleporter")
table.insert(area_text_data, 29 + ( 13 * 64 ), "Save Room")
table.insert(area_text_data, 31 + ( 17 * 64 ), "Save Room")
table.insert(area_text_data, 37 + ( 21 * 64 ), "Ram Teleporter")
table.insert(area_text_data, 31 + ( 27 * 64 ), "Save Room")
table.insert(area_text_data, 29 + ( 27 * 64 ), "Save Room")
table.insert(area_text_data, 25 + ( 23 * 64 ), "Save Room")
table.insert(area_text_data, 14 + ( 23 * 64 ), "Save Room")
table.insert(area_text_data, 2 + ( 28 * 64 ), "Save Room")
table.insert(area_text_data, 7 + ( 30 * 64 ), "Save Room")
table.insert(area_text_data, 15 + ( 27 * 64 ), "Save Room")
table.insert(area_text_data, 16 + ( 35 * 64 ), "Save Room")
table.insert(area_text_data, 39 + ( 10 * 64 ), "CD Room")
table.insert(area_text_data, 39 + ( 12 * 64 ), "CD Room")
table.insert(area_text_data, 29 + ( 12 * 64 ), "CD Room")
table.insert(area_text_data, 36 + ( 21 * 64 ), "CD Room")
table.insert(area_text_data, 13 + ( 22 * 64 ), "CD Room")
table.insert(area_text_data, 26 + ( 22 * 64 ), "CD Room")
table.insert(area_text_data, 30 + ( 25 * 64 ), "CD Room")
table.insert(area_text_data, 4 + ( 28 * 64 ), "CD Room")
table.insert(area_text_data, 21 + ( 26 * 64 ), "CD Room")
table.insert(area_text_data, 13 + ( 22 * 64 ), "CD Room")
table.insert(area_text_data, 17 + ( 19 * 64 ), "CD Room")




--castle data for bit compare, this is a true/false table of all the rooms inside the castle
first_castle_full_data = {}

for i = 1,3004,1 do table.insert(first_castle_full_data, i, false) end


for cfdx = 16, 26 do for cfdy = 50, 51 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 27, 37 do for cfdy = 51, 51 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 28, 36 do for cfdy = 50, 51 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 38, 48 do for cfdy = 50, 51 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 31, 31 do for cfdy = 49, 50 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 33, 33 do for cfdy = 48, 49 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 32, 32 do for cfdy = 40, 48 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 31 + ( 48 * 64 - 320 ), true)
for cfdx = 29, 35 do for cfdy = 44, 44 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 27, 37 do for cfdy = 40, 40 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 36, 37 do for cfdy = 40, 41 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 27, 28 do for cfdy = 40, 41 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 27, 27 do for cfdy = 38, 41 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 14, 21 do for cfdy = 44, 44 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 3, 13 do for cfdy = 44, 45 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 2 + ( 45 * 64 - 320 ), true)
for cfdx = 2, 2 do for cfdy = 41, 44 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 2, 3 do for cfdy = 38, 40 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 4, 21 do for cfdy = 40, 40 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 5, 6 do for cfdy = 38, 39 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 7, 11 do for cfdy = 39, 39 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 10, 15 do for cfdy = 40, 41 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 19, 21 do for cfdy = 38, 40 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 17, 20 do for cfdy = 36, 38 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 15 + ( 38 * 64 - 320 ), true)
table.insert(first_castle_full_data, 16 + ( 38 * 64 - 320 ), true)
table.insert(first_castle_full_data, 8 + ( 42 * 64 - 320 ), true)
table.insert(first_castle_full_data, 16 + ( 41 * 64 - 320 ), true)
table.insert(first_castle_full_data, 17 + ( 41 * 64 - 320 ), true)
for cfdx = 9, 13 do for cfdy = 42, 43 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 14, 25 do for cfdy = 42, 42 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 22, 26 do for cfdy = 37, 37 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 27, 31 do for cfdy = 37, 37 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 28, 31 do for cfdy = 38, 38 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 23, 24 do for cfdy = 38, 41 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 32 + ( 37 * 64 - 320 ), true)
for cfdx = 33, 40 do for cfdy = 37, 38 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 39, 45 do for cfdy = 38, 39 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 39 + ( 40 * 64 - 320 ), true)
for cfdx = 39, 55 do for cfdy = 41, 41 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 40, 42 do for cfdy = 41, 42 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 46, 47 do for cfdy = 41, 42 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 49, 52 do for cfdy = 41, 42 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 38, 39 do for cfdy = 27, 36 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 43, 39 do for cfdy = 29, 29 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 43, 43 do for cfdy = 29, 32 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 43, 44 do for cfdy = 32, 33 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 45 + ( 33 * 64 - 320 ), true)
table.insert(first_castle_full_data, 39 + ( 26 * 64 - 320 ), true)
table.insert(first_castle_full_data, 40 + ( 26 * 64 - 320 ), true)
for cfdx = 35, 37 do for cfdy = 27, 27 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 37 + ( 28 * 64 - 320 ), true)
for cfdx = 37, 37 do for cfdy = 32, 34 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 36 + ( 34 * 64 - 320 ), true)
table.insert(first_castle_full_data, 32 + ( 34 * 64 - 320 ), true)
for cfdx = 33, 35 do for cfdy = 34, 36 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 27, 32 do for cfdy = 36, 36 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 47, 59 do for cfdy = 25, 25 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 40, 46 do for cfdy = 24, 25 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 41 + ( 26 * 64 - 320 ), true)
table.insert(first_castle_full_data, 44 + ( 26 * 64 - 320 ), true)
table.insert(first_castle_full_data, 39 + ( 24 * 64 - 320 ), true)
for cfdx = 37, 38 do for cfdy = 24, 26 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 22, 36 do for cfdy = 26, 26 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 31, 33 do for cfdy = 25, 27 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 34 + ( 25 * 64 - 320 ), true)
table.insert(first_castle_full_data, 32 + ( 24 * 64 - 320 ), true)
for cfdx = 30, 34 do for cfdy = 23, 23 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 27 + ( 27 * 64 - 320 ), true)
table.insert(first_castle_full_data, 28 + ( 27 * 64 - 320 ), true)
table.insert(first_castle_full_data, 27 + ( 28 * 64 - 320 ), true)
for cfdx = 25, 26 do for cfdy = 28, 32 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 27 + ( 32 * 64 - 320 ), true)
table.insert(first_castle_full_data, 27 + ( 33 * 64 - 320 ), true)
table.insert(first_castle_full_data, 27 + ( 34 * 64 - 320 ), true)
for cfdx = 21, 26 do for cfdy = 34, 36 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 32 + ( 28 * 64 - 320 ), true)
table.insert(first_castle_full_data, 32 + ( 29 * 64 - 320 ), true)
for cfdx = 31, 33 do for cfdy = 30, 32 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 60, 63 do for cfdy = 13, 30 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 59 + ( 17 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 26 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 27 * 64 - 320 ), true)
for cfdx = 56, 59 do for cfdy = 23, 24 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 55 + ( 24 * 64 - 320 ), true)
for cfdx = 52, 59 do for cfdy = 18, 21 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 45, 50 do for cfdy = 18, 21 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 51, 51 do for cfdy = 19, 21 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 44 + ( 20 * 64 - 320 ), true)
table.insert(first_castle_full_data, 44 + ( 21 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 15 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 14 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 11 * 64 - 320 ), true)
for cfdx = 53, 58 do for cfdy = 11, 15 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 49 + ( 14 * 64 - 320 ), true)
table.insert(first_castle_full_data, 51 + ( 8 * 64 - 320 ), true)
for cfdx = 50, 52 do for cfdy = 9, 14 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 42, 49 do for cfdy = 10, 11 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 40 + ( 10 * 64 - 320 ), true)
table.insert(first_castle_full_data, 41 + ( 10 * 64 - 320 ), true)
for cfdx = 38, 39 do for cfdy = 5, 12 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 40 + ( 12 * 64 - 320 ), true)
for cfdx = 31, 37 do for cfdy = 8, 12 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 34, 37 do for cfdy = 6, 8 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 33 + ( 6 * 64 - 320 ), true)
table.insert(first_castle_full_data, 31 + ( 7 * 64 - 320 ), true)
table.insert(first_castle_full_data, 30 + ( 12 * 64 - 320 ), true)
for cfdx = 27, 28 do for cfdy = 12, 13 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 21, 26 do for cfdy = 13, 13 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 19, 20 do for cfdy = 11, 14 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 16, 18 do for cfdy = 14, 14 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 8, 13 do for cfdy = 15, 15 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 14, 15 do for cfdy = 12, 21 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 16 + ( 21 * 64 - 320 ), true)
table.insert(first_castle_full_data, 16 + ( 19 * 64 - 320 ), true)
for cfdx = 8, 13 do for cfdy = 21, 22 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 10 + ( 20 * 64 - 320 ), true)
for cfdx = 8, 9 do for cfdy = 21, 23 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 7, 7 do for cfdy = 22, 24 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 6, 6 do for cfdy = 23, 25 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 5, 5 do for cfdy = 24, 26 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 4, 4 do for cfdy = 25, 27 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 3 + ( 26 * 64 - 320 ), true)
for cfdx = 2, 4 do for cfdy = 27, 28 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 14, 25 do for cfdy = 22, 24 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 26 + ( 24 * 64 - 320 ), true)
table.insert(first_castle_full_data, 13 + ( 24 * 64 - 320 ), true)
for cfdx = 17, 22 do for cfdy = 21, 21 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 19 + ( 20 * 64 - 320 ), true)
table.insert(first_castle_full_data, 20 + ( 20 * 64 - 320 ), true)
for cfdx = 18, 30 do for cfdy = 19, 19 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 16, 30 do for cfdy = 16, 16 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 19, 20 do for cfdy = 17, 18 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 25, 30 do for cfdy = 17, 18 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 31, 33 do for cfdy = 18, 18 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 30, 35 do for cfdy = 15, 15 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 35, 35 do for cfdy = 15, 21 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 34 + ( 21 * 64 - 320 ), true)
table.insert(first_castle_full_data, 33 + ( 21 * 64 - 320 ), true)
for cfdx = 27, 32 do for cfdy = 21, 22 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 28 + ( 23 * 64 - 320 ), true)
for cfdx = 29, 29 do for cfdy = 23, 25 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 19, 20 do for cfdy = 25, 27 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 16, 18 do for cfdy = 26, 26 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 14, 15 do for cfdy = 26, 28 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 16 + ( 28 * 64 - 320 ), true)
table.insert(first_castle_full_data, 16 + ( 31 * 64 - 320 ), true)
for cfdx = 17, 17 do for cfdy = 28, 34 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 8, 13 do for cfdy = 27, 28 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
for cfdx = 5, 7 do for cfdy = 28, 28 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 8 + ( 29 * 64 - 320 ), true)
table.insert(first_castle_full_data, 10 + ( 29 * 64 - 320 ), true)
table.insert(first_castle_full_data, 11 + ( 29 * 64 - 320 ), true)
for cfdx = 8, 11 do for cfdy = 30, 31 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 11 + ( 32 * 64 - 320 ), true)
table.insert(first_castle_full_data, 12 + ( 32 * 64 - 320 ), true)
table.insert(first_castle_full_data, 11 + ( 34 * 64 - 320 ), true)
table.insert(first_castle_full_data, 12 + ( 36 * 64 - 320 ), true)
for cfdx = 12, 15 do for cfdy = 33, 35 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
table.insert(first_castle_full_data, 16 + ( 34 * 64 - 320 ), true)
for cfdx = 14, 16 do for cfdy = 36, 36 do table.insert(first_castle_full_data, cfdx + cfdy * 64 - 320, true) end end
--special rooms, on the png the saveroom are red, teleporters are orange, cdroom arent show at all
table.insert(first_castle_full_data, 3 + ( 44 * 64 - 320 ), true)
table.insert(first_castle_full_data, 3 + ( 45 * 64 - 320 ), true)
table.insert(first_castle_full_data, 2 + ( 45 * 64 - 320 ), true)
table.insert(first_castle_full_data, 13 + ( 45 * 64 - 320 ), true)
table.insert(first_castle_full_data, 5 + ( 39 * 64 - 320 ), true)
table.insert(first_castle_full_data, 15 + ( 41 * 64 - 320 ), true)
table.insert(first_castle_full_data, 20 + ( 36 * 64 - 320 ), true)
table.insert(first_castle_full_data, 17 + ( 36 * 64 - 320 ), true)
table.insert(first_castle_full_data, 17 + ( 37 * 64 - 320 ), true)
table.insert(first_castle_full_data, 16 + ( 38 * 64 - 320 ), true)
table.insert(first_castle_full_data, 15 + ( 38 * 64 - 320 ), true)
table.insert(first_castle_full_data, 28 + ( 38 * 64 - 320 ), true)
table.insert(first_castle_full_data, 40 + ( 37 * 64 - 320 ), true)
table.insert(first_castle_full_data, 36 + ( 34 * 64 - 320 ), true)
table.insert(first_castle_full_data, 40 + ( 26 * 64 - 320 ), true)
table.insert(first_castle_full_data, 40 + ( 27 * 64 - 320 ), true)
table.insert(first_castle_full_data, 43 + ( 33 * 64 - 320 ), true)
table.insert(first_castle_full_data, 32 + ( 34 * 64 - 320 ), true)
table.insert(first_castle_full_data, 27 + ( 36 * 64 - 320 ), true)
table.insert(first_castle_full_data, 28 + ( 41 * 64 - 320 ), true)
table.insert(first_castle_full_data, 34 + ( 44 * 64 - 320 ), true)
table.insert(first_castle_full_data, 35 + ( 44 * 64 - 320 ), true)
table.insert(first_castle_full_data, 32 + ( 49 * 64 - 320 ), true)
table.insert(first_castle_full_data, 30 + ( 50 * 64 - 320 ), true)
table.insert(first_castle_full_data, 22 + ( 50 * 64 - 320 ), true)
table.insert(first_castle_full_data, 20 + ( 50 * 64 - 320 ), true)
table.insert(first_castle_full_data, 17 + ( 51 * 64 - 320 ), true)
table.insert(first_castle_full_data, 55 + ( 24 * 64 - 320 ), true)
table.insert(first_castle_full_data, 60 + ( 13 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 17 * 64 - 320 ), true)
table.insert(first_castle_full_data, 60 + ( 14 * 64 - 320 ), true)
table.insert(first_castle_full_data, 59 + ( 21 * 64 - 320 ), true)
table.insert(first_castle_full_data, 60 + ( 17 * 64 - 320 ), true)
table.insert(first_castle_full_data, 60 + ( 25 * 64 - 320 ), true)
table.insert(first_castle_full_data, 51 + ( 19 * 64 - 320 ), true)
table.insert(first_castle_full_data, 49 + ( 20 * 64 - 320 ), true)
table.insert(first_castle_full_data, 39 + ( 9 * 64 - 320 ), true)
table.insert(first_castle_full_data, 40 + ( 12 * 64 - 320 ), true)
table.insert(first_castle_full_data, 29 + ( 13 * 64 - 320 ), true)
table.insert(first_castle_full_data, 31 + ( 17 * 64 - 320 ), true)
table.insert(first_castle_full_data, 37 + ( 21 * 64 - 320 ), true)
table.insert(first_castle_full_data, 31 + ( 27 * 64 - 320 ), true)
table.insert(first_castle_full_data, 29 + ( 27 * 64 - 320 ), true)
table.insert(first_castle_full_data, 25 + ( 23 * 64 - 320 ), true)
table.insert(first_castle_full_data, 14 + ( 23 * 64 - 320 ), true)
table.insert(first_castle_full_data, 2 + ( 28 * 64 - 320 ), true)
table.insert(first_castle_full_data, 7 + ( 30 * 64 - 320 ), true)
table.insert(first_castle_full_data, 15 + ( 27 * 64 - 320 ), true)
table.insert(first_castle_full_data, 16 + ( 35 * 64 - 320 ), true)
table.insert(first_castle_full_data, 39 + ( 10 * 64 - 320 ), true)
table.insert(first_castle_full_data, 39 + ( 12 * 64 - 320 ), true)
table.insert(first_castle_full_data, 29 + ( 12 * 64 - 320 ), true)
table.insert(first_castle_full_data, 36 + ( 21 * 64 - 320 ), true)
table.insert(first_castle_full_data, 13 + ( 22 * 64 - 320 ), true)
table.insert(first_castle_full_data, 26 + ( 22 * 64 - 320 ), true)
table.insert(first_castle_full_data, 30 + ( 25 * 64 - 320 ), true)
table.insert(first_castle_full_data, 4 + ( 28 * 64 - 320 ), true)
table.insert(first_castle_full_data, 21 + ( 26 * 64 - 320 ), true)
table.insert(first_castle_full_data, 13 + ( 22 * 64 - 320 ), true)
table.insert(first_castle_full_data, 17 + ( 19 * 64 - 320 ), true)





--[[
-Gear Values Table
first value is the ID from reading the ram address (hand, armor, head ect...), second is the text
if we want png, then they will have to be call ID.png
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

--the text string that we want at the for in function relic, byte order
relic_text = {
"relic_bat_fire",
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
"relic_half",
"relic_sword",
"relic_heart",
"relic_nose",
"relic_bone",
"relic_nail",
"relic_eye",
"relic_ring",
"relic_fake",
"relic_speed",
}


