scoreboard players operation #hotbar _var = @s z.manor.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/bossfight/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/bossfight/axe"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/bossfight/bow"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/bossfight/crossbow"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.manor.shield
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/manor/shield"
function uub:spawn/items/give

replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b}
replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b}

replaceitem entity @s inventory.0 arrow 32
