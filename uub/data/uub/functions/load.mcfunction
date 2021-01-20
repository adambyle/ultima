execute if score #debug game_state matches 1 run tellraw beegyfleeg [{"text": "DEBUG MODE IS ON!\n","color": "yellow"},{"text": "Click to turn it off.","underlined": true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #debug game_state 0"}}]

# Increase the session number and assign it to each player
scoreboard players add #server game_id 1
scoreboard players operation @a game_id = #server game_id

# Declare scoreboard objectives
function uub:declarations/base
function uub:declarations/hotbar
function uub:declarations/stats

# Set displays
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

# Configure bossbars
bossbar set uub:boss visible false
bossbar set uub:game_start visible false
bossbar set uub:boss players @a
bossbar set uub:game_start players @a

# Reset settings
difficulty peaceful
time set noon
clear @a
effect clear @a
gamemode adventure @a
xp set @a 0 levels
xp set @a 0 points

# Initialize new players
execute as @a[tag=!playing,tag=!spectator] run function uub:settings/opt/in
tag @a remove alive
tag @a remove in_lobby

# Set up the lobby displays
execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value true
function uub:data/map_display

# Cleanup
spawnpoint @a 45 30 -12 0
kill @e[tag=!static_item,tag=!text_display]

# Initialize scoreboard values
scoreboard players set @a score 0
scoreboard players set @a pn 0
scoreboard players set @a tether 0
scoreboard players set @a bool.die 0
scoreboard players set @a bool.kill 0
scoreboard players set @a ready 0
scoreboard players set @a load 0
scoreboard players set #flag game_state 0

# Remove temporary tags
tag @a remove dead_boss

# Disable PvP
team join lobby @a

# Clear all schedules
schedule clear uub:load
schedule clear uub:start/start
schedule clear uub:spawn/duels
schedule clear uub:spawn/next
schedule clear uub:start/ready/timer
scoreboard players set #timeout game_mode 0
