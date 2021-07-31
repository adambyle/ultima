function ult:data/player/get

effect clear @s speed
effect clear @s resistance
effect clear @s haste
effect clear @s strength

clear @s splash_potion{Potion: "minecraft:harming"}
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.harm_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/harm_pot
function ult:spawn/items/give

clear @s potion
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.frenzy_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/attack_pot
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.stealth_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/speed_pot
function ult:spawn/items/give
