# Give players emeralds when the event timer reaches 0
    scoreboard players remove .map event 1
    execute if score .map event matches ..0 run loot give @a[tag=alive] loot ult:map_items/town_square/emerald
    # Repeat every 2 seconds (40 ticks)
    execute if score .map event matches ..0 run scoreboard players set .map event 40
    # Also give emeralds when players deal damage to other players
    loot give @a[scores={damage_dealt=1..}] loot ult:map_items/town_square/emerald

# Crouch to upgrade with netherite
    execute as @a[nbt={SelectedItem: {id: "minecraft:netherite_ingot"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/town_square/upgrade_armor
    execute as @a[nbt={Inventory: [{id: "minecraft:netherite_ingot", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/town_square/upgrade_armor

# Prevent insertion of items into container blocks by players
    data remove block 79 21 78 Items
    data remove block 80 29 93 Items
    data remove block 81 29 93 Items
    data remove block 70 22 65 Items
    data remove block 71 22 65 Items

# Prevent griefing of farmland
    fill 75 22 73 79 22 73 wheat[age=7]
    fill 75 22 71 79 22 71 wheat[age=7]
    fill 75 21 71 79 21 73 farmland[moisture=7] replace dirt

# Villagers face nearest player
    execute as @e[type=villager] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
