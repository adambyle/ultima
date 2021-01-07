clear @s ender_pearl
execute if data entity @s Inventory[{Slot:8b}] run give @s ender_pearl
execute unless data entity @s Inventory[{Slot:8b}] run replaceitem entity @s hotbar.8 ender_pearl
