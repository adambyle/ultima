effect clear @s resistance
effect clear @s speed
effect clear @s strength
effect clear @s haste
clear @s potion
clear @s cauldron 1
execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.dungeon.frenzy_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/attack_pot
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.dungeon.stealth_pot
loot replace block 0 0 0 container.0 loot ult:map_items/dungeon/speed_pot
function ult:items/give

execute at @s run playsound block.brewing_stand.brew master @s ~ ~ ~ 4
