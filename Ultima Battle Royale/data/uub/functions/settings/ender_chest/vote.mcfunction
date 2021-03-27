execute unless score @s menu = #vote menu run function uub:settings/ender_chest/clear
scoreboard players operation @s menu = #vote menu
clear @a[gamemode=!creative] #uub:map_icons
clear @s #uub:all
scoreboard players set @s map 0

execute unless data entity @s EnderItems[{id:"minecraft:structure_void"}] run function uub:tp/lobby
scoreboard players set #temp _var 0
execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set #temp _var 1
execute unless data entity @s EnderItems[{Slot:4b}] run scoreboard players set #temp _var 2
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set #temp _var 3
execute unless data entity @s EnderItems[{Slot:23b}] run scoreboard players set #temp _var 4
execute unless data entity @s EnderItems[0] run scoreboard players set #temp _var 0

execute store result score #temp map run data get storage uub:map_data Votes[0]
function uub:settings/ender_chest/vote/set_loot_table
loot replace entity @s enderchest.2 kill @e[tag=loot_table_handler,limit=1]

execute store result score #temp map run data get storage uub:map_data Votes[1]
function uub:settings/ender_chest/vote/set_loot_table
loot replace entity @s enderchest.4 kill @e[tag=loot_table_handler,limit=1]

execute store result score #temp map run data get storage uub:map_data Votes[2]
function uub:settings/ender_chest/vote/set_loot_table
loot replace entity @s enderchest.6 kill @e[tag=loot_table_handler,limit=1]

replaceitem entity @s enderchest.21 structure_void{display:{Name:'{"text":"Cancel","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"text":"Click if you are not ready to play.","color":"gray"}']}}
replaceitem entity @s enderchest.23 lava_bucket{display:{Name:'{"text":"Don\'t Vote","color":"red","bold":true,"italic":false}',Lore:['{"text":"Choose this to skip adding your vote to the pool.","color":"gray"}']}}

execute if score #temp _var matches 1 store result score @s map run data get storage uub:map_data Votes[0]
execute if score #temp _var matches 2 store result score @s map run data get storage uub:map_data Votes[1]
execute if score #temp _var matches 3 store result score @s map run data get storage uub:map_data Votes[2]
execute if score #temp _var matches 1.. run function uub:start/ready
