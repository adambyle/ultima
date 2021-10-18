clear @s diamond_hoe

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.ancient.hoe
loot replace block 0 0 0 container.0 loot ult:map_items/ancient/netherite_hoe
function ult:items/give

execute at @s run playsound block.smithing_table.use master @s ~ ~ ~ 4
title @s actionbar {"text": "Upgraded your scythe!"}
