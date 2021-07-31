# Test for selection
    # Gold items: change timespan
    execute unless data entity @s EnderItems[{Slot: 11b}] run function ult:settings/player/statistics/timespan/driver
    execute unless data entity @s EnderItems[{Slot: 11b}] run function ult:settings/player/statistics/view/mode
    # Structure Void: exit
    execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/statistics

# Test for missing items
    scoreboard players set .icons _var 5
    function ult:data/player/get
    execute unless data storage ult:temp Player.StatMenu{map: -1} run scoreboard players remove .icons _var 1
    execute if data storage ult:temp Player.StatMenu{mode: 2b} run scoreboard players remove .icons _var 1
    execute if data storage ult:temp Player.StatMenu{mode: 3b} run scoreboard players remove .icons _var 1
    execute if data storage ult:temp Player.StatMenu{mode: 4b} run scoreboard players remove .icons _var 1
    execute if score @s menu = menu.statistics_display const unless data entity @s EnderItems[{Slot: 13b}] run function ult:settings/player/statistics/view/mode
    execute if score @s menu = menu.statistics_display const unless data entity @s EnderItems[{Slot: 14b}] run function ult:settings/player/statistics/view/mode
    execute if score @s menu = menu.statistics_display const unless data entity @s EnderItems[{Slot: 15b}] run function ult:settings/player/statistics/view/mode
    execute if score @s menu = menu.statistics_display const if score .icons _var matches 4.. unless data entity @s EnderItems[{Slot: 16b}] run function ult:settings/player/statistics/view/mode
    execute if score @s menu = menu.statistics_display const if score .icons _var matches 5.. unless data entity @s EnderItems[{Slot: 17b}] run function ult:settings/player/statistics/view/mode
