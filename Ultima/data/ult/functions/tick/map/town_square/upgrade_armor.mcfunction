scoreboard players set .armor var 0

# Update armor in the reverse of this order
    execute if data entity @s Inventory[{id: "minecraft:diamond_boots"}] run scoreboard players set .armor var 1
    execute if data entity @s Inventory[{id: "minecraft:diamond_helmet"}] run scoreboard players set .armor var 2
    execute if data entity @s Inventory[{id: "minecraft:diamond_leggings"}] run scoreboard players set .armor var 3
    execute if data entity @s Inventory[{id: "minecraft:diamond_chestplate"}] run scoreboard players set .armor var 4

# Upgrade
    execute if score .armor var matches 1 run function ult:tick/map/town_square/upgrade_armor/boots
    execute if score .armor var matches 2 run function ult:tick/map/town_square/upgrade_armor/helmet
    execute if score .armor var matches 3 run function ult:tick/map/town_square/upgrade_armor/leggings
    execute if score .armor var matches 4 run function ult:tick/map/town_square/upgrade_armor/chestplate

# If all fully upgraded
    execute if score .armor var matches 0 run title @s actionbar {"text": "Your armor is already fully upgraded!", "color": "#F8961E"}
