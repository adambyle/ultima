execute unless score @s menu = menu.vote const run function ult:settings/ender_chest/clear
scoreboard players operation @s menu = menu.vote const
clear @a[gamemode=!creative] #ult:map_icons
clear @s #ult:map_items/all
scoreboard players set @s vote 0

execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:lobby
scoreboard players set .temp _var 0
execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set .temp _var 1
execute unless data entity @s EnderItems[{Slot:4b}] run scoreboard players set .temp _var 2
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set .temp _var 3
execute unless data entity @s EnderItems[{Slot:23b}] run scoreboard players set .temp _var 4
execute unless data entity @s EnderItems[0] run scoreboard players set .temp _var 0

execute store result score .temp map run data get storage ult:players Votes[0]
function ult:settings/ender_chest/vote/set_loot_table
loot replace entity @s enderchest.2 kill @e[tag=loot_table_handler,limit=1]

execute store result score .temp map run data get storage ult:players Votes[1]
function ult:settings/ender_chest/vote/set_loot_table
loot replace entity @s enderchest.4 kill @e[tag=loot_table_handler,limit=1]

execute store result score .temp map run data get storage ult:players Votes[2]
function ult:settings/ender_chest/vote/set_loot_table
loot replace entity @s enderchest.6 kill @e[tag=loot_table_handler,limit=1]

item replace entity @s enderchest.21 with structure_void{display: {Name:'{"text": "Cancel", "color": "dark_aqua", "bold":true, "italic":false}',Lore: ['{"text": "Click if you are not ready to play.", "color": "gray"}']}}
item replace entity @s enderchest.23 with lava_bucket{display: {Name:'{"text": "Don\'t Vote", "color": "red", "bold":true, "italic":false}',Lore: ['{"text": "Choose this to skip adding your vote to the pool.", "color": "gray"}']}}

execute if score .temp _var matches 1 store result score @s vote run data get storage ult:players Votes[0]
execute if score .temp _var matches 2 store result score @s vote run data get storage ult:players Votes[1]
execute if score .temp _var matches 3 store result score @s vote run data get storage ult:players Votes[2]
execute if score .temp _var matches 1.. if score @s ready matches 1 run tellraw @a [{"selector": "@s", "color": "gray"}, " changed their vote."]
execute if score .temp _var matches 1.. if score @s ready matches 1 run function ult:lobby
execute if score .temp _var matches 1.. if score @s ready matches 0 run function ult:start/ready
