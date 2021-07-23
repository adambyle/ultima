function ult:data/player/get_nbt

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.bathhouse.blocks
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/block
execute store result score @s _var run clear @s white_wool 0
execute unless score @s _var matches 64.. if data entity @s Inventory[{id: "minecraft:white_wool"}] run loot give @s loot ult:map_items/bathhouse/block
execute unless score @s _var matches 64.. unless data entity @s Inventory[{id: "minecraft:white_wool"}] run function ult:spawn/items/give

scoreboard players set @s event 7
