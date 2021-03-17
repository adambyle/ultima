reload

# Clear all schedules
schedule clear uub:reset
schedule clear uub:start/start
schedule clear uub:spawn/duels
schedule clear uub:spawn/next
schedule clear uub:start/lighting
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
gamerule naturalRegeneration false
gamerule fallDamage false
gamerule keepInventory true

# Disable PvP
team join lobby @a

# Initialize new players
execute as @a[tag=!player,tag=!spectator] run function uub:settings/opt/in
tag @a remove alive
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

# Clear blocks
fill -2 24 128 92 24 222 water replace #uub:breakable
fill -2 25 128 92 26 222 air replace #uub:breakable
fill -2 27 128 92 28 222 air replace #uub:breakable
fill -2 29 128 92 30 222 air replace #uub:breakable
fill -2 31 128 92 32 222 air replace #uub:breakable
fill -2 33 128 92 34 222 air replace #uub:breakable
fill -2 35 128 92 36 222 air replace #uub:breakable
execute as @e[tag=chest] at @s run function uub:chest/empty