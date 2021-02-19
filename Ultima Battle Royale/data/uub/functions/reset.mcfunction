reload

tag @a remove temp
tag @a add temp

# Clear all schedules
schedule clear uub:reset
schedule clear uub:start/start
schedule clear uub:spawn/duels
schedule clear uub:spawn/next
schedule clear uub:start/ready/timer
schedule clear uub:tick/opt_prompt/universal
scoreboard players set #timeout game_mode 0

# Reset settings
difficulty peaceful
time set noon
clear @a
effect clear @a
gamemode adventure @a
xp set @a 0 levels
xp set @a 0 points

# Disable PvP
team join lobby @a

# Initialize new players
execute as @a[tag=!player,tag=!spectator] run function uub:settings/opt/in
tag @a remove alive
tag @a remove fresh
tag @a remove participating

# Set up the lobby displays
execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value true
function uub:data/map_display
execute as @a run function uub:settings/ender_chest/main

# Cleanup
spawnpoint @a 45 30 -12 0
kill @e[tag=!static_item,tag=!text_display]

# Initialize scoreboard values
scoreboard players reset * score
scoreboard players set @a pn 0
scoreboard players set @a tether 0
scoreboard players set @a bool.die 0
scoreboard players set @a bool.kill 0
scoreboard players set @a ready 0
scoreboard players set @a load 0
scoreboard players set @a queue 0
scoreboard players set @a map 0
scoreboard players set #flag game_state 0
