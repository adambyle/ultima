scoreboard players set @s hotbar_map 0
execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set @s hotbar_map 1
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set @s hotbar_map 2
execute unless data entity @s EnderItems[{Slot:7b}] run scoreboard players set @s hotbar_map 3
execute unless data entity @s EnderItems[{Slot:8b}] run scoreboard players set @s hotbar_map 4
execute unless data entity @s EnderItems[{Slot:14b}] run scoreboard players set @s hotbar_map 5
execute unless data entity @s EnderItems[{Slot:15b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:16b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:17b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:23b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:24b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:25b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:26b}] run function uub:settings/ender_chest/hotbar
execute unless data entity @s EnderItems[{Slot:0b}] run scoreboard players set @s hotbar_map 13
execute unless data entity @s EnderItems[{Slot:1b}] run scoreboard players set @s hotbar_map 14
execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set @s hotbar_map 15
execute unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set @s hotbar_map 16
execute if score @s hotbar_map matches 1.. run function uub:settings/ender_chest/hotbar/general
execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function uub:settings/ender_chest/main
