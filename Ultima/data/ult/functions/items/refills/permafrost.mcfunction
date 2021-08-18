function ult:data/player/get

clear @s snowball
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.snowball
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/snowball
function ult:items/give

clear @s milk_bucket
execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.permafrost.milk
loot replace block 0 0 0 container.0 loot ult:map_items/permafrost/milk
function ult:items/give

scoreboard players set @s event 0
