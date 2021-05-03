function ult:data/player/get_nbt

effect clear @s speed
effect clear @s resistance
effect clear @s haste
effect clear @s strength

clear @s splash_potion{Potion: "minecraft:harming"}
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.harm
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/harm_pot"
function ult:spawn/items/give

clear @s potion
execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.frenzy_pot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/attack_pot"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.stealth_pot
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/speed_pot"
function ult:spawn/items/give
