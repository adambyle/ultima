# Give the players a way to leave the game
    execute as @a[tag=player] run function ult:settings/opt/prompt

# Don't allow these players to leave and then join back into the game
    tag @a remove participating

# Reset any remaining items/entities from the map (with continuous play)
    kill @e[type=item, tag=static]
    kill @e[type=!player, tag=!static, tag=!text_display]

# Resetting attributes and gamerules (may change in map-specifics below)
    execute as @a run attribute @s generic.armor base set 0
    execute as @a run attribute @s generic.armor_toughness base set 0
    execute as @a run attribute @s generic.max_health base set 20
    execute as @a run attribute @s generic.attack_speed base set 4
    execute as @a run attribute @s generic.attack_damage base set 1
    execute as @a run attribute @s generic.movement_speed base set 0.1
    gamerule fireDamage false
    gamerule naturalRegeneration false
    gamerule fallDamage false
    gamerule drowningDamage false

# Setup game stats storage
    data modify storage ult:players Players[].Game set value {win: 0b, kills: [], deaths: []}
    execute if score .game_mode flag = flag.game_mode.brawl const run data modify storage ult:players Players[].Game.brawl set value {plus: 0, minus: 0, normkills: 0, freshkills: 0, freshdeaths: 0, revenge: 0}
    execute store result storage ult:players Players[].Game.map int 1 run scoreboard players get .map flag
    execute store result storage ult:players Players[].Game.players int 1 run scoreboard players get .total_players control
    execute store result storage ult:players Players[].Game.mode byte 1 run scoreboard players get .game_mode flag

# Map specific start functions
    execute if score .map flag = flag.map.woodlands const run function ult:start/map/woodlands
    execute if score .map flag = flag.map.dungeon const run function ult:start/map/dungeon
    execute if score .map flag = flag.map.citadel const run function ult:start/map/citadel
    execute if score .map flag = flag.map.town_square const run function ult:start/map/town_square
    execute if score .map flag = flag.map.last_stand const run function ult:start/map/last_stand
    execute if score .map flag = flag.map.permafrost const run function ult:start/map/permafrost
    execute if score .map flag = flag.map.shroom const run function ult:start/map/shroom
    execute if score .map flag = flag.map.reflection const run function ult:start/map/reflection
    execute if score .map flag = flag.map.dracula const run function ult:start/map/dracula
    execute if score .map flag = flag.map.ancient const run function ult:start/map/ancient
    execute if score .map flag = flag.map.marooned const run function ult:start/map/marooned
    execute if score .map flag = flag.map.hill const run function ult:start/map/hill
    function ult:start/map/reset

# Setup item barrel
    kill @e[tag=bonus_item]
    execute if score .map flag = flag.map.manor const run summon marker 45 22 15 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.woodlands const run summon marker 45 9 47 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.dungeon const run summon marker 45 21 79 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.abyss const run summon marker 45 18 111 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.citadel const run summon marker 77 26 15 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.wasteland const run summon marker 77 26 47 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.town_square const run summon marker 79 26 79 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.last_stand const run summon marker 77 31 111 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.permafrost const run summon marker 13 31 15 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.shroom const run summon marker 13 25 47 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.haven const run summon marker 0 2 0 {Tags: ["bonus_item"]}
    execute if score .map flag = flag.map.frontier const run summon marker 0 2 0 {Tags: ["bonus_item"]}
    execute at @e[tag=bonus_item] run setblock ~ ~ ~ air
    scoreboard players set .bonus_item control 0
    scoreboard players set .bonus_countdown control 20

# Set displays
    # Health initialization
    scoreboard players reset * health_display
    execute unless score .game_mode flag = flag.game_mode.duels const run scoreboard players set @a[tag=player] health_display 20
    # Mode-specific displays
    execute if score .game_mode flag = flag.game_mode.duels const run scoreboard objectives setdisplay sidebar health_display
    execute if score .game_mode flag = flag.game_mode.royale const run scoreboard objectives setdisplay sidebar score
    execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard objectives setdisplay sidebar score

# Duels opponent records
    execute as @a[tag=alive] run function ult:start/opp_stat
