clear @s potion
execute if data entity @s Inventory[{Slot:8b}] run give @s potion{Potion:"strong_healing"}
execute unless data entity @s Inventory[{Slot:8b}] run replaceitem entity @s hotbar.8 potion{Potion:"strong_healing"}

clear @s arrow
execute if data entity @s Inventory[{Slot:9b}] run give @s arrow 32
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 arrow 32

effect clear @s
effect give @s instant_health 1 3 true
