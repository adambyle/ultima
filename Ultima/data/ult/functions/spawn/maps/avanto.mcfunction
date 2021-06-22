function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.avanto.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/avanto/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.avanto.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/avanto/bow"
function ult:spawn/items/give

item replace entity @s armor.feet with leather_boots{Unbreakable:1b, display: {color: 16777215}}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b, display: {color: 16777215}}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b, display: {color: 16777215}}
item replace entity @s armor.head with leather_helmet{Unbreakable:1b, display: {color: 16777215}}

function ult:spawn/items/refills/avanto

attribute @s generic.armor base set 8

scoreboard players set @s event 0
