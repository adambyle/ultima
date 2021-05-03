execute unless data entity @s EnderItems[{Slot:9b}] run replaceitem entity @s enderchest.9 gray_stained_glass_pane{display:{Name:'{"text": "Offhand Slot","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:15b}] run replaceitem entity @s enderchest.15 gray_stained_glass_pane{display:{Name:'{"text": "Inventory Slot 1","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:16b}] run replaceitem entity @s enderchest.16 gray_stained_glass_pane{display:{Name:'{"text": "Inventory Slot 2","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:17b}] run replaceitem entity @s enderchest.17 gray_stained_glass_pane{display:{Name:'{"text": "Inventory Slot 3","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:18b}] run replaceitem entity @s enderchest.18 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 1","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:19b}] run replaceitem entity @s enderchest.19 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 2","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:20b}] run replaceitem entity @s enderchest.20 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 3","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:21b}] run replaceitem entity @s enderchest.21 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 4","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:22b}] run replaceitem entity @s enderchest.22 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 5","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:23b}] run replaceitem entity @s enderchest.23 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 6","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:24b}] run replaceitem entity @s enderchest.24 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 7","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:25b}] run replaceitem entity @s enderchest.25 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 8","color": "dark_gray","italic": false}'}}
execute unless data entity @s EnderItems[{Slot:26b}] run replaceitem entity @s enderchest.26 gray_stained_glass_pane{display:{Name:'{"text": "Hotbar Slot 9","color": "dark_gray","italic": false}'}}
clear @s gray_stained_glass_pane

scoreboard players set #temp _var 0
execute store result score #temp _var run clear @s #ult:all 0
execute if score #temp _var matches 1 store success score #temp _var if data entity @s SelectedItem
execute if score #temp _var matches 1 run tellraw @s [{"text": "Hotbar >> ","color": "dark_red","bold": true},{"text": "Keep the items in the ender chest please!","bold": false}]
execute if score #temp _var matches 1 run function ult:settings/ender_chest/hotbar
