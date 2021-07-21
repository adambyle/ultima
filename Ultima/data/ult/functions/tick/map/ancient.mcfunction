# Give ingots to players who mine ancient debris
    execute as @a[scores={event.debris=1..}] run function ult:tick/map/ancient/give_ingot
    scoreboard players reset * event.debris

# Detect selecting ingot while crouching (the hand matters)
    scoreboard players set @a _var 0
    execute as @a if score @s crouch_mode = crouch_mode.crouch_pressed const if data entity @s {SelectedItem: {id: "minecraft:netherite_ingot"}} run scoreboard players set @s _var 1
    execute as @a if score @s crouch_mode = crouch_mode.crouch_pressed const if data entity @s {Inventory: [{id: "minecraft:netherite_ingot", Slot: -106b}]} run scoreboard players set @s _var 2

# If it was held and crouched in either hand, apply the ingot
    execute as @a[scores={_var=1..}] run function ult:tick/map/ancient/upgrade

# Shoot a fireball
    execute as @a[nbt={SelectedItem: {id: "minecraft:fire_charge"}}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s anchored eyes run function ult:tick/map/ancient/fireball
    execute as @a[nbt={Inventory: [{id: "minecraft:fire_charge", Slot: -106b}]}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s anchored eyes run function ult:tick/map/ancient/fireball

# Fireball explosion handler
    tag @e remove exploded
    # Fireballs can collide
    execute as @e[type=fireball] at @s if entity @e[type=fireball, distance=0.01..5] run function ult:tick/map/ancient/explode
    # Catch trackers up to fireballs
    execute as @e[type=fireball] at @s run tp @e[sort=nearest, limit=1, tag=fireball_tracker, distance=..3] @s
    # If a tracker loses track of its fireball, explode
    execute as @e[tag=fireball_tracker] at @s unless entity @e[type=fireball, distance=..1] run function ult:tick/map/ancient/explode
