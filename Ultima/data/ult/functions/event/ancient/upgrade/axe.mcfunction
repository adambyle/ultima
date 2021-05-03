clear @s diamond_axe

execute store result score #hotbar _var run data get storage ult:temp Player.Hotbar.ancient.axe
data modify entity @e[limit=1,tag=loot_table_handler] DeathLootTable set value "ult:map_items/ancient/netherite_axe"
function ult:spawn/items/give

execute at @s run playsound block.smithing_table.use master @s
title @s actionbar {"text": "Upgraded your axe!"}
