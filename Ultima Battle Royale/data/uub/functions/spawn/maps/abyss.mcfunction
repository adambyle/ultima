function uub:data/player/get_nbt

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.abyss.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/sword"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.abyss.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/bow"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.abyss.fishing_rod
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/abyss/rod"
function uub:spawn/items/give

function uub:spawn/items/refills/abyss

attribute @s generic.attack_speed base set 22.4
