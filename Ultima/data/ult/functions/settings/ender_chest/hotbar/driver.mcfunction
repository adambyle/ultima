scoreboard players set @s hotbar_map 0
execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set @s hotbar_map 1
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set @s hotbar_map 2
execute unless data entity @s EnderItems[{Slot:7b}] run scoreboard players set @s hotbar_map 3
execute unless data entity @s EnderItems[{Slot:8b}] run scoreboard players set @s hotbar_map 4
execute unless data entity @s EnderItems[{Slot:14b}] run scoreboard players set @s hotbar_map 5
execute unless data entity @s EnderItems[{Slot:15b}] run scoreboard players set @s hotbar_map 6
execute unless data entity @s EnderItems[{Slot:16b}] run scoreboard players set @s hotbar_map 7
execute unless data entity @s EnderItems[{Slot:17b}] run scoreboard players set @s hotbar_map 8
execute unless data entity @s EnderItems[{Slot:23b}] run scoreboard players set @s hotbar_map 9
execute unless data entity @s EnderItems[{Slot:24b}] run scoreboard players set @s hotbar_map 10
execute unless data entity @s EnderItems[{Slot:25b}] run scoreboard players set @s hotbar_map 11
execute unless data entity @s EnderItems[{Slot:26b}] run scoreboard players set @s hotbar_map 12
execute unless data entity @s EnderItems[{Slot:0b}] run scoreboard players set @s hotbar_map 13
execute unless data entity @s EnderItems[{Slot:1b}] run scoreboard players set @s hotbar_map 14
execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set @s hotbar_map 15
execute unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set @s hotbar_map 16
execute unless data entity @s EnderItems[{Slot:9b}] run scoreboard players set @s hotbar_map 17
execute unless data entity @s EnderItems[{Slot:10b}] run scoreboard players set @s hotbar_map 18
execute if score @s hotbar_map matches ..12 if score @s hotbar_map > #max_default map run function ult:settings/ender_chest/hotbar
execute if score @s hotbar_map matches 13.. if score @s hotbar_map > #max_fandom map run function ult:settings/ender_chest/hotbar
execute if score @s hotbar_map matches 1.. run function ult:settings/ender_chest/hotbar/general
execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/ender_chest/main
