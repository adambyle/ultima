function ult:data/root

# If the first online, reset the world
    execute unless entity @a[tag=!root] run function ult:reset

# Reset objectives
    scoreboard players reset @s action
    scoreboard players reset @s afk
    scoreboard players reset @s damage_taken
    scoreboard players reset @s damage_dealt
    scoreboard players reset @s death
    scoreboard players reset @s health
    scoreboard players reset @s health_display
    scoreboard players reset @s hotbar_map
    scoreboard players reset @s kill
    scoreboard players reset @s menu
    scoreboard players reset @s pn
    scoreboard players reset @s respawn
    scoreboard players reset @s queue
    scoreboard players reset @s score
    scoreboard players reset @s tether
    scoreboard players reset @s vote

# Reset tags
    tag @s remove alive
    tag @s remove change_modes
    tag @s remove fresh
    tag @s remove participating

# Setup player menu
    function ult:settings/player/main

# Remove accidental operator permissions
    function ult:load/deop

# Make sure bossbar is visible
    bossbar set ult:game_start players @a

# For first timers
    execute as @s[tag=!played_ultima] run function ult:join/first_time_playing

# Reset everybody's wins
    scoreboard players reset * wins
    scoreboard players set @a wins 0

# Update name
    function ult:data/player/get
    item modify block 0 0 0 container.0 ult:tech/name
    data modify storage ult:temp Player.Name set from block 0 0 0 Items[0].tag.display.Name
    function ult:data/player/save
