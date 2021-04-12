function uub:data/player/get_nbt

execute store result score #hotbar _var run data get storage uub:temp Player.Hotbar.dungeon.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "uub:map_items/dungeon/axe"
function uub:spawn/items/give

replaceitem entity @s armor.feet iron_boots{Unbreakable: 1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable: 1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable: 1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable: 1b}

function uub:spawn/items/refills/dungeon

function uub:event/dungeon/revert
