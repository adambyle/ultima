# Run respective functions for whether the game is running
    execute if score .game_state flag = flag.game_state.inactive const run function ult:tick/inactive
    execute if score .game_state flag = flag.game_state.active const run function ult:tick/active

# Manage player menus
    execute as @a run function ult:settings/ender_chest/driver
    
# Reset blocks and prevent griefing
    # Reset the pressure plate for when players step on it
    setblock 45 31 -3 polished_blackstone_pressure_plate[powered=false]
    # Reset potted plants, which can be interacted with in adventure modes
    setblock 47 31 -8 potted_cactus
    setblock 43 31 -13 potted_cactus
    setblock 43 31 -8 potted_cactus
    setblock 47 31 -13 potted_cactus
    clear @a cactus
    setblock 59 12 -54 potted_cornflower
    setblock 59 12 -49 potted_cornflower
    clear @a cornflower
    # Prevent accidental explosions (for development)
    kill @e[type=tnt]
    kill @e[type=tnt_minecart]
    kill @e[type=creeper]
    # Freeze item frames, except for when the developer is near
    execute as @e[type=item_frame] run data merge entity @s {Invulnerable: true, Fixed: true}
    execute as @e[type=item_frame] at @s if entity @a[tag=operator, gamemode=creative, distance=..8] run data merge entity @s {Fixed: false}
    execute as @e[type=painting] run data merge entity @s {Invulnerable: true}
    # Force item frames to float, even when the developer is near
    execute as @e[type=item_frame] at @s if block ^ ^ ^-1 air run data merge entity @s {Fixed: true}
    # Make item frames invisible when occupied
    execute as @e[type=item_frame] if data entity @s Item run data merge entity @s {Invisible: true}
    execute as @e[type=item_frame] unless data entity @s Item run data merge entity @s {Invisible: false}
    # Don't allow item frames and paintings to be destroyed by cleanup code
    tag @e[type=item_frame] add static_item
    tag @e[type=painting] add static_item

# Fix spectator teleport error
    execute positioned 45 30 -12 as @a[gamemode=spectator, distance=..4] run function ult:tp

# Store altitude and reflect arrows
    # Get NBT data and store
    execute as @a store result score @s altitude run data get entity @s Pos[1]
    execute as @e[type=#ult:projectiles] store result score @s altitude run data get entity @s Pos[1]
    # Reflect projectiles that are at Y=35 and above, that have not already been reflected
    execute as @e[type=#ult:projectiles, scores={altitude=35..}, tag=!deflected] at @s run function ult:tick/action/projectile_deflect

# Dynamic opting with actions
    # Players can exit their game mode
    execute if score .game_mode flag = flag.game_mode.duels const as @a[scores={action=0}, tag=player] unless entity @a[tag=player, tag=change_modes] run function ult:tick/action/change_modes
    execute if score .game_mode flag = flag.game_mode.duels const as @a[scores={action=0}, tag=player, tag=!change_modes] if entity @a[tag=player, tag=change_modes] run function ult:tick/action/confirm_change_modes
    # Count down the time until the next opt prompt can be shown
    execute if score .opt_prompt control matches 1.. run scoreboard players remove .opt_prompt control 1
    # Players can opt out mid-game
    execute as @a[tag=player, scores={action=1}] run function ult:settings/opt/out
    # Spectators can return to lobby
    execute as @a[gamemode=spectator, scores={action=2}] run function ult:lobby
    # Players can unready
    execute if score .game_state flag = flag.game_state.inactive const as @a[tag=player, tag=ready, scores={action=3}] run function ult:start/ready/unready
    # Reset and enable action triggers
    scoreboard players reset * action
    scoreboard players enable @a action

# Tag online players
    scoreboard players reset * online
    scoreboard players set @a online 1

# AFK handler
    tag @a remove temp
    # Get rotation, then see if the rotation matches value from previous tick
    execute as @a store result score @s _var run data get entity @s Rotation[0]
    # If the values match, then player has not moved, and is a candidate for being AFK
    execute as @a[gamemode=adventure] if score @s _var = @s rotation run tag @s add temp
    # Reset the AFK timer of non-AFK players
    scoreboard players set @a[tag=!temp] afk 0
    # Players who just moved this tick should no longer be AFK-tagged
    tag @a[tag=!temp] remove afk
    # AFK players have their timer incremented
    scoreboard players add @a[tag=temp] afk 1
    # Handle AFK timers
    execute as @a[scores={afk=1..}, tag=player] run function ult:tick/action/afk_handler
    # Show AFK warnings
    execute as @a[tag=player, tag=alive] run function ult:tick/action/afk_warning

# Send command feedback
    execute if score .debug_mode flag matches 1 run gamerule sendCommandFeedback true
    execute unless score .debug_mode flag matches 1 run gamerule sendCommandFeedback false

# Parkour handler
    # Special particle effects at parkour entrance
    execute as @e[tag=parkour_particle] at @s run tp @s ~ ~ ~ ~10 ~
    execute at @e[tag=parkour_particle] positioned ~-.5 ~.2 ~ positioned ^ ^ ^.4 run particle reverse_portal 52 ~ ~ 0 1 0 0.2 0 force
    execute at @e[tag=parkour_particle] positioned ~-.5 ~.2 ~ positioned ^ ^ ^-.4 run particle reverse_portal 52 ~ ~ 0 1 0 0.2 0 force
    # Enter the parkour
    execute positioned 52 30 -19 as @a[distance=...5] run function ult:parkour/enter
    # Increment timers
    scoreboard players add @a[tag=timed] timer 1
    # Further per-player handling in another function
    execute as @a[tag=parkour, gamemode=adventure] run function ult:parkour/handler

# Reset event-detection objectives
    scoreboard players reset * damage_dealt
    scoreboard players reset * damage_taken
    scoreboard players reset * x.rabbit
    scoreboard players reset * x.salmon
    # Deal with crouch stages
    scoreboard players set @a[scores={crouch=0}] crouch_mode 0
    scoreboard players set @a[scores={crouch=1.., crouch_mode=1}] crouch_mode 2
    scoreboard players set @a[scores={crouch=1.., crouch_mode=0}] crouch_mode 1
    scoreboard players set @a crouch 0
    # Set health displays
    execute as @a[tag=player, tag=alive] run scoreboard players operation @s health_display = @s health

# Update player positions
    execute as @a run function ult:data/player/update_pos

# Area Effect Cloud debugging
    # Show AEC locations
    execute if score .debug_mode flag matches 1 at @e[type=marker] run particle composter ~ ~ ~ 0 0 0 0 0 force
    # Count number of stray untagged AECs
    execute store result score .temp _var if entity @e[type=marker, tag=]
    # Display number if greater than 1
    execute if score .temp _var matches 2.. run tellraw @a[tag=operator] {"score": {"name": ".temp", "objective": "_var"}}
    # Display NBT if number is 1
    execute if score .temp _var matches 1 run tellraw @a[tag=operator] {"entity": "@e[type=marker, limit=1, tag=]", "nbt": "{}"}
    # Kill strays
    kill @e[type=marker, tag=]
