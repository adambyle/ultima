function ult:data/player/get_nbt

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.sword
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/sword
function ult:spawn/items/give

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.reflection.crossbow
loot replace block 0 0 0 container.0 loot ult:map_items/reflection/crossbow
function ult:spawn/items/give

item replace entity @s armor.chest with netherite_chestplate{Unbreakable: true, Enchantments: [{id: "minecraft:blast_protection", lvl: 2s}]}

function ult:spawn/items/refills/reflection

effect give @s night_vision 99999 0 true

execute if predicate ult:coin_flip at @s run tp @s ~ 32 ~
