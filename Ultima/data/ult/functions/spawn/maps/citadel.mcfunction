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

replaceitem entity @s armor.feet golden_boots{Unbreakable:1b, Enchantments: [{id: "protection", lvl: 2}]}
replaceitem entity @s armor.legs golden_leggings{Unbreakable:1b, Enchantments: [{id: "projectile_protection", lvl: 3}]}
replaceitem entity @s armor.chest golden_chestplate{Unbreakable:1b, Enchantments: [{id: "projectile_protection", lvl: 3}]}
replaceitem entity @s armor.head golden_helmet{Unbreakable:1b, Enchantments: [{id: "protection", lvl: 2}]}

function ult:spawn/items/refills/citadel

attribute @s generic.armor base set 3

scoreboard players set @s citadel.rune 0
