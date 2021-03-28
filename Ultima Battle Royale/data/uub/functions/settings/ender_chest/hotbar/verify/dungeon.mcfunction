scoreboard players set #verify _var 1
function uub:settings/ender_chest/hotbar/clear_unused_slots
execute unless data entity @s EnderItems[{id:"minecraft:stone_axe"}] run scoreboard players set #verify _var 0
execute unless data entity @s EnderItems[{id:"minecraft:splash_potion"}] run scoreboard players set #verify _var 0
execute unless data entity @s EnderItems[{id:"minecraft:potion", tag: {CustomPotionEffects: [{Id: 14b}]}}] run scoreboard players set #verify _var 0
execute unless data entity @s EnderItems[{id:"minecraft:potion", tag: {CustomPotionEffects: [{Id: 3b}]}}] run scoreboard players set #verify _var 0

execute if score #verify _var matches 0 at @s run playsound entity.villager.no master @s
execute if score #verify _var matches 0 run tellraw @s [{"text": "Hotbar >> ","color": "dark_red","bold": true},{"text": "Please make sure each item is in a slot!","bold": false}]
execute if score #verify _var matches 1 run function uub:settings/ender_chest/hotbar/assign/dungeon

execute if score #verify _var matches 0 run function uub:settings/ender_chest/hotbar/general
execute if score #verify _var matches 1 run function uub:settings/ender_chest/hotbar
