function uub:data/player/get_nbt

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.reflection.sword
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/sword"
function uub:spawn/items/give

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.reflection.crossbow
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/reflection/crossbow"
function uub:spawn/items/give

replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b, Enchantments: [{id: "minecraft:blast_protection", lvl: 2}]}

function uub:spawn/items/refills/reflection

effect give @s night_vision 99999 0 true
