execute unless data block 43 31 -12 Items[{Slot: 5b}] run scoreboard players set #selected map 1
execute unless data block 43 31 -12 Items[{Slot: 6b}] run scoreboard players set #selected map 2
execute unless data block 43 31 -12 Items[{Slot: 7b}] run scoreboard players set #selected map 3
execute unless data block 43 31 -12 Items[{Slot: 8b}] run scoreboard players set #selected map 4
execute unless data block 43 31 -12 Items[{Slot: 14b}] run scoreboard players set #selected map 5
execute unless data block 43 31 -12 Items[{Slot: 15b}] run scoreboard players set #selected map 6
execute unless data block 43 31 -12 Items[{Slot: 16b}] run scoreboard players set #selected map 7
execute unless data block 43 31 -12 Items[{Slot: 17b}] run scoreboard players set #selected map 8
execute unless data block 43 31 -12 Items[{Slot:23b}] run scoreboard players set #selected map 9
execute unless data block 43 31 -12 Items[{Slot:24b}] run scoreboard players set #selected map 10
execute unless data block 43 31 -12 Items[{Slot:25b}] run scoreboard players set #selected map 11
execute unless data block 43 31 -12 Items[{Slot:26b}] run scoreboard players set #selected map 12
execute if score #selected map > flag.map.end_default const run scoreboard players set #selected map -2
