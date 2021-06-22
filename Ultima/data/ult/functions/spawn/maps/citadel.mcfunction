function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/axe"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/crossbow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.citadel.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/citadel/shield"
function ult:spawn/items/give

item replace entity @s armor.feet with golden_boots{Unbreakable:1b, Enchantments: [{id: "protection", lvl: 2}]}
item replace entity @s armor.legs with golden_leggings{Unbreakable:1b, Enchantments: [{id: "projectile_protection", lvl: 3}]}
item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b, Enchantments: [{id: "projectile_protection", lvl: 3}]}
item replace entity @s armor.head with golden_helmet{Unbreakable:1b, Enchantments: [{id: "protection", lvl: 2}]}

function ult:spawn/items/refills/citadel

attribute @s generic.armor base set 3

scoreboard players set @s citadel.rune 0
