clear @s netherite_ingot
scoreboard players operation #hotbar _var = @s z.abyss.ingot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/ingot"
function uub:spawn/items/give

clear @s potion
scoreboard players operation #hotbar _var = @s z.abyss.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/lev_pot"
function uub:spawn/items/give

clear @s arrow
scoreboard players operation #hotbar _var = @s z.abyss.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/arrows"
function uub:spawn/items/give

scoreboard players set @s event -1
