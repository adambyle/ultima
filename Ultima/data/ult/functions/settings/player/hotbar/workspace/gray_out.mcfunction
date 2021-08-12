execute unless data entity @s EnderItems[{Slot: 9b}] run item replace entity @s enderchest.9 with gray_stained_glass_pane{display: {Name: '{"text": "Offhand Slot", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 15b}] run item replace entity @s enderchest.15 with gray_stained_glass_pane{display: {Name: '{"text": "Back Inventory Slot 1", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 16b}] run item replace entity @s enderchest.16 with gray_stained_glass_pane{display: {Name: '{"text": "Back Inventory Slot 2", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 17b}] run item replace entity @s enderchest.17 with gray_stained_glass_pane{display: {Name: '{"text": "Back Inventory Slot 3", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 18b}] run item replace entity @s enderchest.18 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 1", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot:  19b}] run item replace entity @s enderchest.19 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 2", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 20b}] run item replace entity @s enderchest.20 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 3", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 21b}] run item replace entity @s enderchest.21 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 4", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 22b}] run item replace entity @s enderchest.22 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 5", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 23b}] run item replace entity @s enderchest.23 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 6", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 24b}] run item replace entity @s enderchest.24 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 7", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 25b}] run item replace entity @s enderchest.25 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 8", "color": "dark_gray", "italic": false}'}}
execute unless data entity @s EnderItems[{Slot: 26b}] run item replace entity @s enderchest.26 with gray_stained_glass_pane{display: {Name: '{"text": "Hotbar Slot 9", "color": "dark_gray", "italic": false}'}}
clear @s gray_stained_glass_pane

scoreboard players set .temp _var 0
execute store success score .temp _var run clear @s #ult:map_items/all 0
execute if score .temp _var matches 1 store success score .temp _var if data entity @s SelectedItem
execute if score .temp _var matches 1 run tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Keep the items in the ender chest please!", "color": "#F8961E"}]
execute if score .temp _var matches 1 run function ult:settings/player/hotbar/workspace/setup
