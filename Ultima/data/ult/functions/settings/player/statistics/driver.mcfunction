# Test for selection
    # Gold items: change timespan
    execute unless data entity @s EnderItems[{Slot: 11b}] run function ult:settings/player/statistics/timespan
    # Structure Void: exit
    execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
