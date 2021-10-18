function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.bathhouse.sword
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.bathhouse.shears
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/shears
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.bathhouse.bow
loot replace block 0 0 0 container.0 loot ult:map_items/bathhouse/bow
function ult:items/give

item replace entity @s armor.feet with iron_boots{Unbreakable: true}
item replace entity @s armor.legs with iron_leggings{Unbreakable: true}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: true}
item replace entity @s armor.head with iron_helmet{Unbreakable: true}

function ult:items/refills/bathhouse

attribute @s generic.attack_speed base set 23.1
effect give @s haste 999999 255 true

scoreboard players set @s event 7
