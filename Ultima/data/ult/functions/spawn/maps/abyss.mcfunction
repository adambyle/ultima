function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.abyss.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/abyss/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.abyss.bow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/abyss/bow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.abyss.fishing_rod
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/abyss/rod"
function ult:spawn/items/give

function ult:spawn/items/refills/abyss

attribute @s generic.attack_speed base set 22.4
