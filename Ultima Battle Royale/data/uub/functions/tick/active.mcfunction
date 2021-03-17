# If any players join, have them sit out this game
execute as @a unless score @s game_id = #server game_id run function uub:tick/wrong_session

# Players can spectate by pressing the start button
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p if entity @s[tag=spectator] run function uub:spectate

# Deal with invalid tags
tag @a[tag=player,gamemode=spectator] remove alive
team join lobby @a[tag=!player]

# Respawn
scoreboard players remove @a[tag=player, scores={respawn=1..}] respawn 1
execute as @a[scores={respawn=0}] run function uub:spawn
function uub:spawn/queue_advance

# Mode specific functions
execute if score #flag game_state matches 1 if score #flag game_mode = #duels game_mode run function uub:tick/active/mode/duels
execute if score #flag game_state matches 1 if score #flag game_mode = #royale game_mode run function uub:tick/active/mode/royale
execute if score #flag game_state matches 1 if score #flag game_mode = #brawl game_mode run function uub:tick/active/mode/brawl
execute if score #flag game_state matches 1 if score #flag game_mode = #ultimate game_mode run function uub:tick/active/mode/ultimate

# Map specific functions
execute if score #flag game_state matches 1 if score #server map matches 2 run function uub:tick/active/map/woodlands
execute if score #flag game_state matches 1 if score #server map matches 3 run function uub:tick/active/map/dungeon
execute if score #flag game_state matches 1 if score #server map matches 4 run function uub:tick/active/map/abyss
execute if score #flag game_state matches 1 if score #server map matches 5 run function uub:tick/active/map/citadel
execute if score #flag game_state matches 1 if score #server map matches 13 run function uub:tick/active/map/reflection
execute if score #flag game_state matches 1 if score #server map matches 14 run function uub:tick/active/map/dracula
execute if score #flag game_state matches 1 if score #server map matches 15 run function uub:tick/active/map/avanto
execute if score #flag game_state matches 1 if score #server map matches 16 run function uub:tick/active/map/boxing

# Clear unnecessary items
kill @e[type=item,tag=!static_item]
clear @a glass_bottle
kill @e[nbt={inGround:true},type=arrow]

# Reset settings buttons
setblock 43 31 -9 air
data modify block 43 31 -12 Lock set value "Locked"

# Players may sometimes lost their items
execute as @a[tag=player,tag=alive] run function uub:spawn/items/lost

# Check for player deaths
execute as @a[tag=player,sort=random] run function uub:death/test

# Reload if a player has left the server
scoreboard players set #temp pn 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
execute unless score #temp pn = #server pn run function uub:load/player_left
