function ult:data/player/get_nbt

clear @s arrow
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/arrows"
function ult:spawn/items/give

clear @s coal
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.cannonball
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/cannonball"
function ult:spawn/items/give

clear @s splash_potion
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.potion
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/potion"
function ult:spawn/items/give
