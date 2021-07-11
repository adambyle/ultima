clear @s diamond_pickaxe

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.ancient.pickaxe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/netherite_pickaxe
function ult:spawn/items/give

execute at @s run playsound block.smithing_table.use master @s
title @s actionbar {"text": "Upgraded your pickaxe!"}
