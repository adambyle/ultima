scoreboard players set #verify _var 1
function uub:settings/ender_chest/hotbar/clear_unused_slots
execute unless data entity @s EnderItems[{id:"minecraft:wooden_sword"}] run scoreboard players set #verify _var 0
execute unless data entity @s EnderItems[{id:"minecraft:bow"}] run scoreboard players set #verify _var 0
execute unless data entity @s EnderItems[{id:"minecraft:golden_apple"}] run scoreboard players set #verify _var 0
execute unless data entity @s EnderItems[{id:"minecraft:arrow"}] run scoreboard players set #verify _var 0

execute if score #verify _var matches 0 at @s run playsound entity.villager.no master @s
execute if score #verify _var matches 0 run tellraw @s [{"text": "Hotbar >> ","color": "dark_red","bold": true},{"text": "Please make sure each item is in a slot!","bold": false}]
execute if score #verify _var matches 1 run function uub:settings/ender_chest/hotbar/assign/woodlands

execute if score #verify _var matches 0 run function uub:settings/ender_chest/hotbar/general
execute if score #verify _var matches 1 run function uub:settings/ender_chest/hotbar
