execute as @a unless score @s gid = gid q run function uub:load
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function uub:start/ready
execute positioned 43 31 -9 if block ~ ~ ~ polished_blackstone_button[powered=true] run function uub:settings/mode
execute positioned 43 31 -12 if block ~ ~ ~ polished_blackstone_button[powered=true] run function uub:settings/map

execute as @a[tag=team_play,nbt=!{EnderItems:[{id:"minecraft:lime_terracotta"}]},tag=menu.main] run function uub:settings/opt
execute as @a[tag=team_spect,nbt=!{EnderItems:[{id:"minecraft:blue_terracotta"}]},tag=menu.main] run function uub:settings/opt
execute as @a[nbt=!{EnderItems:[{id:"minecraft:globe_banner_pattern"}]},tag=menu.main] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond_sword"}]},tag=menu.main] run function uub:settings/hotbars

execute as @a[nbt=!{EnderItems:[{id:"minecraft:barrier"}]},tag=menu.stat] run function uub:settings/main_menu
execute as @a[nbt=!{EnderItems:[{id:"minecraft:globe_banner_pattern"}]},tag=menu.stat] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:grass_block"}]},tag=menu.stat] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:iron_axe"}]},tag=menu.stat] run function uub:settings/get_stats/modes

execute as @a[nbt=!{EnderItems:[{id:"minecraft:barrier"}]},tag=menu.stat.map] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:smooth_quartz"}]},tag=menu.stat.map] run function uub:settings/get_stats/maps
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

execute as @a[nbt=!{EnderItems:[{id:"minecraft:barrier"}]},tag=menu.stat.mode] run function uub:settings/get_stats
execute as @a[nbt=!{EnderItems:[{id:"minecraft:iron_sword"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[nbt=!{EnderItems:[{id:"minecraft:golden_helmet"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[nbt=!{EnderItems:[{id:"minecraft:wither_skeleton_skull"}]},tag=menu.stat.mode] run function uub:settings/get_stats/modes

setblock 43 31 -8 potted_cactus
setblock 47 31 -13 potted_cactus
setblock 47 31 -8 potted_cactus
setblock 43 31 -13 potted_cactus

clear @a cactus

clear @a leather_chestplate
replaceitem entity @a[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]},tag=team_play] armor.chest leather_chestplate{display:{color:65293}}
replaceitem entity @a[nbt=!{Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]},tag=team_spect] armor.chest leather_chestplate{display:{color:4607}}
