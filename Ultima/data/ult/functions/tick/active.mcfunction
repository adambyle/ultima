# Handle players who join mid-game
    execute as @a unless score @s online matches 1 run function ult:join/wrong_session

# Players can spectate by pressing the start button
    execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p run function ult:spectate

# Respawn
    # Count down respawn timers
    scoreboard players remove @a[tag=player, scores={respawn=1..}] respawn 1
    scoreboard players remove @e[tag=respawn_marker, scores={respawn=1..}] respawn 1
    # Spawn players with zeroed timers
    execute as @a[scores={respawn=0}] run function ult:spawn
    # Update respawn notification markers
    execute as @e[tag=respawn_marker] run function ult:tech/respawn_marker
    # Teleport finished markers far away and kill them
    tp @e[tag=respawn_marker, scores={respawn=..1}] 0 2000 0
    kill @e[tag=respawn_marker, scores={respawn=..1}]
    # If a queue position was lost, fix it up
    function ult:spawn/queue_advance

# Clear unnecessary items
    kill @e[type=item, tag=!static]
    clear @a[gamemode=!creative] glass_bottle
    kill @e[type=arrow, nbt={inGround: true}]

# Players may sometimes lose their items
    execute as @a[tag=alive] run function ult:items/lost

# Map specific functions
    execute if score .map flag = flag.map.woodlands const run function ult:tick/map/woodlands
    execute if score .map flag = flag.map.dungeon const run function ult:tick/map/dungeon
    execute if score .map flag = flag.map.abyss const run function ult:tick/map/abyss
    execute if score .map flag = flag.map.citadel const run function ult:tick/map/citadel
    execute if score .map flag = flag.map.wasteland const run function ult:tick/map/wasteland
    execute if score .map flag = flag.map.town_square const run function ult:tick/map/town_square
    execute if score .map flag = flag.map.last_stand const run function ult:tick/map/last_stand
    execute if score .map flag = flag.map.permafrost const run function ult:tick/map/permafrost
    execute if score .map flag = flag.map.shroom const run function ult:tick/map/shroom
    execute if score .map flag = flag.map.hellscape const run function ult:tick/map/hellscape
    execute if score .map flag = flag.map.frontier const run function ult:tick/map/frontier
    execute if score .map flag = flag.map.reflection const run function ult:tick/map/reflection
    execute if score .map flag = flag.map.dracula const run function ult:tick/map/dracula
    execute if score .map flag = flag.map.avanto const run function ult:tick/map/avanto
    execute if score .map flag = flag.map.boxing const run function ult:tick/map/boxing
    execute if score .map flag = flag.map.ancient const run function ult:tick/map/ancient
    execute if score .map flag = flag.map.marooned const run function ult:tick/map/marooned
    execute if score .map flag = flag.map.hill const run function ult:tick/map/hill
    execute if score .map flag = flag.map.bathhouse const run function ult:tick/map/bathhouse

# Mode specific functions
    execute if score .game_mode flag = flag.game_mode.royale const run function ult:tick/mode/royale
    execute if score .game_mode flag = flag.game_mode.brawl const run function ult:tick/mode/brawl

# Damage indicators
    scoreboard players remove @e[tag=dmg_indicator] control 1
    kill @e[tag=dmg_indicator, scores={control=..0}]
    execute as @a[tag=alive, scores={damage_taken=1..}] run function ult:tech/damage_indicator

# Check for player deaths
    execute as @a[sort=random, tag=player] run function ult:death/test

# Reload if a player has left the server
    scoreboard players set .temp_pn _var 0
    execute as @a[tag=player] run scoreboard players add .temp_pn _var 1
    execute unless score .temp_pn _var = .total_players control run function ult:load/player_left

# Handle death sources
    scoreboard players reset * death_cause
    execute as @a[tag=alive] at @s run function ult:death/source
