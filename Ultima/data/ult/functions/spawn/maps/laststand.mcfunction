function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/axe"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/bow"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.laststand.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/laststand/shield"
function ult:spawn/items/give

replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b}
replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b}

function ult:spawn/items/refills/laststand

scoreboard players set @s laststand.skill 0
scoreboard players set @s laststand.level 0
scoreboard players set @s event 0
