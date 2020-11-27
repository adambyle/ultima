clear @s golden_apple
execute if data entity @s Inventory[{Slot:8b}] run give @s golden_apple
execute unless data entity @s Inventory[{Slot:8b}] run replaceitem entity @s hotbar.8 golden_apple

clear @s arrow
execute if data entity @s Inventory[{Slot:9b}] run give @s arrow 16
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 arrow 16

effect give @a instant_health 1 3 true
