# Run respective functions for whether the game is running
execute if score #flag game_state matches 0 run function uub:tick/inactive
execute if score #flag game_state matches 1 run function uub:tick/active
execute if score #flag game_state matches 3 run function uub:tick/active

# Manage player menus
tag @a remove menu_operator
tag @a[tag=spectator, gamemode=!creative] add menu_operator
execute if score #flag game_state matches 0 run tag @a[gamemode=!creative] add menu_operator
execute as @a[tag=player,tag=menu_operator] if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:red_terracotta"}] run function uub:settings/opt/out
execute as @a[tag=spectator,tag=menu_operator] if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:gray_terracotta"}] run function uub:settings/opt/in
execute as @a if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:stone_sword"}] unless data entity @s EnderItems[{id: "minecraft:golden_sword"}] unless data entity @s EnderItems[{id: "minecraft:netherite_sword"}] run function uub:settings/ender_chest/auto_ready
execute as @a if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:player_head"}] unless data entity @s EnderItems[{id: "minecraft:skeleton_skull"}] unless data entity @s EnderItems[{id: "minecraft:wither_skeleton_skull"}] unless data entity @s EnderItems[{id: "minecraft:zombie_head"}] run function uub:settings/ender_chest/afk
execute as @a[tag=menu_operator] if score @s menu = #main menu if score #flag map = #select map unless data entity @s EnderItems[{id: "minecraft:golden_apple"}] run function uub:settings/ender_chest/hotbar
execute as @a[tag=menu_operator] if score @s menu = #main menu if score #flag map = #select map unless data entity @s EnderItems[{id: "minecraft:ender_eye"}] run function uub:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #main menu run function uub:settings/ender_chest/main
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu run function uub:settings/ender_chest/hotbar/gray_out
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id: "minecraft:emerald"}] run function uub:settings/ender_chest/hotbar/verify
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id: "minecraft:lava_bucket"}] run function uub:settings/ender_chest/hotbar
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function uub:settings/ender_chest/main

# Run timeouts
execute if score #timeout game_mode matches 1.. run scoreboard players remove #timeout game_mode 1

# Reset blocks
setblock 45 31 -3 polished_blackstone_pressure_plate[powered=false]
setblock 47 31 -8 potted_cactus
setblock 43 31 -13 potted_cactus
setblock 43 31 -8 potted_cactus
setblock 47 31 -13 potted_cactus

# Fix teleport error
execute positioned 45 30 -12 as @a[gamemode=spectator,distance=..4] run function uub:tp

# Deflect arrows
execute as @a store result score @s altitude run data get entity @s Pos[1]
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
tag @e remove temp
tag @a remove temp
execute as @a store result score @s _var run data get entity @s Rotation[0]
execute as @a if score @s _var = @s rot.horizontal run tag @s add temp
execute as @a store success score @s _var run scoreboard players operation @s rot.horizontal = @s _var
tag @a[gamemode=!adventure] remove temp
scoreboard players set @a[tag=!temp] afk 0
tag @a[tag=!temp] remove afk
scoreboard players add @a[tag=temp] afk 1
tag @a[scores={afk=100..,y.afk=1}] add afk
tag @a[scores={afk=200..,y.afk=2}] add afk
tag @a[scores={afk=300..,y.afk=3}] add afk
execute as @a[tag=player,tag=alive,tag=afk] run function uub:settings/opt/out
scoreboard players set @a[tag=afk] afk 0
tag @a remove temp
tag @a[scores={afk=75..,y.afk=1}] add temp
tag @a[scores={afk=150..,y.afk=2}] add temp
tag @a[scores={afk=225..,y.afk=3}] add temp
title @a[tag=temp, tag=player, tag=alive] times 0 2 0
title @a[tag=temp, tag=player, tag=alive] subtitle {"text": "Move your camera", "color": "dark_red"}
title @a[tag=temp, tag=player, tag=alive] title {"text": "You are AFK!", "color": "dark_red", "bold": true}

# Ultimate mode block handling
fill -2 35 128 92 35 222 air replace #uub:breakable
fill -2 24 128 92 24 222 water replace air

# Send command feedback
execute if score #debug game_state matches 1 run gamerule sendCommandFeedback true
execute unless score #debug game_state matches 1 run gamerule sendCommandFeedback false
