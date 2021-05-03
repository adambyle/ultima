# Run respective functions for whether the game is running
execute if score #flag game_state matches 0 run function ult:tick/inactive
execute if score #flag game_state matches 1 run function ult:tick/active

# Manage player menus
tag @a remove menu_operator
tag @a[tag=spectator, gamemode=!creative] add menu_operator
tag @a[tag=player, tag=!alive, gamemode=!creative] add menu_operator
execute if score #flag game_state matches 0 run tag @a[gamemode=!creative] add menu_operator
execute as @a[tag=player,tag=menu_operator] if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:lime_terracotta"}] run function ult:settings/opt/out
execute as @a[tag=spectator,tag=menu_operator] if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:gray_terracotta"}] run function ult:settings/opt/in
execute as @a if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:stone_sword"}] unless data entity @s EnderItems[{id: "minecraft:golden_sword"}] unless data entity @s EnderItems[{id: "minecraft:netherite_sword"}] run function ult:settings/ender_chest/auto_ready
execute as @a if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:paper"}] unless data entity @s EnderItems[{id: "minecraft:jukebox"}] unless data entity @s EnderItems[{id: "minecraft:barrier"}] run function ult:settings/ender_chest/vote_skip
execute as @a if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:player_head"}] unless data entity @s EnderItems[{id: "minecraft:skeleton_skull"}] unless data entity @s EnderItems[{id: "minecraft:wither_skeleton_skull"}] unless data entity @s EnderItems[{id: "minecraft:zombie_head"}] run function ult:settings/ender_chest/afk
execute as @a[tag=menu_operator] if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:golden_apple"}] run function ult:settings/ender_chest/hotbar
execute as @a[tag=menu_operator] if score @s menu = #main menu unless data entity @s EnderItems[{id: "minecraft:ender_eye"}] run function ult:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #main menu run function ult:settings/ender_chest/main
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu run function ult:settings/ender_chest/hotbar/gray_out
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id: "minecraft:emerald"}] run function ult:settings/ender_chest/hotbar/verify
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id: "minecraft:lava_bucket"}] run function ult:settings/ender_chest/hotbar/general
execute as @a[tag=menu_operator] if score @s menu = #hotbar menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/ender_chest/hotbar
execute as @a[tag=menu_operator] if score @s menu = #spectate menu unless data entity @s EnderItems[{id: "minecraft:dragon_egg"}] run function ult:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #spectate menu unless data entity @s EnderItems[{id: "minecraft:skeleton_skull"}] run function ult:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #spectate menu unless data entity @s EnderItems[{id: "minecraft:red_bed"}] run function ult:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #spectate menu unless data entity @s EnderItems[{id: "minecraft:ender_eye"}] run function ult:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #spectate menu unless data entity @s EnderItems[{id: "minecraft:crafting_table"}] run function ult:settings/ender_chest/spectate
execute as @a[tag=menu_operator] if score @s menu = #spectate menu run function ult:settings/ender_chest/spectate/driver
execute as @a[tag=menu_operator] if score @s menu = #spectate menu unless data entity @s EnderItems[{id: "minecraft:structure_void"}] run function ult:settings/ender_chest/main
execute as @a[tag=menu_operator] if score @s menu = #hotbar_menu menu run function ult:settings/ender_chest/hotbar/driver

# Run timeouts
execute if score #timeout game_mode matches 1.. run scoreboard players remove #timeout game_mode 1

# Reset blocks
setblock 45 31 -3 polished_blackstone_pressure_plate[powered=false]
setblock 47 31 -8 potted_cactus
setblock 43 31 -13 potted_cactus
setblock 43 31 -8 potted_cactus
setblock 47 31 -13 potted_cactus
setblock 59 12 -54 potted_cornflower
setblock 59 12 -49 potted_cornflower
kill @e[type=tnt]
kill @e[type=tnt_minecart]
execute as @e[type=item_frame] run data merge entity @s {Invulnerable: true, Fixed: true}
execute as @e[type=item_frame] at @s if entity @a[name="bgfl", gamemode=creative, distance=..8] run data merge entity @s {Fixed: false}
execute as @e[type=item_frame] at @s if block ^ ^ ^-1 air run data merge entity @s {Fixed: true}
execute as @e[type=item_frame] if data entity @s Item run data merge entity @s {Invisible: true}
execute as @e[type=item_frame] unless data entity @s Item run data merge entity @s {Invisible: false}
tag @e[type=item_frame] add static_item
tag @e[type=painting] add static_item

# Fix teleport error
execute positioned 45 30 -12 as @a[gamemode=spectator,distance=..4] run function ult:tp

# Deflect arrows
execute as @a store result score @s altitude run data get entity @s Pos[1]
execute as @e[type=#ult:projectiles] store result score @s altitude run data get entity @s Pos[1]
execute as @e[type=#ult:projectiles,scores={altitude=35..},tag=!deflected] at @s run function ult:tick/action/projectile_deflect

# Track voting stations
execute as @e[tag=vote_station] at @s if entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s _var 1
execute as @e[tag=vote_station] at @s unless entity @a[gamemode=adventure,distance=..1] run scoreboard players set @s _var 0

# Dynamic opting
execute if score #opt_prompt event matches 1.. run scoreboard players remove #opt_prompt event 1
execute as @a[tag=player,scores={action=2}] run function ult:settings/opt/out
execute as @a[gamemode=spectator,scores={action=3}] run function ult:tp/lobby
execute if score #flag game_state matches 0 as @a[tag=player, scores={ready=1, action=7}] run function ult:start/ready/unready
team join playing @a[tag=player, team=!lobby]
team leave @a[team=playing, tag=!player]

# Test for game end
execute if score #flag game_mode = #duels game_mode as @a[scores={action=1,game_mode=0},tag=player] if score #timeout game_mode matches 0 run function ult:tick/action/change_modes
execute if score #flag game_mode = #duels game_mode unless entity @a[scores={game_mode=0},tag=player] if score #timeout game_mode matches 1.. run function ult:tick/action/confirm_change_modes
execute if score #flag game_mode = #duels game_mode as @a[scores={action=1,game_mode=0},tag=player] if score #timeout game_mode matches 1.. run function ult:tick/action/confirm_change_modes

# Deal with trigger actions and reset some objectives
scoreboard players set @a action 0
scoreboard players enable @a action
scoreboard players reset * online
scoreboard players set @a online 1

# AFK handling
tag @e remove temp
tag @a remove temp
execute as @a store result score @s _var run data get entity @s Rotation[0]
execute as @a if score @s _var = @s rot run tag @s add temp
execute as @a store success score @s _var run scoreboard players operation @s rot = @s _var
tag @a[gamemode=!adventure] remove temp
scoreboard players set @a[tag=!temp] afk 0
tag @a[tag=!temp] remove afk
scoreboard players add @a[tag=temp] afk 1
tag @a[scores={afk=100..,y.afk=1}] add afk
tag @a[scores={afk=200..,y.afk=2}] add afk
tag @a[scores={afk=300..,y.afk=3}] add afk
execute as @a[tag=player,tag=alive,tag=afk] run function ult:settings/opt/out
scoreboard players set @a[tag=afk] afk 0
tag @a remove temp
tag @a[scores={afk=75..,y.afk=1}] add temp
tag @a[scores={afk=150..,y.afk=2}] add temp
tag @a[scores={afk=225..,y.afk=3}] add temp
title @a[tag=temp, tag=player, tag=alive] times 0 2 0
title @a[tag=temp, tag=player, tag=alive] subtitle {"text": "Move your camera", "color": "dark_red"}
title @a[tag=temp, tag=player, tag=alive] title {"text": "You are AFK!", "color": "dark_red", "bold": true}

# Ultimate mode block handling
fill -2 35 128 92 35 222 air replace #ult:breakable
fill -2 24 128 92 24 222 water replace air

# Send command feedback
execute if score #debug game_state matches 1 run gamerule sendCommandFeedback true
execute unless score #debug game_state matches 1 run gamerule sendCommandFeedback false

# Parkour handler
execute as @e[tag=parkour_particle] at @s run tp @s ~ ~ ~ ~10 ~
execute at @e[tag=parkour_particle] positioned ~-.5 ~.2 ~ positioned ^ ^ ^.4 run particle reverse_portal 52 ~ ~ 0 1 0 0.2 0 force
execute at @e[tag=parkour_particle] positioned ~-.5 ~.2 ~ positioned ^ ^ ^-.4 run particle reverse_portal 52 ~ ~ 0 1 0 0.2 0 force
execute positioned 52 30 -19 as @a[distance=...5] run function ult:parkour/enter
execute as @a[tag=parkour, scores={altitude=11}, gamemode=!creative, nbt={OnGround: true}] run function ult:parkour/tp
scoreboard players add @a[tag=timed] timer 1
execute as @a[tag=parkour, gamemode=adventure] run function ult:parkour/handler
tag @e[type=painting] add static_item
execute as @e[type=painting] run data merge entity @s {Invulnerable: true}

# Reset event-detection objectives
scoreboard players reset * x.damage
scoreboard players reset * x.damaged
scoreboard players reset * x.rabbit
scoreboard players set @a[scores={crouch=0}] x.crouch 0
scoreboard players set @a[scores={crouch=1.., x.crouch=1}] x.crouch 2
scoreboard players set @a[scores={crouch=1.., x.crouch=0}] x.crouch 1
scoreboard players set @a crouch 0

execute as @a run function ult:tick/action/update_pos
