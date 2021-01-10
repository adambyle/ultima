function uub:settings/clear_map_icons

scoreboard players set selected n -1

execute unless data block 43 31 -12 {Items:[{id:"minecraft:magenta_glazed_terracotta"}]} run scoreboard players set selected n 0
execute unless data block 43 31 -12 {Items:[{id:"minecraft:filled_map"}]} run scoreboard players set selected n -2
execute unless data block 43 31 -12 {Items:[{id:"minecraft:player_head"}]} run scoreboard players set selected n -3

execute unless data block 43 31 -12 {Items:[{id:"minecraft:dark_oak_planks"}]} run scoreboard players set selected n 1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:spruce_sapling"}]} run scoreboard players set selected n 2
execute unless data block 43 31 -12 {Items:[{id:"minecraft:stone_bricks"}]} run scoreboard players set selected n 3
execute unless data block 43 31 -12 {Items:[{id:"minecraft:blackstone"}]} run scoreboard players set selected n 4
execute unless data block 43 31 -12 {Items:[{id:"minecraft:diamond_block"}]} run scoreboard players set selected n 5
execute unless data block 43 31 -12 {Items:[{id:"minecraft:dead_bush"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:emerald"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:bell"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:blue_ice"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:crimson_fungus"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:nether_star"}]} run scoreboard players set selected n -1
execute unless data block 43 31 -12 {Items:[{id:"minecraft:end_stone"}]} run scoreboard players set selected n -1

execute unless data block 43 31 -12 {Items:[{id:"minecraft:polished_andesite"}]} run scoreboard players set selected n 13
execute unless data block 43 31 -12 {Items:[{id:"minecraft:polished_blackstone_bricks"}]} run scoreboard players set selected n 14
execute unless data block 43 31 -12 {Items:[{id:"minecraft:snow"}]} run scoreboard players set selected n 15
execute unless data block 43 31 -12 {Items:[{id:"minecraft:trident"}]} run scoreboard players set selected n -1

execute if score selected n matches 0 if score randmap q matches 1.. run scoreboard players set selected n -1
execute if score selected n matches -2 if score randmap q matches -1 run scoreboard players set selected n -1
execute if score selected n matches -3 if score randmap q matches -2 run scoreboard players set selected n -1
execute if score selected n = map q if score randmap q matches 0 run scoreboard players set selected n -1
execute unless score selected n matches -1 run scoreboard players operation map q = selected n
execute if score selected n matches -3 run scoreboard players set randmap q -2
execute if score selected n matches -2 run scoreboard players set randmap q -1
execute if score selected n matches 0 run scoreboard players set randmap q 13
execute if score selected n matches 1.. run scoreboard players set randmap q 0

replaceitem block 43 31 -12 container.4 minecraft:player_head{SkullOwner:{Id:[I;-1199508408,588661428,-1958851602,905805244],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTBkMmEzY2U0OTk5ZmVkMzMwZDNhNWQwYTllMjE4ZTM3ZjRmNTc3MTk4MDg2NTczOTZkODMyMjM5ZTEyIn19fQ=="}]}},display:{Name:'{"text": "Random Map","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}}
replaceitem block 43 31 -12 container.13 minecraft:magenta_glazed_terracotta{display:{Name:'{"text": "Cycle Map","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}}
replaceitem block 43 31 -12 container.22 minecraft:filled_map{display:{Name:'{"text": "Vote Map","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']},HideFlags:63}

replaceitem block 43 31 -12 container.5 minecraft:dark_oak_planks{display:{Name:'{"text": "Manor","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.6 minecraft:spruce_sapling{display:{Name:'{"text": "Woodlands","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.7 minecraft:stone_bricks{display:{Name:'{"text": "Dungeon","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.8 minecraft:blackstone{display:{Name:'{"text": "Abyss","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Click to select.","color": "aqua"}']}} 1
replaceitem block 43 31 -12 container.14 diamond_block{display:{Name:'{"text": "Citadel","color": "white","bold": true,"italic": false}',Lore:['{"text": "Click to select.","color": "aqua"}']}}
replaceitem block 43 31 -12 container.15 dead_bush{display:{Name:'{"text": "Wasteland","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.16 emerald{display:{Name:'{"text": "Town Square","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.17 bell{display:{Name:'{"text": "Last Stand","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.23 blue_ice{display:{Name:'{"text": "Permafrost","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.24 crimson_fungus{display:{Name:'{"text": "Shroom","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.25 nether_star{display:{Name:'{"text": "Hellscape","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem block 43 31 -12 container.26 end_stone{display:{Name:'{"text": "Frontier","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}

replaceitem block 43 31 -12 container.0 polished_andesite{display:{Name:'{"text": "Reflection","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Jonathan Deiss!","color": "dark_purple"}','{"text": "Click to select.","color": "aqua"}']},HideFlags:63}
replaceitem block 43 31 -12 container.1 polished_blackstone_bricks{display:{Name:'{"text": "Dracula\'s Castle","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Reed Aldridge!","color": "dark_purple"}','{"text": "Click to select.","color": "aqua"}']},HideFlags:63}
replaceitem block 43 31 -12 container.2 snow{display:{Name:'{"text": "Avanto","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Tucker Lawson!","color": "dark_purple"}','{"text": "Click to select.","color": "aqua"}']}}
replaceitem block 43 31 -12 container.3 trident{display:{Name:'{"text": "Unnamed Map","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Brayden Smith!","color": "dark_purple"}','{"text": "Map coming soon.","color": "gray"}']},HideFlags:63}

execute if score randmap q matches 0 if score map q matches 1 run data modify block 43 31 -12 Items[{Slot:5b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 2 run data modify block 43 31 -12 Items[{Slot:6b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 3 run data modify block 43 31 -12 Items[{Slot:7b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 4 run data modify block 43 31 -12 Items[{Slot:8b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 5 run data modify block 43 31 -12 Items[{Slot:14b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 6 run data modify block 43 31 -12 Items[{Slot:15b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 7 run data modify block 43 31 -12 Items[{Slot:16b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 8 run data modify block 43 31 -12 Items[{Slot:17b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 9 run data modify block 43 31 -12 Items[{Slot:23b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 10 run data modify block 43 31 -12 Items[{Slot:24b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 11 run data modify block 43 31 -12 Items[{Slot:25b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 12 run data modify block 43 31 -12 Items[{Slot:26b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 13 run data modify block 43 31 -12 Items[{Slot:0b}].tag.display.Lore[1] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 14 run data modify block 43 31 -12 Items[{Slot:1b}].tag.display.Lore[1] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches 0 if score map q matches 15 run data modify block 43 31 -12 Items[{Slot:2b}].tag.display.Lore[1] set value '{"text": "Selected.","color": "green"}'

execute if score randmap q matches 1.. run data modify block 43 31 -12 Items[{Slot:13b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches -1 run data modify block 43 31 -12 Items[{Slot:22b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'
execute if score randmap q matches -2 run data modify block 43 31 -12 Items[{Slot:4b}].tag.display.Lore[0] set value '{"text": "Selected.","color": "green"}'

execute unless score selected n matches -1 if score randmap q matches -2 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"[Random Map]","color":"gold"}'
execute unless score selected n matches -1 if score randmap q matches -1 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"[Vote Map]","color":"gold"}'
execute unless score selected n matches -1 if score randmap q matches 1.. run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"[Cycle Map]","color":"gold"}'
execute unless score selected n matches -1 if score map q matches 1 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Manor","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 2 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Woodlands","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 3 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Dungeon","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 4 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Abyss","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 5 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Citadel","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 13 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Reflection","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 14 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Dracula\'s Castle","color":"dark_purple"}'
execute unless score selected n matches -1 if score map q matches 15 run data modify entity @e[tag=mnm,limit=1] CustomName set value '{"text":"Avanto","color":"dark_purple"}'

execute unless score selected n matches -1 if score map q matches -3 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"[Random Map]","color":"gold"}]
execute unless score selected n matches -1 if score map q matches -2 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"[Vote Map]","color":"gold"}]
execute unless score selected n matches -1 if score map q matches 0 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"[Cycle Map]","color":"gold"}]
execute unless score selected n matches -1 if score map q matches 1 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Manor","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 2 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Woodlands","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 3 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Dungeon","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 4 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Abyss","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 5 run tellraw @a [{"text": "Selected map: ","colozr": "gray"},{"text":"Citadel","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 13 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Reflection","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 14 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Dracula's Castle","color":"dark_purple"}]
execute unless score selected n matches -1 if score map q matches 15 run tellraw @a [{"text": "Selected map: ","color": "gray"},{"text":"Avanto","color":"dark_purple"}]
execute unless score selected n matches -1 as @a at @s run playsound entity.item_frame.break master @s

execute unless score selected n matches -1 if score map q matches ..0 run data modify entity @e[tag=msw,limit=1] CustomName set value '""'
execute unless score selected n matches -1 if score map q matches 1..12 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Adam Byle","color":"light_purple"}'
execute unless score selected n matches -1 if score map q matches 13 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Jonathan Deiss","color":"light_purple"}'
execute unless score selected n matches -1 if score map q matches 14 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Reed Aldridge","color":"light_purple"}'
execute unless score selected n matches -1 if score map q matches 15 run data modify entity @e[tag=msw,limit=1] CustomName set value '{"text":"by Tucker Lawson","color":"light_purple"}'
