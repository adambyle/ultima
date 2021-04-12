function uub:data/player/get_nbt

clear @s arrow
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.dracula.arrows
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/arrows"
function uub:spawn/items/give

clear @s splash_potion
execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.dracula.harm_pot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/harm_pot"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.dracula.weak_pot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/weak_pot"
function uub:spawn/items/give
