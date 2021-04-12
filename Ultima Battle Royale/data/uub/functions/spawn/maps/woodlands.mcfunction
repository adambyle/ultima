function uub:data/player/get_nbt

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.woodlands.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woodlands/sword"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.woodlands.bow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/woodlands/bow"
function uub:spawn/items/give

replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,Enchantments:[{id:"protection",lvl:4}]}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b,Enchantments:[{id:"protection",lvl:4}]}

function uub:spawn/items/refills/woodlands
