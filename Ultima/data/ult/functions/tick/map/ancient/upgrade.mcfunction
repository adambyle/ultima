data remove storage ult:temp Item

# The candidate for upgrading is the opposite of that which is holding the ingot
    execute if score @s var matches 1 run data modify storage ult:temp Item set from entity @s Inventory[{Slot: -106b}]
    execute if score @s var matches 2 run data modify storage ult:temp Item set from entity @s SelectedItem

# Determine selected item
    scoreboard players set .upgrade var 0
    # If tool is selected
    execute if data storage ult:temp Item{id: "minecraft:diamond_axe"} run scoreboard players set .upgrade var 1
    execute if data storage ult:temp Item{id: "minecraft:diamond_pickaxe"} run scoreboard players set .upgrade var 2
    execute if data storage ult:temp Item{id: "minecraft:diamond_hoe"} run scoreboard players set .upgrade var 3
    # Otherwise, upgrade next best armor
    execute unless score .upgrade var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_chestplate"}] run scoreboard players set .upgrade var 4
    execute unless score .upgrade var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_leggings"}] run scoreboard players set .upgrade var 5
    execute unless score .upgrade var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_helmet"}] run scoreboard players set .upgrade var 6
    execute unless score .upgrade var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_boots"}] run scoreboard players set .upgrade var 7

# Upgrade selected item
    execute if score .upgrade var matches 1 run function ult:tick/map/ancient/upgrade/axe
    execute if score .upgrade var matches 2 run function ult:tick/map/ancient/upgrade/pickaxe
    execute if score .upgrade var matches 3 run function ult:tick/map/ancient/upgrade/hoe
    execute if score .upgrade var matches 4 run function ult:tick/map/ancient/upgrade/chestplate
    execute if score .upgrade var matches 5 run function ult:tick/map/ancient/upgrade/leggings
    execute if score .upgrade var matches 6 run function ult:tick/map/ancient/upgrade/helmet
    execute if score .upgrade var matches 7 run function ult:tick/map/ancient/upgrade/boots

# Clear ingot only if something was upgraded
    execute if score .upgrade var matches 1.. run clear @s netherite_ingot 1
