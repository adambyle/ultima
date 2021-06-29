# Test for selection
    scoreboard players set .selected _var 0
    execute unless data entity @s EnderItems[{Slot: 11b}] run scoreboard players set .selected _var 1
    execute unless data entity @s EnderItems[{Slot: 20b}] run scoreboard players set .selected _var 2
    execute unless data entity @s EnderItems[{Slot: 13b}] run scoreboard players set .selected _var 3
    execute unless data entity @s EnderItems[{Slot: 22b}] run scoreboard players set .selected _var 4
    execute unless data entity @s EnderItems[{Slot: 15b}] run scoreboard players set .selected _var 5
    execute unless data entity @s EnderItems[{Slot: 24b}] run scoreboard players set .selected _var 6
    execute unless data entity @s EnderItems[{Slot: 17b}] run scoreboard players set .selected _var 7
    execute unless data entity @s EnderItems[{Slot: 26b}] run scoreboard players set .selected _var 8
    execute if score .selected _var matches 1.. run function ult:settings/player/spectate/change
    # Structure Void: save and exit
    execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
