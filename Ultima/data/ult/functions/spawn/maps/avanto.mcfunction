function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.avanto.sword
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.avanto.bow
loot replace block 0 0 0 container.0 loot ult:map_items/avanto/bow
function ult:items/give

item replace entity @s armor.feet with leather_boots{Unbreakable: true, display: {color: 16777215}}
item replace entity @s armor.legs with leather_leggings{Unbreakable: true, display: {color: 16777215}}
item replace entity @s armor.chest with leather_chestplate{Unbreakable: true, display: {color: 16777215}}
item replace entity @s armor.head with leather_helmet{Unbreakable: true, display: {color: 16777215}}

function ult:items/refills/avanto

attribute @s generic.armor base set 8

scoreboard players set @s event 0
