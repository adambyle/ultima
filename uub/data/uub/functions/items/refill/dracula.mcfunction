clear @s splash_potion{Potion:"minecraft:harming"}
execute if data entity @s Inventory[{Slot:8b}] run give @s splash_potion{Potion:"minecraft:harming"}
execute unless data entity @s Inventory[{Slot:8b}] run replaceitem entity @s hotbar.8 splash_potion{Potion:"minecraft:harming"}

clear @s arrow
execute if data entity @s Inventory[{Slot:9b}] run give @s arrow 24
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 arrow 24

effect give @s instant_health 1 3 true
