# Test for selection
    # Gold items: change timespan
    execute unless data entity @s EnderItems[{Slot: 11b}] run function ult:settings/player/statistics/timespan/driver
    execute unless data entity @s EnderItems[{Slot: 11b}] run function ult:settings/player/statistics
    # Stats screen selections
    scoreboard players set .selection _var 0
    execute unless data entity @s EnderItems[{Slot: 13b}] run scoreboard players set .selection _var 1
    execute unless data entity @s EnderItems[{Slot: 14b}] run scoreboard players set .selection _var 2
    execute unless data entity @s EnderItems[{Slot: 15b}] run scoreboard players set .selection _var 3
    execute unless data entity @s EnderItems[{Slot: 16b}] run scoreboard players set .selection _var 4
    execute unless data entity @s EnderItems[{Slot: 17b}] run scoreboard players set .selection _var 5
    execute unless data entity @s EnderItems[{Slot: 22b}] run scoreboard players set .selection _var 6
    execute unless data entity @s EnderItems[{Slot: 23b}] run scoreboard players set .selection _var 7
    execute unless data entity @s EnderItems[{Slot: 24b}] run scoreboard players set .selection _var 8
    execute unless data entity @s EnderItems[{Slot: 25b}] run scoreboard players set .selection _var 9
    execute unless data entity @s EnderItems[{Slot: 26b}] run scoreboard players set .selection _var 10
    scoreboard players operation .mode control = .selection _var
    scoreboard players remove .mode control 1
    scoreboard players set .col _var 5
    scoreboard players operation .mode control %= .col _var
    execute if score .selection _var matches 1..5 run function ult:settings/player/statistics/view/nomap
    execute if score .selection _var matches 6..10 run function ult:settings/player/statistics/enter_map_selection
    # Structure Void: exit
    execute if score @s menu = menu.statistics const unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
