scoreboard players operation #hotbar _var = @s z.wastes.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.wastes.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/wastes/bow"
function uub:spawn/items/give

replaceitem entity @s armor.feet leather_boots{Unbreakable:1b, display: {color: 8004622}}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b, display: {color: 15291665}}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1b, display: {color: 8004622}}

function uub:spawn/items/refills/wastes

attribute @s generic.attack_speed base set 22.4
