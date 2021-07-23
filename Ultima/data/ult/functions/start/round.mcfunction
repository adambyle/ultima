# Don't allow these players to leave and then join back into the game
    tag @a remove participating
    tag @a[tag=player] add participating

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

# Map specific start functions
    execute if score .map flag = flag.map.woodlands const run function ult:start/map/woodlands
    execute if score .map flag = flag.map.dungeon const run function ult:start/map/dungeon
    execute if score .map flag = flag.map.citadel const run function ult:start/map/citadel
    execute if score .map flag = flag.map.town_square const run function ult:start/map/town_square
    execute if score .map flag = flag.map.last_stand const run function ult:start/map/last_stand
    execute if score .map flag = flag.map.reflection const run function ult:start/map/reflection
    execute if score .map flag = flag.map.dracula const run function ult:start/map/dracula
    execute if score .map flag = flag.map.ancient const run function ult:start/map/ancient
    execute if score .map flag = flag.map.marooned const run function ult:start/map/marooned
    execute if score .map flag = flag.map.hill const run function ult:start/map/hill
    function ult:start/map/reset

# Set displays
    # Health initialization
    scoreboard players reset * health_display
    execute unless score .game_mode flag = flag.game_mode.duels const run scoreboard players set @a[tag=player] health_display 20
    # Mode-specific displays
    execute if score .game_mode flag = flag.game_mode.duels const run scoreboard objectives setdisplay sidebar health_display
    execute if score .game_mode flag = flag.game_mode.royale const run scoreboard objectives setdisplay sidebar score
    execute if score .game_mode flag = flag.game_mode.brawl const run scoreboard objectives setdisplay sidebar score
