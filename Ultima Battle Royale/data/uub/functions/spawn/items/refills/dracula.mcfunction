clear @s arrow
scoreboard players operation #hotbar _var = @s z.dracula.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/arrows"
function uub:spawn/items/give

clear @s splash_potion
scoreboard players operation #hotbar _var = @s z.dracula.harm
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/harm_pot"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.dracula.weak
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/weak_pot"
function uub:spawn/items/give
