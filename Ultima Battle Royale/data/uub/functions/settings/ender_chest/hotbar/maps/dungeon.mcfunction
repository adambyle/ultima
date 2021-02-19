clear @s #uub:map_items/dungeon

scoreboard players operation #hotbar _var = @s z.dungeon.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/axe"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dungeon.harm
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/harm_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dungeon.speed
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/speed_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dungeon.sneak
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/sneak_pot"
function uub:spawn/items/hotbar_settings

scoreboard players operation #hotbar _var = @s z.dungeon.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/shield"
function uub:spawn/items/hotbar_settings
