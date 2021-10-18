function ult:data/player/get

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.sword
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/sword
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.bow
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/bow
function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.shroom.shears
loot replace block 0 0 0 container.0 loot ult:map_items/shroom/shears
function ult:items/give

item replace entity @s armor.feet with chainmail_boots{Unbreakable: true}
item replace entity @s armor.legs with chainmail_leggings{Unbreakable: true}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable: true}
item replace entity @s armor.head with chainmail_helmet{Unbreakable: true}

function ult:items/refills/shroom

attribute @s generic.armor base set 8
