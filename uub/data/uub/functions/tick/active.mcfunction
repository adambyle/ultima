# If any players join, have them sit out this game
execute as @a unless score @s game_id = #server game_id run function #uub:wrong_session

# Deal with invalid tags
tag @a[tag=player,gamemode=spectator] remove alive
tag @a[tag=spectator,gamemode=spectator] remove in_lobby

# Reload if a player has left the server
scoreboard players set #temp pn 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
execute unless score #temp pn = #server pn run function uub:load/player_left
execute if score #flag game_mode = #boss game_mode unless entity @a[team=boss] run function uub:load/player_left

# Check for player deaths
execute as @a[tag=alive,scores={bool.die=1..}] run function uub:death

# Clear unnecessary items
kill @e[type=item,tag=!static_item]
clear @a glass_bottle
kill @e[type=arrow,nbt={inGround:true}]

# Mode specific functions
execute if score #flag game_mode = #duels game_mode run function uub:tick/active/mode/duels
execute if score #flag game_mode = #boss game_mode run function uub:tick/active/mode/boss_rush

# Reset settings buttons
setblock 43 31 -9 air
data modify block 43 31 -12 Lock set value "Locked"

# Deflect arrows
execute as @e[type=#uub:projectiles] store result score @s altitude run data get entity @s Pos[1]
execute as @e[type=#uub:projectiles,scores={altitude=35..},tag=!deflected] at @s run function uub:tick/projectile_deflect
