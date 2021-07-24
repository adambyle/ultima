clear @s diamond_axe

execute store result score .hotbar _var run data get storage ult:temp Player.Hotbar.ancient.axe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/netherite_axe
function ult:spawn/items/give

execute at @s run playsound block.smithing_table.use master @a ~ ~ ~ 4
title @s actionbar {"text": "Upgraded your axe!"}
