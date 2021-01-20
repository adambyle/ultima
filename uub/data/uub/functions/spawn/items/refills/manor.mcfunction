clear @s arrow
execute if data entity @s Inventory[{Slot:9b}] run give @s arrow 16
execute unless data entity @s Inventory[{Slot:9b}] run replaceitem entity @s inventory.0 arrow 16

clear @s potion
scoreboard players operation #hotbar _var = @s z.manor.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/potion"
function uub:spawn/items/give
