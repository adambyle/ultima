# Clear all schedules
schedule clear uub:reset
schedule clear uub:start/start
schedule clear uub:spawn/duels
schedule clear uub:spawn/next
schedule clear uub:start/lighting
schedule clear uub:start/ready/timer
schedule clear uub:tick/action/opt_prompt/universal
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
scoreboard players reset * online
scoreboard players set @a online 1

# Set up the lobby displays
execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value true
function uub:data/map_display
execute as @a[tag=!parkour] run function uub:settings/ender_chest/main

# Cleanup
spawnpoint @a 45 30 -12 0
kill @e[tag=!static_item,tag=!text_display,type=!player]
kill @a[tag=player]
kill @a[tag=spectator, gamemode=spectator]

# Initialize scoreboard values
scoreboard players reset * score
title @a actionbar ""
execute as @a[tag=!parkour] run function uub:data/player/reset
scoreboard players set #flag game_state 0
scoreboard players set #opt_prompt event 0

# Clear blocks
fill -2 24 128 92 24 222 water replace #uub:breakable
fill -2 25 128 92 26 222 air replace #uub:breakable
fill -2 27 128 92 28 222 air replace #uub:breakable
fill -2 29 128 92 30 222 air replace #uub:breakable
fill -2 31 128 92 32 222 air replace #uub:breakable
fill -2 33 128 92 34 222 air replace #uub:breakable
fill -2 35 128 92 36 222 air replace #uub:breakable
execute as @e[tag=chest] at @s run function uub:chest/empty

# Initialize parkour records
execute unless data storage uub:players Global.Parkour.manor run data modify storage uub:players Global.Parkour.manor set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.woodlands run data modify storage uub:players Global.Parkour.woodlands set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.dungeon run data modify storage uub:players Global.Parkour.dungeon set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.abyss run data modify storage uub:players Global.Parkour.abyss set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.citadel run data modify storage uub:players Global.Parkour.citadel set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.reflection run data modify storage uub:players Global.Parkour.reflection set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.dracula run data modify storage uub:players Global.Parkour.dracula set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.avanto run data modify storage uub:players Global.Parkour.avanto set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}
execute unless data storage uub:players Global.Parkour.boxing run data modify storage uub:players Global.Parkour.boxing set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"Nobody"'}}

tellraw @a [{"text": "If you run into any bugs, report them "}, {"text": "on GitHub.", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/beegyfleeg/ultimaub/issues"}}]
