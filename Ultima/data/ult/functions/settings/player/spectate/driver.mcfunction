# Test for selection
    scoreboard players set .selected _var 0
    execute unless data entity @s EnderItems[{Slot: 11b}] run scoreboard players set .selected _var 1
    execute unless data entity @s EnderItems[{Slot: 13b}] run scoreboard players set .selected _var 2
    execute unless data entity @s EnderItems[{Slot: 15b}] run scoreboard players set .selected _var 3
    execute unless data entity @s EnderItems[{Slot: 17b}] run scoreboard players set .selected _var 4
    execute if score .selected _var matches 1.. run function ult:settings/player/spectate/change
    # Missing icons
    execute unless data entity @s EnderItems[{id: "minecraft:dragon_egg"}] run function ult:settings/player/spectate
    execute unless data entity @s EnderItems[{id: "minecraft:red_bed"}] run function ult:settings/player/spectate
    execute unless data entity @s EnderItems[{id: "minecraft:diamond_sword"}] run function ult:settings/player/spectate
    execute unless data entity @s EnderItems[{id: "minecraft:skeleton_skull"}] run function ult:settings/player/spectate
    # Structure Void: save and exit
    execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
