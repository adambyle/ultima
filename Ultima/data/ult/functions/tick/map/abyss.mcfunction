# Deal with current netherite armor owners
    # Countdown timer
    scoreboard players remove @a[scores={event=1..}] event 1
    # Reset netherite players to diamond if timer is 0
    execute as @a[tag=alive, scores={event=0}] run function ult:tick/map/abyss/revert

# Allow players to equip
    # Players can use the netherite from either hand
    execute as @a[tag=alive, nbt={SelectedItem: {id: "minecraft:netherite_ingot"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/abyss/netherite
    execute as @a[tag=alive, nbt={Inventory: [{id: "minecraft:netherite_ingot", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/abyss/netherite

# Clear levitation from high players
    effect clear @a[tag=alive, scores={altitude=34..}] levitation

# Deal with fishing rod bobbers
    scoreboard players add @e[type=fishing_bobber] event 1
    kill @e[type=fishing_bobber, scores={event=100..}]

# Snowball handler
    execute as @e[type=snowball] at @s run function ult:tick/map/abyss/snowball

# Totem handler
    execute as @a[scores={altitude=..15}, nbt={SelectedItem: {id: "minecraft:end_rod"}}] at @s run function ult:tick/map/abyss/totem
    execute as @a[scores={altitude=..15}, nbt={Inventory: [{id: "minecraft:end_rod", Slot: -106b}]}] at @s run function ult:tick/map/abyss/totem

# Spawner handler
    execute as @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:spawner"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/abyss/spawner
    execute as @a[tag=player, tag=alive, nbt={Inventory: [{id: "minecraft:spawner", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/abyss/spawner

kill @a[scores={altitude=..8}, tag=player, tag=alive]
