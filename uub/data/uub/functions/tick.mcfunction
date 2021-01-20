# Run respective functions for whether the game is running
execute if score #flag game_state matches 0 run function uub:tick/inactive
execute if score #flag game_state matches 1 run function uub:tick/active

# Deal with trigger actions and reset some objectives
scoreboard players set @a action 0
scoreboard players enable @a action
scoreboard players set @a dmg 0

# Run timeouts
execute if score #timeout game_mode matches 1.. run scoreboard players remove #timeout game_mode 1

# Reset blocks
setblock 45 31 -3 polished_blackstone_pressure_plate[powered=false]
setblock 47 31 -8 potted_cactus
setblock 43 31 -13 potted_cactus
setblock 43 31 -8 potted_cactus
setblock 47 31 -13 potted_cactus

# Special boss death sequence
execute if score #flag game_state matches 2 if score #flag game_mode = #boss game_mode run function uub:tick/boss_death

# Fix teleport error
execute positioned 45 30 -12 as @a[gamemode=spectator,distance=..4] run function uub:tp
