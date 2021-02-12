# If any players join, have them sit out this game
execute as @a unless score @s game_id = #server game_id run function #uub:wrong_session

# Players can spectate by pressing the start button
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function uub:spectate

# Deal with invalid tags
tag @a[tag=player,gamemode=spectator] remove alive
team join lobby @a[tag=!player]

# Check for player deaths
execute as @a[tag=player,sort=random] run function uub:death/test

# Clear unnecessary items
kill @e[type=item,tag=!static_item]
clear @a glass_bottle
kill @e[nbt={inGround:true},type=arrow]

# Reset settings buttons
setblock 43 31 -9 air
data modify block 43 31 -12 Lock set value "Locked"

# Players may sometimes lost their items
execute as @a[tag=player,team=!boss,tag=alive] run function uub:spawn/items/lost

# Mode specific functions
execute if score #flag game_mode = #duels game_mode run function uub:tick/active/mode/duels
execute if score #flag game_mode = #boss game_mode run function uub:tick/active/mode/boss_rush
execute if score #flag game_mode = #royale game_mode run function uub:tick/active/mode/royale

# Map specific functions
execute if score #server map matches 2 run function uub:tick/active/map/woodlands

# Reload if a player has left the server
scoreboard players set #temp pn 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
execute unless score #temp pn = #server pn run function uub:load/player_left
