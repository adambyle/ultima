# Test for selection
    # Terracotta: change pronouns
    execute unless data entity @s EnderItems[{Slot: 18b}] run function ult:settings/player/chat/pronouns
    # Channel settings
    execute unless data entity @s EnderItems[{Slot: 12b}] run function ult:settings/player/chat/channel/g
    execute unless data entity @s EnderItems[{Slot: 13b}] run function ult:settings/player/chat/channel/n
    execute unless data entity @s EnderItems[{Slot: 14b}] run function ult:settings/player/chat/channel/s
    # Structure Void: exit
    execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
