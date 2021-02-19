clear @s golden_apple
scoreboard players operation #hotbar _var = @s z.woods.gapple
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/gapple"
function uub:spawn/items/give

clear @s arrow
scoreboard players operation #hotbar _var = @s z.woods.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/arrows"
function uub:spawn/items/give
