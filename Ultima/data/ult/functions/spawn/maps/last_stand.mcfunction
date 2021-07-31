function ult:data/player/get

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.sword
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/sword
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.axe
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/axe
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.bow
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/bow
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.lastStand.shield
loot replace block 0 0 0 container.0 loot ult:map_items/last_stand/shield
function ult:spawn/items/give

item replace entity @s armor.feet with netherite_boots{Unbreakable: true}
item replace entity @s armor.legs with netherite_leggings{Unbreakable: true}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable: true}
item replace entity @s armor.head with netherite_helmet{Unbreakable: true}

function ult:spawn/items/refills/last_stand

scoreboard players operation @s event.skill = event.skill.none const
scoreboard players set @s event.skill_inc 0
scoreboard players set @s event 0
