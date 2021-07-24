# Test for ownership of a trident, and, if none exist, replace lost trident
    execute as @a[tag=alive] run function ult:tick/map/marooned/trident_ownership
    loot give @a[scores={_var=0}, nbt=!{Inventory: [{id: "minecraft:trident"}]}] loot ult:map_items/marooned/trident

# Prevent interacting with blocks
    fill 131 13 186 95 25 124 spruce_fence_gate[facing=east, open=false] replace spruce_fence_gate[facing=east, open=true]
    fill 131 13 186 95 25 124 spruce_fence_gate[facing=west, open=false] replace spruce_fence_gate[facing=west, open=true]
    fill 131 13 186 95 25 124 spruce_fence_gate[facing=north, open=false] replace spruce_fence_gate[facing=north, open=true]
    fill 131 13 186 95 25 124 spruce_fence_gate[facing=south, open=false] replace spruce_fence_gate[facing=south, open=true]

# Monster fills/drains water at random-ish intervals
    # If in-between fills/drains, make event randomized
    execute if score .transition event matches 0 if predicate ult:coin_flip run scoreboard players add .map event 1
    # If in the middle of filling/draining, make sure the animation is smooth by removing randomization
    execute if score .transition event matches 1 run scoreboard players add .map event 1
    # Filling
    execute if score .map event matches 100 run function ult:tick/map/marooned/flood/0
    execute if score .map event matches 110 run function ult:tick/map/marooned/flood/1
    execute if score .map event matches 120 run function ult:tick/map/marooned/flood/2
    execute if score .map event matches 130 run function ult:tick/map/marooned/flood/3
    execute if score .map event matches 140 run function ult:tick/map/marooned/flood/4
    execute if score .map event matches 150 run function ult:tick/map/marooned/flood/5
    execute if score .map event matches 160 run function ult:tick/map/marooned/flood/6
    execute if score .map event matches 170 run function ult:tick/map/marooned/flood/7
    # Draining
    execute if score .map event matches 300 run function ult:tick/map/marooned/unflood/7
    execute if score .map event matches 310 run function ult:tick/map/marooned/unflood/6
    execute if score .map event matches 320 run function ult:tick/map/marooned/unflood/5
    execute if score .map event matches 330 run function ult:tick/map/marooned/unflood/4
    execute if score .map event matches 340 run function ult:tick/map/marooned/unflood/3
    execute if score .map event matches 350 run function ult:tick/map/marooned/unflood/2
    execute if score .map event matches 360 run function ult:tick/map/marooned/unflood/1
    execute if score .map event matches 370 run function ult:tick/map/marooned/unflood/0

# Dolphin charm
    # Mainhand
    execute as @a[tag=alive, nbt={SelectedItem: {id: "minecraft:heart_of_the_sea"}}] run function ult:tick/map/marooned/charm/apply
    # Offhand
    execute as @a[tag=alive, nbt={Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] run function ult:tick/map/marooned/charm/apply
    # Neither
    execute as @a[nbt=!{SelectedItem: {id: "minecraft:heart_of_the_sea"}}, nbt=!{Inventory: [{id: "minecraft:heart_of_the_sea", Slot: -106b}]}] run function ult:tick/map/marooned/charm/remove

# Give players who killed a salmon cooked meat
    execute as @a[scores={event.salmon=1..}, nbt=!{Inventory: [{id: "minecraft:cooked_salmon"}]}] run function ult:tick/map/marooned/food

# Players can eat the meat from either hand
    execute as @a[nbt={SelectedItem: {id: "minecraft:cooked_salmon"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/marooned/eat_food
    execute as @a[nbt={Inventory: [{id: "minecraft:cooked_salmon", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/marooned/eat_food
