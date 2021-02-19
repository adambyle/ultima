scoreboard players operation #hotbar _var = @s z.woods.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/sword"
function uub:spawn/items/give

scoreboard players operation #hotbar _var = @s z.woods.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woods/bow"
function uub:spawn/items/give

replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,Enchantments:[{id:"protection",lvl:4}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b,Enchantments:[{id:"protection",lvl:4}]}

function uub:spawn/items/refills/woods
