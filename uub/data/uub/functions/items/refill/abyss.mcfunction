clear @s tipped_arrow
execute if data entity @s Inventory[{Slot:9b}] run give @s tipped_arrow{Potion:"harming"} 16
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 tipped_arrow{Potion:"harming"} 16
