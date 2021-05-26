# Handle players who join mid-game
execute as @a unless score @s online matches 1 run function ult:tick/action/wrong_session

# Players can spectate by pressing the start button
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function ult:spectate

# Deal with invalid tags
tag @a[tag=player,gamemode=spectator] remove alive

# Respawn
scoreboard players remove @a[tag=player, scores={respawn=1..}] respawn 1
scoreboard players remove @e[tag=respawn_marker, scores={respawn=1..}] respawn 1
execute as @a[scores={respawn=0}] run function ult:spawn
execute as @e[tag=respawn_marker] run function ult:tick/action/respawn_marker
tp @e[tag=respawn_marker, scores={respawn=..1}] 0 2000 0
kill @e[tag=respawn_marker, scores={respawn=..1}]
function ult:spawn/queue_advance

# Mode specific functions
execute if score #flag game_state matches 1 if score .game_mode flag = flag.game_mode.duels const run function ult:tick/active/mode/duels
execute if score #flag game_state matches 1 if score .game_mode flag = flag.game_mode.royale const run function ult:tick/active/mode/royale
execute if score #flag game_state matches 1 if score .game_mode flag = flag.game_mode.brawl const run function ult:tick/active/mode/brawl
execute if score #flag game_state matches 1 if score .game_mode flag = #ultimate game_mode run function ult:tick/active/mode/ultimate

# Map specific functions
execute if score #flag game_state matches 1 if score #server map matches 2 run function ult:tick/active/map/woodlands
execute if score #flag game_state matches 1 if score #server map matches 3 run function ult:tick/active/map/dungeon
execute if score #flag game_state matches 1 if score #server map matches 4 run function ult:tick/active/map/abyss
execute if score #flag game_state matches 1 if score #server map matches 5 run function ult:tick/active/map/citadel
execute if score #flag game_state matches 1 if score #server map matches 6 run function ult:tick/active/map/wasteland
execute if score #flag game_state matches 1 if score #server map matches 7 run function ult:tick/active/map/town_square
execute if score #flag game_state matches 1 if score #server map matches 8 run function ult:tick/active/map/last_stand
execute if score #flag game_state matches 1 if score #server map matches 9 run function ult:tick/active/map/permafrost
execute if score #flag game_state matches 1 if score #server map matches 10 run function ult:tick/active/map/shroom
execute if score #flag game_state matches 1 if score #server map matches 11 run function ult:tick/active/map/hellscape
execute if score #flag game_state matches 1 if score #server map matches 12 run function ult:tick/active/map/frontier
execute if score #flag game_state matches 1 if score #server map matches 13 run function ult:tick/active/map/reflection
execute if score #flag game_state matches 1 if score #server map matches 14 run function ult:tick/active/map/dracula
execute if score #flag game_state matches 1 if score #server map matches 15 run function ult:tick/active/map/avanto
execute if score #flag game_state matches 1 if score #server map matches 16 run function ult:tick/active/map/boxing
execute if score #flag game_state matches 1 if score #server map matches 17 run function ult:tick/active/map/ancient
execute if score #flag game_state matches 1 if score #server map matches 18 run function ult:tick/active/map/marooned

# Clear unnecessary items
kill @e[type=item,tag=!static_item]
clear @a[gamemode=!creative] glass_bottle
kill @e[nbt={inGround:true},type=arrow]

# Players may sometimes lost their items
execute if score #flag game_state matches 1 as @a[tag=player,tag=alive] run function ult:spawn/items/lost

# Check for player deaths
execute as @a[tag=player,sort=random] run function ult:death/test

# Handle death sources
scoreboard players set @a deathsource 0
execute as @a[tag=player, tag=alive] at @s run function ult:death/source

# Reload if a player has left the server
scoreboard players set #temp pn 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
execute unless score #temp pn = #server pn run function ult:load/player_left

# Damage indicators
scoreboard players remove @e[tag=dmg_indicator] timer 1
kill @e[tag=dmg_indicator, scores={timer=..0}]
execute as @a[tag=player, tag=alive, scores={x.damaged=1..}] run function ult:tick/action/damage_indicator
