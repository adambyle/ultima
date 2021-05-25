scoreboard players set #armor _var 0

execute if data entity @s Inventory[{id: "minecraft:diamond_boots"}] run scoreboard players set #armor _var 1
execute if data entity @s Inventory[{id: "minecraft:diamond_helmet"}] run scoreboard players set #armor _var 2
execute if data entity @s Inventory[{id: "minecraft:diamond_leggings"}] run scoreboard players set #armor _var 3
execute if data entity @s Inventory[{id: "minecraft:diamond_chestplate"}] run scoreboard players set #armor _var 4

execute if score #armor _var matches 1 run function ult:tick/active/map/town_square/upgrade_armor/boots
execute if score #armor _var matches 2 run function ult:tick/active/map/town_square/upgrade_armor/helmet
execute if score #armor _var matches 3 run function ult:tick/active/map/town_square/upgrade_armor/leggings
execute if score #armor _var matches 4 run function ult:tick/active/map/town_square/upgrade_armor/chestplate

execute if score #armor _var matches 0 run title @s actionbar {"text": "Your armor is already fully upgraded!", "color": "red"}
