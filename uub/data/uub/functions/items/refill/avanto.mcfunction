clear @s tipped_arrow{Potion:"minecraft:slowness"}
execute if data entity @s Inventory[{Slot:9b}] run give @s tipped_arrow{Potion:"minecraft:strong_slowness"} 16
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 tipped_arrow{Potion:"minecraft:strong_slowness"} 16

effect give @s instant_health 1 3 true
