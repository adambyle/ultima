# Use shorthand tags
    tag @a remove watching
    tag @a[tag=player] add watching
    tag @a[tag=spectator, gamemode=spectator] add watching

# Run respective functions for whether the game is running
    execute if score .game_state flag = flag.game_state.inactive const run function ult:tick/inactive
    execute if score .game_state flag = flag.game_state.active const run function ult:tick/active
    execute if score .game_state flag = flag.game_state.voting const run function ult:tick/voting

# Manage player menus
    execute as @a run function ult:settings/player/driver

# Reset blocks and prevent griefing
    # Reset the pressure plate for when players step on it
    setblock 45 31 -3 polished_blackstone_pressure_plate[powered=false]
    # Reset potted plants, which can be interacted with in adventure modes
    setblock 47 31 -8 potted_cactus
    setblock 43 31 -13 potted_cactus
    setblock 43 31 -8 potted_cactus
    setblock 47 31 -13 potted_cactus
    clear @a[team=lobby] cactus
    # Prevent accidental explosions (for development)
    kill @e[type=tnt]
    kill @e[type=tnt_minecart]
    kill @e[type=creeper]
    # Freeze item frames, except for when the developer is near
    execute as @e[type=item_frame] run data merge entity @s {Fixed: true, Invulnerable: true}
    execute as @e[type=item_frame] at @s if entity @a[gamemode=creative, tag=operator, distance=..8] run data merge entity @s {Fixed: false}
    execute as @e[type=painting] run data merge entity @s {Invulnerable: true}
    # Force item frames to float, even when the developer is near
    execute as @e[type=item_frame] at @s if block ^ ^ ^-1 air run data merge entity @s {Fixed: true}
    # Make item frames invisible when occupied
    execute as @e[type=item_frame] if data entity @s Item run data merge entity @s {Invisible: true}
    execute as @e[type=item_frame] unless data entity @s Item run data merge entity @s {Invisible: false}
    # Don't allow item frames and paintings to be destroyed by cleanup code
    tag @e[type=item_frame] add static
    tag @e[type=painting] add static
    # Don't allow items from hotbar settings in player inventory
    execute as @a[team=lobby] unless score @s menu = menu.hotbar_workspace const run clear @s #ult:map_items/all

# Fix spectator teleport error
    execute positioned 45 30 -12 as @a[gamemode=spectator, distance=..4] run function ult:tp

# Store altitude and reflect arrows
    # Get NBT data and store
    execute as @a store result score @s altitude run data get entity @s Pos[1]
    execute as @e[type=#ult:projectiles] store result score @s altitude run data get entity @s Pos[1]
    execute as @e[type=#ult:projectiles] store result score @s var run data get entity @s Motion[1]
    # Reflect projectiles that are at Y=35 and above, that have not already been reflected, that are traveling upward
    execute as @e[type=#ult:projectiles, tag=!deflected, scores={altitude=35.., var=0..}] at @s run function ult:tech/projectile_deflect

# Dynamic opting with actions
    # Players can exit their game mode
    execute if score .game_state flag = flag.game_state.active const if score .game_mode flag = flag.game_mode.duels const as @a[tag=player] if score @s action = action.change_modes const run function ult:settings/mode/change
    # Players can opt out mid-game
    execute as @a[tag=player] if score @s action = action.opt_out const run function ult:settings/opt/out
    # Spectators can return to lobby
    execute as @a[gamemode=spectator] if score @s action = action.tp_lobby const run function ult:lobby
    # Players can unready
    execute if score .game_state flag = flag.game_state.inactive const as @a[tag=player, tag=ready] if score @s action = action.unready const run function ult:start/ready/unready
    # Reset game
    execute unless score .game_state flag = flag.game_state.inactive const as @a if score @s action = action.reset const run function ult:reset
    # Change vote
    execute if score .map_mode flag = flag.map_mode.vote const unless score .game_state flag = flag.game_state.active const as @a[tag=player] if score @s action = action.change_vote const run function ult:settings/player/vote
    # Reset and enable action triggers
    scoreboard players reset * action
    scoreboard players enable @a action

# Tag online players
    scoreboard players reset * online
    scoreboard players set @a online 1

# AFK handler
    # Get rotation, then see if the rotation matches value from previous tick
    execute as @a store result score @s var run data get entity @s Rotation[0]
    # If the values match, then player has not moved, and is a candidate for being AFK
    tag @a remove temp
    execute as @a[gamemode=adventure] if score @s var = @s rotation run tag @s add temp
    # Reset the AFK timer of non-AFK players
    scoreboard players set @a[tag=!temp] afk 0
    # Players who just moved this tick should no longer be AFK-tagged
    tag @a[tag=!temp] remove afk
    # AFK players have their timer incremented
    scoreboard players add @a[tag=temp] afk 1
    # Handle AFK timers
    execute as @a[tag=player, scores={afk=1..}] run function ult:tech/afk/handler
    # Show AFK warnings
    execute as @a[tag=alive] run function ult:tech/afk/warning
    # Update rotation
    execute as @a run scoreboard players operation @s rotation = @s var

# Send command feedback
    execute if score .debug_mode flag = bool.true const run gamerule sendCommandFeedback true
    execute unless score .debug_mode flag = bool.true const run gamerule sendCommandFeedback false

# Reset event-detection objectives
    scoreboard players reset * damage_dealt
    scoreboard players reset * damage_taken
    scoreboard players reset * event.rabbit
    scoreboard players reset * event.salmon
    scoreboard players reset * event.debris
    scoreboard players reset * event.diamond
    scoreboard players reset * event.sh.brown
    scoreboard players reset * event.sh.red
    scoreboard players reset * event.sh.crimson
    scoreboard players reset * event.sh.warped
    scoreboard players reset * jump
    # Deal with crouch stages
    execute as @a[scores={crouch=0}] run scoreboard players operation @s crouch_mode = crouch_mode.not_crouching const
    execute as @a[scores={crouch=1..}] if score @s crouch_mode = crouch_mode.crouch_pressed const run scoreboard players operation @s crouch_mode = crouch_mode.crouch_held const
    execute as @a[scores={crouch=1..}] if score @s crouch_mode = crouch_mode.not_crouching const run scoreboard players operation @s crouch_mode = crouch_mode.crouch_pressed const
    scoreboard players set @a crouch 0
    # Set health displays
    execute as @a[tag=alive] if score @s health matches 0.. run scoreboard players operation @s health_display = @s health

# Update player positions
    execute as @a run function ult:data/player/update_pos

# Marker debugging
    # Show marker locations
    execute if score .debug_mode flag = bool.true const at @e[type=marker] run particle composter ~ ~ ~ 0 0 0 0 0 force
    execute if score .debug_mode flag = bool.true const at @e[type=area_effect_cloud] run particle enchanted_hit ~ ~ ~ 0 0 0 0 0 force
    # Count number of stray untagged markers
    execute store result score .temp var if entity @e[type=marker, tag=]
    # Display number if greater than 1
    execute if score .temp var matches 2.. run tellraw @a[tag=operator] {"score": {"name": ".temp", "objective": "var"}}
    # Display NBT if number is 1
    execute if score .temp var matches 1 run tellraw @a[tag=operator] {"entity": "@e[type=marker, limit=1, tag=]", "nbt": "{}"}
    # Kill strays
    kill @e[type=marker, tag=]
    # Fix respawn marker glitch
    team join respawn_marker @e[tag=respawn_marker]
