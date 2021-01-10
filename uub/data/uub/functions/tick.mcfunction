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
execute as @a[nbt=!{EnderItems:[{id:"minecraft:filled_map"}]},tag=menu.main] run function uub:settings/vote
execute as @a[nbt=!{EnderItems:[{id:"minecraft:diamond_sword"}]},tag=menu.main] run function uub:settings/hotbars

execute as @a[nbt=!{EnderItems:[{id:"minecraft:structure_void"}]},tag=menu.stat] run function uub:settings/main_menu
execute as @a[nbt=!{EnderItems:[{id:"minecraft:grass_block"}]},tag=menu.stat] run function uub:settings/get_stats/maps
execute as @a[nbt=!{EnderItems:[{id:"minecraft:iron_axe"}]},tag=menu.stat] run function uub:settings/get_stats/modes
execute as @a[tag=menu.stat] run function uub:settings/get_stats
execute as @a[tag=menu.stat.map,nbt=!{EnderItems:[{id:"minecraft:structure_void"}]}] run function uub:settings/get_stats
execute as @a[tag=menu.stat.map] run function uub:settings/get_stats/maps
execute as @a[tag=menu.stat.mode,nbt=!{EnderItems:[{id:"minecraft:structure_void"}]}] run function uub:settings/get_stats
execute as @a[tag=menu.stat.mode] run function uub:settings/get_stats/modes
execute as @a[tag=menu.vote,nbt=!{EnderItems:[{id:"minecraft:structure_void"}]}] run function uub:settings/main_menu
execute as @a[tag=menu.vote,nbt=!{EnderItems:[{id:"minecraft:green_wool"}]}] run function uub:settings/vote/best
execute as @a[tag=menu.vote,nbt=!{EnderItems:[{id:"minecraft:red_wool"}]}] run function uub:settings/vote/worst
execute as @a[tag=menu.vote.best,nbt=!{EnderItems:[{id:"minecraft:structure_void"}]}] run function uub:settings/vote
execute as @a[tag=menu.vote.best] run function uub:settings/vote/best
execute as @a[tag=menu.vote.worst,nbt=!{EnderItems:[{id:"minecraft:structure_void"}]}] run function uub:settings/vote
execute as @a[tag=menu.vote.worst] run function uub:settings/vote/worst

function uub:settings/map

setblock 43 31 -8 potted_cactus
setblock 47 31 -13 potted_cactus
setblock 47 31 -8 potted_cactus
setblock 43 31 -13 potted_cactus

clear @a cactus

execute unless score game q matches 0 as @e[tag=text,tag=!award,tag=!award_nameplate,tag=!award_description,tag=!award_plaque] at @s if entity @a[distance=..6] run data modify entity @s CustomNameVisible set value 1b
execute unless score game q matches 0 as @e[tag=text,tag=!award,tag=!award_nameplate,tag=!award_description,tag=!award_plaque] at @s unless entity @a[distance=..6] run data modify entity @s CustomNameVisible set value 0b

execute if score game q matches 0 as @e[tag=text,tag=!award,tag=!award_nameplate,tag=!award_description,tag=!award_plaque] run data modify entity @s CustomNameVisible set value 1b
