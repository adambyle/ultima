data remove storage ult:temp Item

execute if score @s _var matches 1 run data modify storage ult:temp Item set from entity @s Inventory[{Slot: -106b}]
execute if score @s _var matches 2 run data modify storage ult:temp Item set from entity @s SelectedItem

scoreboard players set #upgrade _var 0
execute if data storage ult:temp Item{id: "minecraft:diamond_axe"} run scoreboard players set #upgrade _var 1
execute if data storage ult:temp Item{id: "minecraft:diamond_pickaxe"} run scoreboard players set #upgrade _var 2
execute if data storage ult:temp Item{id: "minecraft:diamond_hoe"} run scoreboard players set #upgrade _var 3
execute unless score #upgrade _var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_chestplate"}] run scoreboard players set #upgrade _var 4
execute unless score #upgrade _var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_leggings"}] run scoreboard players set #upgrade _var 5
execute unless score #upgrade _var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_helmet"}] run scoreboard players set #upgrade _var 6
execute unless score #upgrade _var matches 1.. if data entity @s Inventory[{id: "minecraft:diamond_boots"}] run scoreboard players set #upgrade _var 7

execute if score #upgrade _var matches 1 run function ult:event/ancient/upgrade/axe
execute if score #upgrade _var matches 2 run function ult:event/ancient/upgrade/pickaxe
execute if score #upgrade _var matches 3 run function ult:event/ancient/upgrade/hoe
execute if score #upgrade _var matches 4 run function ult:event/ancient/upgrade/chestplate
execute if score #upgrade _var matches 5 run function ult:event/ancient/upgrade/leggings
execute if score #upgrade _var matches 6 run function ult:event/ancient/upgrade/helmet
execute if score #upgrade _var matches 7 run function ult:event/ancient/upgrade/boots

execute if score #upgrade _var matches 1.. run clear @s netherite_ingot 1
