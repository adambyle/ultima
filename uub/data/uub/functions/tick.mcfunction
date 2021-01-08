tag @e[team=!play] remove alive

execute if score game q matches 0 run function uub:tick/off
execute if score game q matches 1 run function uub:tick/on

execute as @a[scores={action=1..}] run function uub:tick/action/handler
scoreboard players enable @a action
scoreboard players set @a action 0

execute if score map q matches 5 run tag @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern"}}] add nokill

kill @e[type=#arrows,nbt={inGround:1b}]
kill @e[type=item,tag=!nokill]

execute as @a[scores={qdeath=2}] run function uub:tp
scoreboard players set @a[scores={qdeath=2}] qdeath 0

execute as @a[nbt=!{EnderItems:[{id:"minecraft:globe_banner_pattern"}]},tag=menu.main] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:gold_ingot"}]},tag=menu.main] run function uub:settings/trophies
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond_sword"}]},tag=menu.main] run function uub:settings/hotbars

execute as @a[nbt=!{EnderItems:[{id:"minecraft:structure_void"}]},tag=menu.stat] run function uub:settings/main_menu
execute as @a[nbt=!{EnderItems:[{id:"minecraft:globe_banner_pattern"}]},tag=menu.stat] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:grass_block"}]},tag=menu.stat] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:iron_axe"}]},tag=menu.stat] run function uub:settings/get_stats/modes

execute as @a[nbt=!{EnderItems:[{id:"minecraft:structure_void"}]},tag=menu.stat.map] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:dark_oak_planks"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:spruce_sapling"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:stone_bricks"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:blackstone"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond_block"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:dead_bush"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:bell"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:blue_ice"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:crimson_fungus"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:nether_star"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:end_stone"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps

execute as @a[nbt=!{EnderItems:[{id:"minecraft:polished_andesite"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:snow"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:trident"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:polished_blackstone_bricks"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps

execute as @a[nbt=!{EnderItems:[{id:"minecraft:structure_void"}]},tag=menu.stat.mode] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:iron_sword"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[nbt=!{EnderItems:[{id:"minecraft:golden_helmet"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[nbt=!{EnderItems:[{id:"minecraft:wither_skeleton_skull"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes

execute unless data block 43 31 -12 {Items:[{id:"minecraft:player_head"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:paper"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:dark_oak_planks"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:spruce_sapling"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:stone_bricks"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:blackstone"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:diamond_block"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:dead_bush"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:emerald"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:bell"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:blue_ice"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:crimson_fungus"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:nether_star"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:end_stone"}]} run function uub:settings/map

execute unless data block 43 31 -12 {Items:[{id:"minecraft:polished_andesite"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:snow"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:trident"}]} run function uub:settings/map
execute unless data block 43 31 -12 {Items:[{id:"minecraft:polished_blackstone_bricks"}]} run function uub:settings/map

setblock 43 31 -8 potted_cactus
setblock 47 31 -13 potted_cactus
setblock 47 31 -8 potted_cactus
setblock 43 31 -13 potted_cactus

clear @a cactus
