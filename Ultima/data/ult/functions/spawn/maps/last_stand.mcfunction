function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/axe"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/bow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.last_stand.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/last_stand/shield"
function ult:spawn/items/give

replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b}
replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b}

function ult:spawn/items/refills/last_stand

scoreboard players set @s event.skill 0
scoreboard players set @s event.skill_inc 0
scoreboard players set @s event 0
