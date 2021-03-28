
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

execute unless data entity @s EnderItems[{id:"minecraft:stone_axe"}] run loot replace entity @s inventory.0 loot uub:map_items/dungeon/axe
execute unless data entity @s EnderItems[{id:"minecraft:splash_potion"}] run loot replace entity @s inventory.1 loot uub:map_items/dungeon/harm_pot
execute unless data entity @s EnderItems[{id:"minecraft:potion", tag: {CustomPotionEffects: [{Id: 14b}]}}] run loot replace entity @s inventory.2 loot uub:map_items/dungeon/sneak_pot
execute unless data entity @s EnderItems[{id:"minecraft:potion", tag: {CustomPotionEffects: [{Id: 3b}]}}] run loot replace entity @s inventory.3 loot uub:map_items/dungeon/speed_pot
