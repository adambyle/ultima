execute unless data entity @s EnderItems[{id: "minecraft:diamond_sword"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:diamond_axe"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:shield"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:bow"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:potion"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:arrow"}] run scoreboard players set .verify _var 0

execute if score .verify _var matches 0 at @s run playsound entity.villager.no master @s ~ ~ ~ 4
execute if score .verify _var matches 0 run tellraw @s [{"text": "Hotbar >> ", "color": "dark_red", "bold": true}, {"text": "Please make sure each item is in a slot!", "bold": false}]
execute if score .verify _var matches 1 run function ult:settings/player/hotbar/workspace/assign/manor

execute if score .verify _var matches 0 run function ult:settings/player/hotbar/workspace/setup
execute if score .verify _var matches 1 run function ult:settings/player/hotbar/default
