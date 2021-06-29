# Handle players who join mid-game
execute as @a unless score @s online matches 1 run function ult:tick/action/wrong_session

# Players can spectate by pressing the start button
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function ult:spectate

# Deal with invalid tags
tag @a[gamemode=spectator, tag=player] remove alive

# Respawn
scoreboard players remove @a[tag=player, scores={respawn=1..}] respawn 1
scoreboard players remove @e[tag=respawn_marker, scores={respawn=1..}] respawn 1
execute as @a[scores={respawn=0}] run function ult:spawn
execute as @e[tag=respawn_marker] run function ult:tick/action/respawn_marker
tp @e[tag=respawn_marker, scores={respawn=..1}] 0 2000 0
kill @e[tag=respawn_marker, scores={respawn=..1}]
function ult:spawn/queue_advance

# Clear unnecessary items
kill @e[type=item, tag=!static_item]
clear @a[gamemode=!creative] glass_bottle
kill @e[type=arrow, nbt={inGround: true}]

# Players may sometimes lose their items
execute as @a[tag=player, tag=alive] run function ult:spawn/items/lost

# Map specific functions
execute if score .map flag = flag.map.woodlands const run function ult:tick/active/map/woodlands
execute if score .map flag = flag.map.dungeon const run function ult:tick/active/map/dungeon
execute if score .map flag = flag.map.abyss const run function ult:tick/active/map/abyss
execute if score .map flag = flag.map.citadel const run function ult:tick/active/map/citadel
execute if score .map flag = flag.map.wasteland const run function ult:tick/active/map/wasteland
execute if score .map flag = flag.map.town_square const run function ult:tick/active/map/town_square
execute if score .map flag = flag.map.last_stand const run function ult:tick/active/map/last_stand
execute if score .map flag = flag.map.permafrost const run function ult:tick/active/map/permafrost
execute if score .map flag = flag.map.shroom const run function ult:tick/active/map/shroom
execute if score .map flag = flag.map.hellscape const run function ult:tick/active/map/hellscape
execute if score .map flag = flag.map.frontier const run function ult:tick/active/map/frontier
execute if score .map flag = flag.map.reflection const run function ult:tick/active/map/reflection
execute if score .map flag = flag.map.dracula const run function ult:tick/active/map/dracula
execute if score .map flag = flag.map.avanto const run function ult:tick/active/map/avanto
execute if score .map flag = flag.map.boxing const run function ult:tick/active/map/boxing
execute if score .map flag = flag.map.ancient const run function ult:tick/active/map/ancient
execute if score .map flag = flag.map.marooned const run function ult:tick/active/map/marooned

# Mode specific functions
execute if score .game_mode flag = flag.game_mode.royale const run function ult:tick/active/mode/royale
execute if score .game_mode flag = flag.game_mode.brawl const run function ult:tick/active/mode/brawl

# Damage indicators
scoreboard players remove @e[tag=dmg_indicator] control 1
kill @e[tag=dmg_indicator, scores={control=..0}]
execute as @a[tag=player, tag=alive, scores={damage_taken=1..}] run function ult:tick/action/damage_indicator

# Check for player deaths
execute as @a[sort=random, tag=player] run function ult:death/test

# Reload if a player has left the server
scoreboard players set .temp_pn _var 0
execute as @a[tag=player] run scoreboard players add .temp_pn _var 1
execute unless score .temp_pn _var = .total_players control run function ult:load/player_left

# Handle death sources
scoreboard players reset * death_cause
execute as @a[tag=player, tag=alive] at @s run function ult:death/source
