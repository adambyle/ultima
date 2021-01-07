clear @s tipped_arrow
execute if data entity @s Inventory[{Slot:9b}] run give @s arrow 16
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 arrow 16
effect give @s instant_health 1 3 true
