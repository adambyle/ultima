# With flint selected (in either hand) and crouching, use a smoke bomb
    execute as @a[nbt={SelectedItem: {id: "minecraft:flint"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s run function ult:tick/map/wasteland/smoke_bomb
    execute as @a[nbt={Inventory: [{id: "minecraft:flint", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s run function ult:tick/map/wasteland/smoke_bomb

# Spawn rabbit at a random rabbit spawn location if there is no rabbit already nearby
    execute if predicate ult:maps/wasteland/rabbit_spawn at @e[sort=random, limit=1, tag=wasteland_rabbit_spawn] unless entity @e[type=rabbit, distance=..12] run summon rabbit

# Give players who killed a rabbit a cooked rabbit meat item
    execute as @a[scores={event.rabbit=1..}, nbt=!{Inventory: [{id: "minecraft:cooked_rabbit"}]}] run function ult:tick/map/wasteland/food

# With meat selected (in either hand) and crouching, eat the food
    execute as @a[nbt={SelectedItem: {id: "minecraft:cooked_rabbit"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/wasteland/eat_food
    execute as @a[nbt={Inventory: [{id: "minecraft:cooked_rabbit", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/wasteland/eat_food

# Make the rabbits easier to catch
    effect give @e[type=rabbit] slowness 999999 1 true

# Players near a port make a door sound
    execute at @e[tag=wasteland_port] run playsound block.wooden_door.open master @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3]

# Port number 1
    # Tag the newly teleporting players
    execute positioned 77 21 50 run tag @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] add new_wasteland_warped
    # Teleport aforementioned players
    execute positioned 77 21 50 run tp @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] 77 21 52 0 ~
    # Prevent them from teleporting back from the destination port until they move away
    tag @a[tag=new_wasteland_warped] add wasteland_warped
    # They're not new anymore
    tag @a remove new_wasteland_warped

# Port number 2
    execute positioned 77 21 52 run tag @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] add new_wasteland_warped
    execute positioned 77 21 52 run tp @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] 77 21 50 180 ~
    tag @a[tag=new_wasteland_warped] add wasteland_warped
    tag @a remove new_wasteland_warped

# Port number 3
    execute positioned 75 21 47 run tag @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] add new_wasteland_warped
    execute positioned 75 21 47 run tp @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] 75 26 53 -90 ~
    tag @a[tag=new_wasteland_warped] add wasteland_warped
    tag @a remove new_wasteland_warped

# Port number 4
    execute positioned 75 26 53 run tag @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] add new_wasteland_warped
    execute positioned 75 26 53 run tp @a[tag=player, tag=alive, tag=!wasteland_warped, distance=...3] 75 21 47 -90 ~
    tag @a[tag=new_wasteland_warped] add wasteland_warped
    tag @a remove new_wasteland_warped

# Players can warp again after moving away from the destination port
    execute as @a[tag=wasteland_warped] at @s unless entity @e[tag=wasteland_port, distance=..1] run tag @s remove wasteland_warped
