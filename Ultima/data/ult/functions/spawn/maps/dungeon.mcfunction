function ult:data/player/get_nbt

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.dungeon.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/dungeon/axe"
function ult:spawn/items/give

replaceitem entity @s armor.feet iron_boots{Unbreakable: 1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable: 1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable: 1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable: 1b}

function ult:spawn/items/refills/dungeon

function ult:event/dungeon/revert
