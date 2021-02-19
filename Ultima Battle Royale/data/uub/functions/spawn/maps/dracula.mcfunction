scoreboard players operation #hotbar _var = @s z.dracula.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.dracula.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dracula/crossbow"
function uub:spawn/items/give

replaceitem entity @s armor.feet iron_boots{Unbreakable:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b}

function uub:spawn/items/refills/dracula
