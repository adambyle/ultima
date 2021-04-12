function uub:data/player/get_nbt

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.townsquare.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/townsquare/sword"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.townsquare.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/townsquare/axe"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.townsquare.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/townsquare/bow"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.townsquare.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/townsquare/shield"
function uub:spawn/items/give

replaceitem entity @s armor.feet diamond_boots{Unbreakable:1b}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b}

function uub:spawn/items/refills/townsquare
