scoreboard players operation #hotbar _var = @s z.avanto.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.avanto.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/avanto/bow"
function uub:spawn/items/give

replaceitem entity @s armor.feet leather_boots{Unbreakable:1b, display: {color: 16777215}}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b, display: {color: 16777215}}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b, display: {color: 16777215}}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1b, display: {color: 16777215}}

function uub:spawn/items/refills/avanto

attribute @s generic.armor base set 8

scoreboard players set @s event 0
