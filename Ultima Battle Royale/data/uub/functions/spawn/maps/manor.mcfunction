scoreboard players operation #hotbar _var = @s z.manor.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/axe"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/bow"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/crossbow"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/shield"
function uub:spawn/items/give

replaceitem entity @s armor.feet diamond_boots{Unbreakable:1b}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b}

function uub:spawn/items/refills/manor
