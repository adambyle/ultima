# Clear schedules
    schedule clear ult:reset
    schedule clear ult:start/start
    schedule clear ult:spawn/duels
    schedule clear ult:start/lighting
    schedule clear ult:start/ready/timer

# Reset scoreboard
    # Clear entire objectives
    scoreboard players reset * _var
    scoreboard players reset * action
    scoreboard players reset * afk
    scoreboard players reset * altitude
    scoreboard players reset * crouch
    scoreboard players reset * crouch_mode
    scoreboard players reset * damage_dealt
    scoreboard players reset * damage_taken
    scoreboard players reset * death
    scoreboard players reset * death_cause
    scoreboard players reset * event
    scoreboard players reset * event.debris
    scoreboard players reset * event.rabbit
    scoreboard players reset * event.rune
    scoreboard players reset * event.salmon
    scoreboard players reset * event.skill
    scoreboard players reset * event.skill_inc
    scoreboard players reset * health
    scoreboard players reset * health_display
    scoreboard players reset * kill
    scoreboard players reset * pn
    scoreboard players reset * respawn
    scoreboard players reset * queue
    scoreboard players reset * rotation
    scoreboard players reset * score
    scoreboard players reset * tether
    scoreboard players reset * vote
    # Set proper flags
    scoreboard players operation .game_state flag = flag.game_state.inactive const
    # Set displays
    scoreboard objectives setdisplay belowName
    scoreboard objectives setdisplay list
    scoreboard objectives setdisplay sidebar wins

# Reset players
    gamemode adventure @a
    xp set @a 0 levels
    xp set @a 0 points
    execute as @a run attribute @s generic.armor base set 0
    execute as @a run attribute @s generic.armor_toughness base set 0
    execute as @a run attribute @s generic.max_health base set 20
    execute as @a run attribute @s generic.attack_speed base set 4
    execute as @a run attribute @s generic.attack_damage base set 1
    execute as @a run attribute @s generic.movement_speed base set 0.1
    spawnpoint @a 45 30 -12 0
    # Reset tags
    tag @a remove ready
    tag @a remove alive
    tag @a remove change_modes
    tag @a remove fresh
    tag @a remove participating
    execute as @a[team=!lobby] run function ult:lobby
    execute as @a[gamemode=spectator] run function ult:lobby
    # Reset inventories
    clear @a
    effect clear @a
    effect give @a instant_health 1 2 true
    # Prepare new players
    tag @a[tag=!player, tag=!spectator] add player
    scoreboard players reset * online
    scoreboard players set @a online 1

# Reset game settings
    difficulty peaceful
    gamerule keepInventory true
    time set noon

# Clean up entities
    kill @e[type=!player, tag=!static, tag=!text_display]
    kill @e[type=item, tag=static]

# Prepare displays
    bossbar set ult:game_start visible false
    execute as @a run function ult:settings/player/main
    execute as @e[tag=last_stand_skill] run data modify entity @s CustomNameVisible set value false
    execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value true
    title @a actionbar ""

# Prepare lobby
    setblock 43 31 -9 polished_blackstone_button[face=floor, facing=west, powered=false]
    data remove block 43 31 -12 Lock
    data modify block 51 30 -20 Page set value 0
    data modify block 51 30 -18 Page set value 0
    function ult:data/map/display
    function ult:data/mode/display
    function ult:settings/map/main
    # Eject voters
    execute as @e[tag=vote_station] at @s as @a[distance=..2] run function ult:settings/player/vote/exit

# Debug
    tellraw @a [{"text": "If you run into any bugs, report them "}, {"text": "on GitHub.", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/beegyfleeg/ultima/issues"}}]
    execute if score .debug_mode flag = flag.debug_mode.on const run tellraw @a[tag=operator] [{"text": "DEBUG MODE IS ON!\n", "color": "yellow"}, {"text": "Click to turn it off.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/scoreboard players operation .debug_mode flag = flag.debug_mode.off const"}}]
