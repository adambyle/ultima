function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.reflection.sword
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/sword"
function ult:spawn/items/give

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.reflection.crossbow
data modify entity @e[limit=1, tag=loot_table_handler] DeathLootTable set value "ult:map_items/reflection/crossbow"
function ult:spawn/items/give

item replace entity @s armor.chest with netherite_chestplate{Unbreakable: 1b, Enchantments: [{id: "minecraft:blast_protection", lvl: 2}]}

function ult:spawn/items/refills/reflection

effect give @s night_vision 99999 0 true
