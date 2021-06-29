# Clear all schedules
schedule clear ult:reset
schedule clear ult:start/start
schedule clear ult:spawn/duels
schedule clear ult:spawn/next
schedule clear ult:start/lighting
schedule clear ult:start/ready/timer
schedule clear ult:tick/action/opt_prompt/universal

# Cleanup
spawnpoint @a 45 30 -12 0
kill @e[tag=!static_item, tag=!text_display, type=!player]
execute as @a[tag=player, team=!lobby] run function ult:lobby
execute as @a[gamemode=spectator] run function ult:lobby

# Reset settings
difficulty peaceful
time set noon
xp set @a 0 levels
xp set @a 0 points
gamerule keepInventory true
tag @a remove participating
effect give @a instant_health 1 2 true
scoreboard players reset @a map
scoreboard players reset * health_display

# Disable PvP
team join lobby @a

# Initialize new players
execute as @a[tag=!player, tag=!spectator] run function ult:settings/opt/in
scoreboard players reset * online
scoreboard players set @a online 1

# Set up the lobby displays
execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value true
execute as @a[tag=!parkour] run function ult:settings/ender_chest/main
bossbar set ult:game_start visible false
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay sidebar wins
scoreboard objectives setdisplay list
execute as @e[tag=last_stand_skill] run data modify entity @s CustomNameVisible set value false

# Initialize scoreboard values
scoreboard players reset * score
title @a actionbar ""
execute as @a[tag=!parkour] run function ult:data/player/reset
scoreboard players set .game_state flag 0
scoreboard players set .opt_prompt control 0

# Clear blocks
fill -2 24 128 92 24 222 water replace #ult:breakable
fill -2 25 128 92 26 222 air replace #ult:breakable
fill -2 27 128 92 28 222 air replace #ult:breakable
fill -2 29 128 92 30 222 air replace #ult:breakable
fill -2 31 128 92 32 222 air replace #ult:breakable
fill -2 33 128 92 34 222 air replace #ult:breakable
fill -2 35 128 92 36 222 air replace #ult:breakable
execute as @e[tag=chest] at @s run function ult:chest/empty

# Initialize parkour records
execute unless data storage ult:players Global.Parkour.manor run data modify storage ult:players Global.Parkour.manor set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}}
execute unless data storage ult:players Global.Parkour.woodlands run data modify storage ult:players Global.Parkour.woodlands set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}}
execute unless data storage ult:players Global.Parkour.dungeon run data modify storage ult:players Global.Parkour.dungeon set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}}
execute unless data storage ult:players Global.Parkour.abyss run data modify storage ult:players Global.Parkour.abyss set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}}
execute unless data storage ult:players Global.Parkour.citadel run data modify storage ult:players Global.Parkour.citadel set value {Half: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}, Full: {Time: 72000, UUID: [I; 0, 0, 0, 0], Name: '"(Nobody)"'}}

# Reset settings buttons
setblock 43 31 -9 polished_blackstone_button[powered=false, facing=west, face=floor]
data remove block 43 31 -12 Lock
execute unless score .game_mode flag matches 0.. run scoreboard players operation .game_mode flag = flag.game_mode.royale const
execute unless score .map_mode flag matches 0.. run scoreboard players operation .map_mode flag = flag.map_mode.selected const
execute unless score .map flag matches 0.. run scoreboard players set .map flag 1
execute if score .game_mode flag = flag.game_mode.duels const run data modify entity @e[tag=text_display.mode_name, limit=1] CustomName set value '{"text": "Duels", "color": "aqua", "italic": true}'
execute if score .game_mode flag = flag.game_mode.royale const run data modify entity @e[tag=text_display.mode_name, limit=1] CustomName set value '{"text": "Royale", "color": "aqua", "italic": true}'
execute if score .game_mode flag = flag.game_mode.brawl const run data modify entity @e[tag=text_display.mode_name, limit=1] CustomName set value '{"text": "Brawl", "color": "aqua", "italic": true}'
function ult:data/map/map_display

tellraw @a [{"text": "If you run into any bugs, report them "}, {"text": "on GitHub.", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://github.com/beegyfleeg/ultima/issues"}}]
execute if score .debug_mode flag = flag.debug_mode.on const run tellraw @a[tag=operator] [{"text": "DEBUG MODE IS ON!\n", "color": "yellow"}, {"text": "Click to turn it off.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/scoreboard players set .debug_mode flag 0"}}]

function ult:settings/map/main
