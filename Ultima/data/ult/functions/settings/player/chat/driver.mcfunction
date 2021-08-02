# Test for selection
    # Terracotta: change pronouns
    execute unless data entity @s EnderItems[{Slot: 18b}] run function ult:settings/player/chat/pronouns
    # Structure Void: exit
    execute unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/player/main
