
--im storing all my hardcoded junk in this seperate lua file


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
"relic_sprite",
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

--[[
Map Data
]]

--data to define a "area ID" of mine
castle_A_area_ID ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(castle_A_area_ID, atx + aty * 64, "cata") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(castle_A_area_ID, atx + aty * 64, "cata") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(castle_A_area_ID, atx + aty * 64, "cata") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(castle_A_area_ID, atx + aty * 64, "cata") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(castle_A_area_ID, atx + aty * 64, "cata") end end
-----
for atx = 33, 33 do for aty = 48, 49 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
table.insert(castle_A_area_ID, 31 + ( 48 * 64 ), "mine")
for atx = 29, 35 do for aty = 44, 44 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(castle_A_area_ID, atx + aty * 64, "mine") end end
-----
for atx = 14, 21 do for aty = 44, 44 do table.insert(castle_A_area_ID, atx + aty * 64, "garden") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(castle_A_area_ID, atx + aty * 64, "garden") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(castle_A_area_ID, atx + aty * 64, "garden") end end
table.insert(castle_A_area_ID, 2 + ( 45 * 64 ), "garden")
-----
for atx = 2, 2 do for aty = 41, 44 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(castle_A_area_ID, atx + aty * 64, "gate") end end
table.insert(castle_A_area_ID, 15 + ( 38 * 64 ), "gate")
table.insert(castle_A_area_ID, 16 + ( 38 * 64 ), "gate")
-----
table.insert(castle_A_area_ID, 8 + ( 42 * 64 ), "cave")
table.insert(castle_A_area_ID, 16 + ( 41 * 64 ), "cave")
table.insert(castle_A_area_ID, 17 + ( 41 * 64 ), "cave")
for atx = 9, 13 do for aty = 42, 43 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
table.insert(castle_A_area_ID, 32 + ( 37 * 64 ), "cave")
for atx = 33, 40 do for aty = 37, 38 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
table.insert(castle_A_area_ID, 39 + ( 40 * 64 ), "cave")
for atx = 39, 55 do for aty = 41, 41 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
table.insert(castle_A_area_ID, 45 + ( 33 * 64 ), "cave")
table.insert(castle_A_area_ID, 39 + ( 26 * 64 ), "cave")
table.insert(castle_A_area_ID, 40 + ( 26 * 64 ), "cave")
for atx = 35, 37 do for aty = 27, 27 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
table.insert(castle_A_area_ID, 37 + ( 28 * 64 ), "cave")
for atx = 37, 37 do for aty = 32, 34 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
table.insert(castle_A_area_ID, 36 + ( 34 * 64 ), "cave")
for atx = 40, 42 do for aty = 29, 29 do table.insert(castle_A_area_ID, atx + aty * 64, "cave") end end
table.insert(castle_A_area_ID, 40 + ( 27 * 64 ), "cave")
--
table.insert(castle_A_area_ID, 32 + ( 34 * 64 ), "prison")
for atx = 33, 35 do for aty = 34, 36 do table.insert(castle_A_area_ID, atx + aty * 64, "prison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(castle_A_area_ID, atx + aty * 64, "prison") end end
--
for atx = 47, 59 do for aty = 25, 25 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
table.insert(castle_A_area_ID, 41 + ( 26 * 64 ), "marble")
table.insert(castle_A_area_ID, 44 + ( 26 * 64 ), "marble")
table.insert(castle_A_area_ID, 39 + ( 24 * 64 ), "marble")
for atx = 37, 38 do for aty = 24, 26 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
table.insert(castle_A_area_ID, 34 + ( 25 * 64 ), "marble")
table.insert(castle_A_area_ID, 32 + ( 24 * 64 ), "marble")
for atx = 30, 34 do for aty = 23, 23 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
table.insert(castle_A_area_ID, 27 + ( 27 * 64 ), "marble")
table.insert(castle_A_area_ID, 28 + ( 27 * 64 ), "marble")
table.insert(castle_A_area_ID, 27 + ( 28 * 64 ), "marble")
for atx = 25, 26 do for aty = 28, 32 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
table.insert(castle_A_area_ID, 27 + ( 32 * 64 ), "marble")
table.insert(castle_A_area_ID, 27 + ( 33 * 64 ), "marble")
table.insert(castle_A_area_ID, 27 + ( 34 * 64 ), "marble")
for atx = 21, 26 do for aty = 34, 36 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end
table.insert(castle_A_area_ID, 31 + ( 27 * 64 ), "marble")
--central room
table.insert(castle_A_area_ID, 32 + ( 28 * 64 ), "marble")--central room
table.insert(castle_A_area_ID, 32 + ( 29 * 64 ), "marble")--central room
for atx = 31, 33 do for aty = 30, 32 do table.insert(castle_A_area_ID, atx + aty * 64, "marble") end end--central room
---
for atx = 60, 61 do for aty = 13, 29 do table.insert(castle_A_area_ID, atx + aty * 64, "wall") end end
table.insert(castle_A_area_ID, 59 + ( 17 * 64 ), "wall")
table.insert(castle_A_area_ID, 59 + ( 26 * 64 ), "wall")
table.insert(castle_A_area_ID, 59 + ( 27 * 64 ), "wall")
for atx = 56, 59 do for aty = 23, 24 do table.insert(castle_A_area_ID, atx + aty * 64, "wall") end end
table.insert(castle_A_area_ID, 55 + ( 24 * 64 ), "wall")
---
for atx = 52, 59 do for aty = 18, 21 do table.insert(castle_A_area_ID, atx + aty * 64, "lib") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(castle_A_area_ID, atx + aty * 64, "lib") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(castle_A_area_ID, atx + aty * 64, "lib") end end
table.insert(castle_A_area_ID, 44 + ( 20 * 64 ), "lib")
table.insert(castle_A_area_ID, 44 + ( 21 * 64 ), "lib")
---
table.insert(castle_A_area_ID, 59 + ( 15 * 64 ), "clock")
table.insert(castle_A_area_ID, 59 + ( 14 * 64 ), "clock")
table.insert(castle_A_area_ID, 59 + ( 11 * 64 ), "clock")
for atx = 53, 58 do for aty = 11, 15 do table.insert(castle_A_area_ID, atx + aty * 64, "clock") end end
table.insert(castle_A_area_ID, 49 + ( 14 * 64 ), "clock")
table.insert(castle_A_area_ID, 51 + ( 8 * 64 ), "clock")
for atx = 50, 52 do for aty = 9, 14 do table.insert(castle_A_area_ID, atx + aty * 64, "clock") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(castle_A_area_ID, atx + aty * 64, "clock") end end
table.insert(castle_A_area_ID, 40 + ( 10 * 64 ), "clock")
table.insert(castle_A_area_ID, 41 + ( 10 * 64 ), "clock")
---
for atx = 38, 39 do for aty = 5, 12 do table.insert(castle_A_area_ID, atx + aty * 64, "keep") end end
table.insert(castle_A_area_ID, 40 + ( 12 * 64 ), "keep")
for atx = 31, 37 do for aty = 8, 12 do table.insert(castle_A_area_ID, atx + aty * 64, "keep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(castle_A_area_ID, atx + aty * 64, "keep") end end
table.insert(castle_A_area_ID, 33 + ( 6 * 64 ), "keep")
table.insert(castle_A_area_ID, 31 + ( 7 * 64 ), "keep")
table.insert(castle_A_area_ID, 30 + ( 12 * 64 ), "keep")
---
for atx = 27, 28 do for aty = 10, 13 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
table.insert(castle_A_area_ID, 16 + ( 21 * 64 ), "chapel")
table.insert(castle_A_area_ID, 16 + ( 19 * 64 ), "chapel")
for atx = 8, 13 do for aty = 21, 22 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
table.insert(castle_A_area_ID, 10 + ( 20 * 64 ), "chapel")
table.insert(castle_A_area_ID, 29 + ( 13 * 64 ), "chapel")
for atx = 8, 9 do for aty = 21, 23 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
table.insert(castle_A_area_ID, 3 + ( 26 * 64 ), "chapel")
for atx = 2, 4 do for aty = 27, 28 do table.insert(castle_A_area_ID, atx + aty * 64, "chapel") end end
---
for atx = 14, 25 do for aty = 22, 24 do table.insert(castle_A_area_ID, atx + aty * 64, "colos") end end
table.insert(castle_A_area_ID, 26 + ( 24 * 64 ), "colos")
table.insert(castle_A_area_ID, 13 + ( 24 * 64 ), "colos")
for atx = 17, 22 do for aty = 21, 21 do table.insert(castle_A_area_ID, atx + aty * 64, "colos") end end
table.insert(castle_A_area_ID, 19 + ( 20 * 64 ), "colos")
table.insert(castle_A_area_ID, 20 + ( 20 * 64 ), "colos")
---
for atx = 18, 30 do for aty = 19, 19 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
table.insert(castle_A_area_ID, 34 + ( 21 * 64 ), "olrox")
table.insert(castle_A_area_ID, 33 + ( 21 * 64 ), "olrox")
for atx = 27, 32 do for aty = 21, 22 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
table.insert(castle_A_area_ID, 28 + ( 23 * 64 ), "olrox")
for atx = 29, 29 do for aty = 23, 25 do table.insert(castle_A_area_ID, atx + aty * 64, "olrox") end end
table.insert(castle_A_area_ID, 37 + ( 21 * 64 ), "olrox")
table.insert(castle_A_area_ID, 31 + ( 17 * 64 ), "olrox")
---
for atx = 19, 20 do for aty = 25, 27 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
table.insert(castle_A_area_ID, 16 + ( 28 * 64 ), "lab")
table.insert(castle_A_area_ID, 16 + ( 31 * 64 ), "lab")
for atx = 17, 17 do for aty = 28, 34 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
table.insert(castle_A_area_ID, 8 + ( 29 * 64 ), "lab")
table.insert(castle_A_area_ID, 10 + ( 29 * 64 ), "lab")
table.insert(castle_A_area_ID, 11 + ( 29 * 64 ), "lab")
for atx = 8, 11 do for aty = 30, 31 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
table.insert(castle_A_area_ID, 11 + ( 32 * 64 ), "lab")
table.insert(castle_A_area_ID, 12 + ( 32 * 64 ), "lab")
table.insert(castle_A_area_ID, 11 + ( 34 * 64 ), "lab")
table.insert(castle_A_area_ID, 12 + ( 36 * 64 ), "lab")
for atx = 12, 15 do for aty = 33, 35 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
table.insert(castle_A_area_ID, 16 + ( 34 * 64 ), "lab")
for atx = 14, 16 do for aty = 36, 36 do table.insert(castle_A_area_ID, atx + aty * 64, "lab") end end
table.insert(castle_A_area_ID, 16 + ( 35 * 64 ), "lab")
table.insert(castle_A_area_ID, 7 + ( 30 * 64 ), "lab")
table.insert(castle_A_area_ID, 29 + ( 27 * 64 ), "lab")
--cdroom arent show at all on the png
table.insert(castle_A_area_ID, 3 + ( 44 * 64 ), "cd")
table.insert(castle_A_area_ID, 3 + ( 45 * 64 ), "cd")
table.insert(castle_A_area_ID, 15 + ( 41 * 64 ), "cd")
table.insert(castle_A_area_ID, 20 + ( 36 * 64 ), "cd")
table.insert(castle_A_area_ID, 17 + ( 36 * 64 ), "cd")
table.insert(castle_A_area_ID, 16 + ( 38 * 64 ), "cd")
table.insert(castle_A_area_ID, 28 + ( 38 * 64 ), "cd")
table.insert(castle_A_area_ID, 36 + ( 34 * 64 ), "cd")
table.insert(castle_A_area_ID, 40 + ( 26 * 64 ), "cd")
table.insert(castle_A_area_ID, 27 + ( 36 * 64 ), "cd")
table.insert(castle_A_area_ID, 34 + ( 44 * 64 ), "cd")
table.insert(castle_A_area_ID, 32 + ( 49 * 64 ), "cd")
table.insert(castle_A_area_ID, 60 + ( 14 * 64 ), "cd")
table.insert(castle_A_area_ID, 59 + ( 21 * 64 ), "cd")
table.insert(castle_A_area_ID, 60 + ( 17 * 64 ), "cd")
table.insert(castle_A_area_ID, 60 + ( 25 * 64 ), "cd")
table.insert(castle_A_area_ID, 39 + ( 10 * 64 ), "cd")
table.insert(castle_A_area_ID, 39 + ( 12 * 64 ), "cd")
table.insert(castle_A_area_ID, 29 + ( 12 * 64 ), "cd")
table.insert(castle_A_area_ID, 36 + ( 21 * 64 ), "cd")
table.insert(castle_A_area_ID, 13 + ( 22 * 64 ), "cd")
table.insert(castle_A_area_ID, 26 + ( 22 * 64 ), "cd")
table.insert(castle_A_area_ID, 30 + ( 25 * 64 ), "cd")
table.insert(castle_A_area_ID, 4 + ( 28 * 64 ), "cd")
table.insert(castle_A_area_ID, 21 + ( 26 * 64 ), "cd")
table.insert(castle_A_area_ID, 13 + ( 22 * 64 ), "cd")
table.insert(castle_A_area_ID, 17 + ( 19 * 64 ), "cd")

castle_A_area_text ={}
for atx = 16, 26 do for aty = 50, 51 do table.insert(castle_A_area_text, atx + aty * 64, "Catacombs") end end
for atx = 27, 37 do for aty = 51, 51 do table.insert(castle_A_area_text, atx + aty * 64, "Catacombs") end end
for atx = 28, 36 do for aty = 50, 51 do table.insert(castle_A_area_text, atx + aty * 64, "Catacombs") end end
for atx = 38, 48 do for aty = 50, 51 do table.insert(castle_A_area_text, atx + aty * 64, "Catacombs") end end
for atx = 31, 31 do for aty = 49, 50 do table.insert(castle_A_area_text, atx + aty * 64, "Catacombs") end end
---
for atx = 33, 33 do for aty = 48, 49 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
for atx = 32, 32 do for aty = 40, 48 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
table.insert(castle_A_area_text, 31 + ( 48 * 64 ), "Abandoned Mine")
for atx = 29, 35 do for aty = 44, 44 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 37 do for aty = 40, 40 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
for atx = 36, 37 do for aty = 40, 41 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 28 do for aty = 40, 41 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
for atx = 27, 27 do for aty = 38, 41 do table.insert(castle_A_area_text, atx + aty * 64, "Abandoned Mine") end end
---
for atx = 14, 21 do for aty = 44, 44 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Gardens") end end
for atx = 14, 21 do for aty = 44, 44 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Gardens") end end
for atx = 3, 13 do for aty = 44, 45 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Gardens") end end
table.insert(castle_A_area_text, 2 + ( 45 * 64 ), "Underground Gardens")
---
for atx = 2, 2 do for aty = 41, 44 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 2, 3 do for aty = 38, 40 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 4, 21 do for aty = 40, 40 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 5, 6 do for aty = 38, 39 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 7, 11 do for aty = 39, 39 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 10, 15 do for aty = 40, 41 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 19, 21 do for aty = 38, 40 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
for atx = 17, 20 do for aty = 36, 38 do table.insert(castle_A_area_text, atx + aty * 64, "Entrance") end end
table.insert(castle_A_area_text, 15 + ( 38 * 64 ), "Entrance")
table.insert(castle_A_area_text, 16 + ( 38 * 64 ), "Entrance")
---
table.insert(castle_A_area_text, 8 + ( 42 * 64 ), "Underground Caverns")
table.insert(castle_A_area_text, 16 + ( 41 * 64 ), "Underground Caverns")
table.insert(castle_A_area_text, 17 + ( 41 * 64 ), "Underground Caverns")
for atx = 9, 13 do for aty = 42, 43 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 14, 25 do for aty = 42, 42 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 22, 26 do for aty = 37, 37 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 27, 31 do for aty = 37, 37 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 28, 31 do for aty = 38, 38 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 23, 24 do for aty = 38, 41 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
table.insert(castle_A_area_text, 32 + ( 37 * 64 ), "Underground Caverns")
for atx = 33, 40 do for aty = 37, 38 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 39, 45 do for aty = 38, 39 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
table.insert(castle_A_area_text, 39 + ( 40 * 64 ), "Underground Caverns")
for atx = 39, 55 do for aty = 41, 41 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 40, 42 do for aty = 41, 42 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 46, 47 do for aty = 41, 42 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 49, 52 do for aty = 41, 42 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 38, 39 do for aty = 27, 36 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 39 do for aty = 29, 29 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 43 do for aty = 29, 32 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
for atx = 43, 44 do for aty = 32, 33 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
table.insert(castle_A_area_text, 45 + ( 33 * 64 ), "Underground Caverns")
table.insert(castle_A_area_text, 39 + ( 26 * 64 ), "Underground Caverns")
table.insert(castle_A_area_text, 40 + ( 26 * 64 ), "Underground Caverns")
for atx = 35, 37 do for aty = 27, 27 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
table.insert(castle_A_area_text, 37 + ( 28 * 64 ), "Underground Caverns")
for atx = 37, 37 do for aty = 32, 34 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
table.insert(castle_A_area_text, 36 + ( 34 * 64 ), "Underground Caverns")
for atx = 40, 42 do for aty = 29, 29 do table.insert(castle_A_area_text, atx + aty * 64, "Underground Caverns") end end
table.insert(castle_A_area_text, 40 + ( 27 * 64 ), "Underground Caverns")
--
table.insert(castle_A_area_text, 32 + ( 34 * 64 ), "Cursed Prison")
for atx = 33, 35 do for aty = 34, 36 do table.insert(castle_A_area_text, atx + aty * 64, "Cursed Prison") end end
for atx = 27, 32 do for aty = 36, 36 do table.insert(castle_A_area_text, atx + aty * 64, "Cursed Prison") end end
--
for atx = 47, 59 do for aty = 25, 25 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
for atx = 40, 46 do for aty = 24, 25 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
table.insert(castle_A_area_text, 41 + ( 26 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 44 + ( 26 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 39 + ( 24 * 64 ), "Marble Gallery")
for atx = 37, 38 do for aty = 24, 26 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
for atx = 22, 36 do for aty = 26, 26 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
for atx = 31, 33 do for aty = 25, 27 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
table.insert(castle_A_area_text, 34 + ( 25 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 32 + ( 24 * 64 ), "Marble Gallery")
for atx = 30, 34 do for aty = 23, 23 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
table.insert(castle_A_area_text, 27 + ( 27 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 28 + ( 27 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 27 + ( 28 * 64 ), "Marble Gallery")
for atx = 25, 26 do for aty = 28, 32 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
table.insert(castle_A_area_text, 27 + ( 32 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 27 + ( 33 * 64 ), "Marble Gallery")
table.insert(castle_A_area_text, 27 + ( 34 * 64 ), "Marble Gallery")
for atx = 21, 26 do for aty = 34, 36 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end
table.insert(castle_A_area_text, 31 + ( 27 * 64 ), "Marble Gallery")
---central room
table.insert(castle_A_area_text, 32 + ( 28 * 64 ), "Marble Gallery")---central room
table.insert(castle_A_area_text, 32 + ( 29 * 64 ), "Marble Gallery")---central room
for atx = 31, 33 do for aty = 30, 32 do table.insert(castle_A_area_text, atx + aty * 64, "Marble Gallery") end end---central room
---
for atx = 60, 61 do for aty = 13, 29 do table.insert(castle_A_area_text, atx + aty * 64, "Outer Wall") end end
table.insert(castle_A_area_text, 59 + ( 17 * 64 ), "Outer Wall")
table.insert(castle_A_area_text, 59 + ( 26 * 64 ), "Outer Wall")
table.insert(castle_A_area_text, 59 + ( 27 * 64 ), "Outer Wall")
for atx = 56, 59 do for aty = 23, 24 do table.insert(castle_A_area_text, atx + aty * 64, "Outer Wall") end end
table.insert(castle_A_area_text, 55 + ( 24 * 64 ), "Outer Wall")
---
for atx = 52, 59 do for aty = 18, 21 do table.insert(castle_A_area_text, atx + aty * 64, "Long Library") end end
for atx = 45, 50 do for aty = 18, 21 do table.insert(castle_A_area_text, atx + aty * 64, "Long Library") end end
for atx = 51, 51 do for aty = 19, 21 do table.insert(castle_A_area_text, atx + aty * 64, "Long Library") end end
table.insert(castle_A_area_text, 44 + ( 20 * 64 ), "Long Library")
table.insert(castle_A_area_text, 44 + ( 21 * 64 ), "Long Library")
---
table.insert(castle_A_area_text, 59 + ( 15 * 64 ), "Clock Tower")
table.insert(castle_A_area_text, 59 + ( 14 * 64 ), "Clock Tower")
table.insert(castle_A_area_text, 59 + ( 11 * 64 ), "Clock Tower")
for atx = 53, 58 do for aty = 11, 15 do table.insert(castle_A_area_text, atx + aty * 64, "Clock Tower") end end
table.insert(castle_A_area_text, 49 + ( 14 * 64 ), "Clock Tower")
table.insert(castle_A_area_text, 51 + ( 8 * 64 ), "Clock Tower")
for atx = 50, 52 do for aty = 9, 14 do table.insert(castle_A_area_text, atx + aty * 64, "Clock Tower") end end
for atx = 42, 49 do for aty = 10, 11 do table.insert(castle_A_area_text, atx + aty * 64, "Clock Tower") end end
table.insert(castle_A_area_text, 40 + ( 10 * 64 ), "Clock Tower")
table.insert(castle_A_area_text, 41 + ( 10 * 64 ), "Clock Tower")
---
for atx = 38, 39 do for aty = 5, 12 do table.insert(castle_A_area_text, atx + aty * 64, "Castle Keep") end end
table.insert(castle_A_area_text, 40 + ( 12 * 64 ), "Castle Keep")
for atx = 31, 37 do for aty = 8, 12 do table.insert(castle_A_area_text, atx + aty * 64, "Castle Keep") end end
for atx = 34, 37 do for aty = 6, 8 do table.insert(castle_A_area_text, atx + aty * 64, "Castle Keep") end end
table.insert(castle_A_area_text, 33 + ( 6 * 64 ), "Castle Keep")
table.insert(castle_A_area_text, 31 + ( 7 * 64 ), "Castle Keep")
table.insert(castle_A_area_text, 30 + ( 12 * 64 ), "Castle Keep")
---
for atx = 27, 28 do for aty = 10, 13 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 21, 26 do for aty = 13, 13 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 19, 20 do for aty = 11, 14 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 16, 18 do for aty = 14, 14 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 8, 13 do for aty = 15, 15 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 14, 15 do for aty = 12, 21 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
table.insert(castle_A_area_text, 16 + ( 21 * 64 ), "Royal Chapel")
table.insert(castle_A_area_text, 16 + ( 19 * 64 ), "Royal Chapel")
for atx = 8, 13 do for aty = 21, 22 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
table.insert(castle_A_area_text, 10 + ( 20 * 64 ), "Royal Chapel")
for atx = 8, 9 do for aty = 21, 23 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 7, 7 do for aty = 22, 24 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 6, 6 do for aty = 23, 25 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 5, 5 do for aty = 24, 26 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
for atx = 4, 4 do for aty = 25, 27 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
table.insert(castle_A_area_text, 3 + ( 26 * 64 ), "Royal Chapel")
for atx = 2, 4 do for aty = 27, 28 do table.insert(castle_A_area_text, atx + aty * 64, "Royal Chapel") end end
table.insert(castle_A_area_text, 29 + ( 13 * 64 ), "Royal Chapel")
---
for atx = 14, 25 do for aty = 22, 24 do table.insert(castle_A_area_text, atx + aty * 64, "Colosseum") end end
table.insert(castle_A_area_text, 26 + ( 24 * 64 ), "Colosseum")
table.insert(castle_A_area_text, 13 + ( 24 * 64 ), "Colosseum")
for atx = 17, 22 do for aty = 21, 21 do table.insert(castle_A_area_text, atx + aty * 64, "Colosseum") end end
table.insert(castle_A_area_text, 19 + ( 20 * 64 ), "Colosseum")
table.insert(castle_A_area_text, 20 + ( 20 * 64 ), "Colosseum")
---
for atx = 18, 30 do for aty = 19, 19 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
for atx = 16, 30 do for aty = 16, 16 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
for atx = 19, 20 do for aty = 17, 18 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
for atx = 25, 30 do for aty = 17, 18 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
for atx = 31, 33 do for aty = 18, 18 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
for atx = 30, 35 do for aty = 15, 15 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
for atx = 35, 35 do for aty = 15, 21 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
table.insert(castle_A_area_text, 34 + ( 21 * 64 ), "Olrox Quarter's")
table.insert(castle_A_area_text, 33 + ( 21 * 64 ), "Olrox Quarter's")
for atx = 27, 32 do for aty = 21, 22 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
table.insert(castle_A_area_text, 28 + ( 23 * 64 ), "Olrox Quarter's")
for atx = 29, 29 do for aty = 23, 25 do table.insert(castle_A_area_text, atx + aty * 64, "Olrox Quarter's") end end
table.insert(castle_A_area_text, 37 + ( 21 * 64 ), "Olrox Quarter's")
table.insert(castle_A_area_text, 31 + ( 17 * 64 ), "Olrox Quarter's")
---
for atx = 19, 20 do for aty = 25, 27 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 16, 18 do for aty = 26, 26 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 14, 15 do for aty = 26, 28 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(castle_A_area_text, 16 + ( 28 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 16 + ( 31 * 64 ), "Alchemy Laboratory")
for atx = 17, 17 do for aty = 28, 34 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 8, 13 do for aty = 27, 28 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
for atx = 5, 7 do for aty = 28, 28 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(castle_A_area_text, 8 + ( 29 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 10 + ( 29 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 11 + ( 29 * 64 ), "Alchemy Laboratory")
for atx = 8, 11 do for aty = 30, 31 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(castle_A_area_text, 11 + ( 32 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 12 + ( 32 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 11 + ( 34 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 12 + ( 36 * 64 ), "Alchemy Laboratory")
for atx = 12, 15 do for aty = 33, 35 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(castle_A_area_text, 16 + ( 34 * 64 ), "Alchemy Laboratory")
for atx = 14, 16 do for aty = 36, 36 do table.insert(castle_A_area_text, atx + aty * 64, "Alchemy Laboratory") end end
table.insert(castle_A_area_text, 16 + ( 35 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 7 + ( 30 * 64 ), "Alchemy Laboratory")
table.insert(castle_A_area_text, 29 + ( 27 * 64 ), "Alchemy Laboratory")
--cdroom arent show at all on the png
table.insert(castle_A_area_text, 3 + ( 44 * 64 ), "CD Room")
table.insert(castle_A_area_text, 3 + ( 45 * 64 ), "CD Room")
table.insert(castle_A_area_text, 15 + ( 41 * 64 ), "CD Room")
table.insert(castle_A_area_text, 20 + ( 36 * 64 ), "CD Room")
table.insert(castle_A_area_text, 17 + ( 36 * 64 ), "CD Room")
table.insert(castle_A_area_text, 16 + ( 38 * 64 ), "CD Room")
table.insert(castle_A_area_text, 28 + ( 38 * 64 ), "CD Room")
table.insert(castle_A_area_text, 36 + ( 34 * 64 ), "CD Room")
table.insert(castle_A_area_text, 40 + ( 26 * 64 ), "CD Room")
table.insert(castle_A_area_text, 27 + ( 36 * 64 ), "CD Room")
table.insert(castle_A_area_text, 34 + ( 44 * 64 ), "CD Room")
table.insert(castle_A_area_text, 32 + ( 49 * 64 ), "CD Room")
table.insert(castle_A_area_text, 60 + ( 14 * 64 ), "CD Room")
table.insert(castle_A_area_text, 59 + ( 21 * 64 ), "CD Room")
table.insert(castle_A_area_text, 60 + ( 17 * 64 ), "CD Room")
table.insert(castle_A_area_text, 60 + ( 25 * 64 ), "CD Room")
table.insert(castle_A_area_text, 39 + ( 10 * 64 ), "CD Room")
table.insert(castle_A_area_text, 39 + ( 12 * 64 ), "CD Room")
table.insert(castle_A_area_text, 29 + ( 12 * 64 ), "CD Room")
table.insert(castle_A_area_text, 36 + ( 21 * 64 ), "CD Room")
table.insert(castle_A_area_text, 13 + ( 22 * 64 ), "CD Room")
table.insert(castle_A_area_text, 26 + ( 22 * 64 ), "CD Room")
table.insert(castle_A_area_text, 30 + ( 25 * 64 ), "CD Room")
table.insert(castle_A_area_text, 4 + ( 28 * 64 ), "CD Room")
table.insert(castle_A_area_text, 21 + ( 26 * 64 ), "CD Room")
table.insert(castle_A_area_text, 13 + ( 22 * 64 ), "CD Room")
table.insert(castle_A_area_text, 17 + ( 19 * 64 ), "CD Room")


--special rooms, on the png the saveroom are red, teleporters are orange,
castle_A_special = {}
--teleport
table.insert(castle_A_special, 2 + ( 45 * 64 ), "Bear Teleporter")
table.insert(castle_A_special, 15 + ( 38 * 64 ), "Horse Teleporter")
table.insert(castle_A_special, 35 + ( 44 * 64 ), "Viper Teleporter")
table.insert(castle_A_special, 59 + ( 17 * 64 ), "Crab Teleporter")
table.insert(castle_A_special, 40 + ( 12 * 64 ), "Lion Teleporter")
table.insert(castle_A_special, 37 + ( 21 * 64 ), "Ram Teleporter")
--save rooms
table.insert(castle_A_special, 17 + ( 37 * 64 ), "Save Room")
table.insert(castle_A_special, 13 + ( 45 * 64 ), "Save Room")
table.insert(castle_A_special, 5 + ( 39 * 64 ), "Save Room")
table.insert(castle_A_special, 40 + ( 37 * 64 ), "Save Room")
table.insert(castle_A_special, 40 + ( 27 * 64 ), "Save Room")
table.insert(castle_A_special, 43 + ( 33 * 64 ), "Save Room")
table.insert(castle_A_special, 32 + ( 34 * 64 ), "Save Room")
table.insert(castle_A_special, 28 + ( 41 * 64 ), "Save Room")
table.insert(castle_A_special, 30 + ( 50 * 64 ), "Save Room")
table.insert(castle_A_special, 22 + ( 50 * 64 ), "Save Room")
table.insert(castle_A_special, 55 + ( 24 * 64 ), "Save Room")
table.insert(castle_A_special, 60 + ( 13 * 64 ), "Save Room")
table.insert(castle_A_special, 51 + ( 19 * 64 ), "Save Room")
table.insert(castle_A_special, 39 + ( 9 * 64 ), "Save Room")
table.insert(castle_A_special, 29 + ( 13 * 64 ), "Save Room")
table.insert(castle_A_special, 31 + ( 17 * 64 ), "Save Room")
table.insert(castle_A_special, 31 + ( 27 * 64 ), "Save Room")
table.insert(castle_A_special, 29 + ( 27 * 64 ), "Save Room")
table.insert(castle_A_special, 25 + ( 23 * 64 ), "Save Room")
table.insert(castle_A_special, 14 + ( 23 * 64 ), "Save Room")
table.insert(castle_A_special, 2 + ( 28 * 64 ), "Save Room")
table.insert(castle_A_special, 7 + ( 30 * 64 ), "Save Room")
table.insert(castle_A_special, 15 + ( 27 * 64 ), "Save Room")
table.insert(castle_A_special, 16 + ( 35 * 64 ), "Save Room")
--
table.insert(castle_A_special, 49 + ( 20 * 64 ), "Librarian")


--boss rooms ... in byte order huh dont think its important but anyway
castle_A_boss ={}
table.insert(castle_A_boss, 0 + ( 0 * 64 ), "Prologue")--safeguard? prologue is there but anyway at 0 I should trow it away
table.insert(castle_A_boss, 19 + ( 16 * 64 ), "Olrox")--access
table.insert(castle_A_boss, 20 + ( 16 * 64 ), "Olrox")--access
table.insert(castle_A_boss, 19 + ( 17 * 64 ), "Olrox")
table.insert(castle_A_boss, 20 + ( 17 * 64 ), "Olrox")
table.insert(castle_A_boss, 57 + ( 23 * 64 ), "Doppleganger lvl10")
table.insert(castle_A_boss, 58 + ( 23 * 64 ), "Doppleganger lvl10")
table.insert(castle_A_boss, 18 + ( 50 * 64 ), "Granfaloon")
table.insert(castle_A_boss, 19 + ( 50 * 64 ), "Granfaloon")--access
table.insert(castle_A_boss, 18 + ( 51 * 64 ), "Granfaloon")--access
table.insert(castle_A_boss, 19 + ( 51 * 64 ), "Granfaloon")
table.insert(castle_A_boss, 19 + ( 22 * 64 ), "Minotaur & Werewolf")
table.insert(castle_A_boss, 20 + ( 22 * 64 ), "Minotaur & Werewolf")
table.insert(castle_A_boss, 40 + ( 39 * 64 ), "Scylla")--access
table.insert(castle_A_boss, 41 + ( 38 * 64 ), "Scylla")--access
table.insert(castle_A_boss, 9 + ( 27 * 64 ), "Slogra & Gaibon")--access
table.insert(castle_A_boss, 10 + ( 27 * 64 ), "Slogra & Gaibon")
table.insert(castle_A_boss, 11 + ( 27 * 64 ), "Slogra & Gaibon")
table.insert(castle_A_boss, 12 + ( 27 * 64 ), "Slogra & Gaibon")--access
table.insert(castle_A_boss, 9 + ( 28 * 64 ), "Slogra & Gaibon")
table.insert(castle_A_boss, 10 + ( 28 * 64 ), "Slogra & Gaibon")
table.insert(castle_A_boss, 11 + ( 28 * 64 ), "Slogra & Gaibon")
table.insert(castle_A_boss, 12 + ( 28 * 64 ), "Slogra & Gaibon")--access
table.insert(castle_A_boss, 23 + ( 13 * 64 ), "Hippogryph")
table.insert(castle_A_boss, 24 + ( 13 * 64 ), "Hippogryph")
table.insert(castle_A_boss, 45 + ( 33 * 64 ), "Sucubus")
table.insert(castle_A_boss, 40 + ( 10 * 64 ), "Karasuman")
table.insert(castle_A_boss, 30 + ( 40 * 64 ), "Cerberus")
table.insert(castle_A_boss, 31 + ( 40 * 64 ), "Cerberus")
table.insert(castle_A_boss, 33 + ( 8 * 64 ), "Richter")
table.insert(castle_A_boss, 45 + ( 20 * 64 ), "Lesser Demon")
table.insert(castle_A_boss, 46 + ( 20 * 64 ), "Lesser Demon")
table.insert(castle_A_boss, 21 + ( 44 * 64 ), "Skeleton Leader")
table.insert(castle_A_boss, 20 + ( 40 * 64 ), "Meet Death")
table.insert(castle_A_boss, 32 + ( 31 * 64 ), "Maria")
table.insert(castle_A_special, 49 + ( 20 * 64 ), "Meet Librarian")
table.insert(castle_A_boss, 32 + ( 26 * 64 ), "Meet Maria")


--we have 2 squares for each boss, sometime u have 2 entry point, so you have 2 pair of coordinates
--for single room boss its 0 in second table, for the boss in second castle its 0 too
--byte order of time attack, with sayd boss coordinate, this is the first square we will draw
first_castle_boss_dataA = {
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
first_castle_boss_dataB = {
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

--relic rooms ... in byte order huh dont think its important but anyway
castle_A_relic ={}
table.insert(castle_A_relic, 59 + ( 11 * 64 ), "Fire of Bat")
table.insert(castle_A_relic, 48 + ( 21 * 64 ), "Soul of Bat")
table.insert(castle_A_relic, 16 + ( 16 * 64 ), "Echo of Bat")
table.insert(castle_A_relic, 3 + ( 38 * 64 ), "Power of Wolf")
table.insert(castle_A_relic, 61 + ( 18 * 64 ), "Soul of Wolf")
table.insert(castle_A_relic, 21 + ( 22 * 64 ), "Form of Mist")
table.insert(castle_A_relic, 15 + ( 33 * 64 ), "Skill of Wolf")
table.insert(castle_A_relic, 31 + ( 9 * 64 ), "Power of Mist")
table.insert(castle_A_relic, 25 + ( 31 * 64 ), "Soul Orb")
table.insert(castle_A_relic, 18 + ( 36 * 64 ), "Cube of Zoe")
table.insert(castle_A_relic, 31 + ( 11 * 64 ), "Leap Stone")
table.insert(castle_A_relic, 34 + ( 23 * 64 ), "Gravity Boots")
table.insert(castle_A_relic, 59 + ( 18 * 64 ), "Fairy's Scroll")
table.insert(castle_A_relic, 55 + ( 41 * 64 ), "Holy Symbol")
table.insert(castle_A_relic, 8 + ( 42 * 64 ), "Merman Statue")
table.insert(castle_A_relic, 49 + ( 20 * 64 ), "Jewel of Open") --overlap with boss event "meet librarian" and librarian square...
table.insert(castle_A_relic, 39 + ( 7 * 64 ), "Ghost Card")
table.insert(castle_A_relic, 13 + ( 27 * 64 ), "Bat Card")
table.insert(castle_A_relic, 29 + ( 44 * 64 ), "Demon Card")
table.insert(castle_A_relic, 52 + ( 18 * 64 ), "Fairy Card")
table.insert(castle_A_relic, 20 + ( 18 * 64 ), "Sprite Card")
table.insert(castle_A_relic, 33 + ( 18 * 64 ), "Sword Card")
table.insert(castle_A_relic, 19 + ( 20 * 64 ), "Nosedevil Card")
table.insert(castle_A_relic, 31 + ( 8 * 64 ), "Godspeed Boots")


first_castle_relic_data = {
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



castle_A_lifeup ={}
table.insert(castle_A_lifeup, 3 + ( 38 * 64 ), "Life Max Up")

castle_A_heartup ={}
table.insert(castle_A_heartup, 3 + ( 38 * 64 ), "Life Max Up")

castle_A_pickup ={}
table.insert(castle_A_pickup, 3 + ( 38 * 64 ), "Life Max Up")

--[[

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






byte1:entranceA
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = life max up 3,38
byte2:entranceA
a = heart max up, 17,38
b = life max up, 14,41
c = holy armor, 5,38
d = shield potion, 19,36
e = ????
f = life apple, 10,41
g = life max up, 20,37
h = heart max up, 19,39
byte3:entranceB
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = jewel sword, 10,41
h = life max up, 3,38
byte4:entranceB
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
a = ????
b = ????
c = ????
d = bronze armor
e = ????
f = ????
g = ????
h = ????
byte10:outerwall
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
byte12:????
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte13:????
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
f = resist orange 36,6
g = resist dark 35,6
h = resist grey 35,6
byte16:keep
a = frankfurt 34,6
b = turkey 33,6
c = poat roast 33,6
d = sirloin 33,6
e = tyrfing 39,11
f = fire mail 31,9
g = turkey 31,11
h = orange jewel 31,11
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
byte19:caves
a = herald shield 22,37
b = life max up 25,42
c = life max up 30,38
d = uncurse 30,38
e = ????
f = crystal cloak 40,38
g = life max up 37,32
h = life max up 36,27
byte20:clock
a = ????
b = ????
c = ????
d = rainbow cloak 51,9
e = heart max up 52,9
f = life max up 50,9
g = ice armor 55,13
h = shaman shield 55,13
byte21:caves
a = knuckle 40,41
b = black jewel 45,41
c = pot roast 45,38
d = resist something 43,39
e = sword whatever 45,39
f = moonstone 44,33
g = ticket 44,33 down
h = ticket 44,32 left
byte22:caves
a = ticket 44,32 right
b = ticket 44,32 up
c = claymore 43,29
d = shiitake 38,36
e = bandanna 35,27
f = gold ring 45,33
g = green jewel 39,26
h = ????
byte23:caves
a = ????
b = ????
c = ????
d = nunchaku 38,38
e = shiitake 17,41
f = ????
g = toadstool 23,42
h = shiitake 23,40
byte24:caves
a = secret boot 24,39
b = pentagram 25,37
c = heart max up 29,37
d = life max up 29,37
e = shiitake 37,37
f = toadstool 38,37
g = high potion 52,42
h = life max up 42,42
byte25:olrox
a = ????
b = ????
c = ????
d = ????
e = iron ball 22,16
f = estoc 30,15
g = blue pill 35,17
h = resist orange 35,19
byte26:olrox
a = mana prism 35,20
b = frankfurt 32,22
c = jewel black 32,22
d = whatever sword 32,22
e = ????
f = ????
g = heart max up 21,19
h = ????
byte27:mines
a = shiitake 32,46
b = shiitake 32,47
c = combat knife 31,48
d = ring of ares 37,41
e = turkey 37,41
f = ????
g = karma coin 31,48
h = power of sire 36,41
byte28:colosseum
a = ????
b = barley tea 19,24
c = library card
d = knight shield 14,22
e = blood cape 20,24
f = ????
g = shield rpd 13,24
h = max heart up 26,24
byte29:catacombs
a = ballroom mask 26,50
b = heart max up 26,50
c = ????
d = library card 41,50
e = morgemil 17,50
f = walk armor 23,50
g = thunderbrand (maybe) 24,50
h = circlet 28,50
byte30:mines
a = ????
b = ????
c = ????
d = peanut 36,41
e = peanut 36,41
f = peanut 36,41
g = peanut 36,41
h = tea 36,41
byte31:catacombs
a = ????
b = ????
c = lyric card 20,51
d = ????
e = ????
f = ????
g = monster vial 3 33,51
h = spike breaker 41,51
byte32:catacombs
a = very small icon 48,51
b = karma coin 48,50
c = karma coin 48,50
d = buffalo star 48,50
e = buffalo star 48,50
f = heart max up 32,51
g = life max up 32,51
h = blood pendant 28,50
byte33:
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte34:
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte35:
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte36:prison
a = ????
b = ????
c = ????
d = ????
e = ????
f = smelly rice 35,36
g = astral dagger 33,35
h = karma coin 35,35
byte37:
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte38:
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????
byte39:
a = ????
b = ????
c = ????
d = ????
e = ????
f = ????
g = ????
h = ????









]]


