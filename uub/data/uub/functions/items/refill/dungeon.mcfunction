effect give @a instant_health 1 3 true

clear @s splash_potion{Potion:"minecraft:harming"}
execute if data entity @s Inventory[{Slot:8b}] run give @s splash_potion{Potion:"harming"}
execute unless data entity @s Inventory[{Slot:8b}] run replaceitem entity @s hotbar.8 splash_potion{Potion:"harming"}
