clear @s diamond_hoe

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.hoe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/netherite_hoe"
function ult:spawn/items/give

execute at @s run playsound block.smithing_table.use master @s
title @s actionbar {"text": "Upgraded your scythe!"}
