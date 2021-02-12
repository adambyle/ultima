# Run respective functions for whether the game is running
execute if score #flag game_state matches 0 run function uub:tick/inactive
execute if score #flag game_state matches 1 run function uub:tick/active

# Manage player menus
scoreboard players set @a _var 0
scoreboard players set @a[tag=spectator] _var 1
execute if score #flag game_state matches 0 run scoreboard players set @a _var 1
execute as @a[tag=player,scores={_var=1}] if score @s menu = #main menu unless data entity @s EnderItems[{id:"minecraft:red_terracotta"}] run function uub:settings/opt/out
execute as @a[tag=spectator,scores={_var=1}] if score @s menu = #main menu unless data entity @s EnderItems[{id:"minecraft:gray_terracotta"}] run function uub:settings/opt/in
execute as @a if score @s menu = #main menu unless data entity @s EnderItems[{id:"minecraft:stone_sword"}] unless data entity @s EnderItems[{id:"minecraft:golden_sword"}] unless data entity @s EnderItems[{id:"minecraft:netherite_sword"}] run function uub:settings/ender_chest/auto_ready
execute as @a[scores={_var=1}] if score @s menu = #main menu if score #flag map = #select map unless data entity @s EnderItems[{id:"minecraft:golden_apple"}] run function uub:settings/ender_chest/hotbar
execute as @a[scores={_var=1}] if score @s menu = #main menu run function uub:settings/ender_chest/main
execute as @a[scores={_var=1}] if score @s menu = #hotbar menu run function uub:settings/ender_chest/hotbar/gray_out
execute as @a[scores={_var=1}] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id:"minecraft:emerald"}] run function uub:settings/ender_chest/hotbar/verify
execute as @a[scores={_var=1}] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id:"minecraft:lava_bucket"}] run function uub:settings/ender_chest/hotbar
execute as @a[scores={_var=1}] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id:"minecraft:structure_void"}] run function uub:settings/ender_chest/main

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

# Deflect arrows
execute as @e[type=#uub:projectiles] store result score @s altitude run data get entity @s Pos[1]
execute as @e[type=#uub:projectiles,scores={altitude=35..},tag=!deflected] at @s run function uub:tick/projectile_deflect

# Track voting stations
execute as @e[tag=vote_station] at @s if entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s _var 1
execute as @e[tag=vote_station] at @s unless entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s _var 0

# Dynamic opting
execute as @a[tag=player,scores={action=2}] run function uub:settings/opt/out
execute as @a[tag=spectator,scores={action=3}] run function uub:tp/lobby

# Deal with trigger actions and reset some objectives
scoreboard players set @a action 0
scoreboard players enable @a action
scoreboard players set @a dmg 0

# AFK handling
tag @a remove afk
