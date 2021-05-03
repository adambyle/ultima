function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.avanto.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/avanto/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.avanto.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/avanto/bow"
function ult:spawn/items/give

replaceitem entity @s armor.feet leather_boots{Unbreakable:1b, display: {color: 16777215}}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b, display: {color: 16777215}}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b, display: {color: 16777215}}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1b, display: {color: 16777215}}

function ult:spawn/items/refills/avanto

attribute @s generic.armor base set 8

scoreboard players set @s event 0
