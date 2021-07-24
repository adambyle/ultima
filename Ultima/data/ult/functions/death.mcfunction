function ult:data/root
function ult:data/player/get_nbt

# Special effects at player death position
    tag @e remove temp
    summon marker ~ ~ ~ {Tags: ["temp"]}
    data modify entity @e[limit=1, tag=temp] Pos set from storage ult:temp Player.Pos
    execute at @e[tag=temp] run function ult:death/fx
    kill @e[tag=temp]

# Determine the killer
    tag @a remove killer
    execute at @s run tag @p[tag=!root, scores={kill=1..}] add killer
    scoreboard players remove @a[tag=killer] kill 1
    # Notify them
    execute as @a[tag=killer] at @s run playsound entity.player.levelup master @s ~ ~ ~ 4

# Death message
    # If there was a killer
    execute if score @s death_cause = death_cause.normal const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was killed by"'
    execute if score @s death_cause = death_cause.abyss_fall const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was knocked into the Abyss by"'
    execute if score @s death_cause = death_cause.abyss_fished const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was fished into the Abyss by"'
    execute if score @s death_cause = death_cause.shot const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was shot by"'
    execute if score @s death_cause = death_cause.harming_potion const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"got splashed by"'
    execute if score @s death_cause = death_cause.shot_hard const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"got pummeled by"'
    execute if score @s death_cause = death_cause.exploded const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was blown to bits while fighting"'
    execute if score @s death_cause = death_cause.fire const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was cooked by"'
    execute if score @s death_cause = death_cause.lava const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was submerged in lava by"'
    execute if score @s death_cause = death_cause.shot_aerial const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was shot out of the sky by"'
    execute if score @s death_cause = death_cause.rocket const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was snapped and crackled by"'
    # If there was no killer
    execute if score @s death_cause = death_cause.normal const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"died"'
    execute if score @s death_cause = death_cause.abyss_fall const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"leapt into the Abyss"'
    execute if score @s death_cause = death_cause.abyss_fished const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"dove into the fishing hole"'
    execute if score @s death_cause = death_cause.shot const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"shot themself"'
    execute if score @s death_cause = death_cause.harming_potion const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"made a swift exit"'
    execute if score @s death_cause = death_cause.shot_hard const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"fired a bolt through their chest"'
    execute if score @s death_cause = death_cause.exploded const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was blown to bits"'
    execute if score @s death_cause = death_cause.fire const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"couldn\'t take the heat"'
    execute if score @s death_cause = death_cause.lava const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"took too hot of a bath"'
    execute if score @s death_cause = death_cause.shot_aerial const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"had a skydiving accident"'
    execute if score @s death_cause = death_cause.rocket const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"went out with a bang"'
    # Second portion of death message
    data modify storage ult:temp Death2 set value '""'

# Mode specifics
    tag @s remove alive
    execute if score .game_mode flag = flag.game_mode.duels const run function ult:death/duels
    execute if score .game_mode flag = flag.game_mode.royale const run function ult:death/royale
    execute if score .game_mode flag = flag.game_mode.brawl const run function ult:death/brawl

# Players will be "fresh" on respawn, unless they killed themself
    execute if entity @a[tag=killer] run tag @s add fresh

# Setup map
    function ult:start/map/reset
    # Health boost if in royale mode
    execute if score .game_mode flag = flag.game_mode.royale const run effect give @a instant_health 1 3 true

function ult:death/exit

# Spectate or lobby
    function ult:data/player/get_nbt
    execute store result score .spect_mode _var run data get storage ult:temp Player.Spectate.death
    function ult:exit
    
# Test for victory
    # Unconditional in duels
    execute if score .game_mode flag = flag.game_mode.duels const run function ult:victory
    # If the killer has a high enough score in brawl mode, they win
    execute if score .game_mode flag = flag.game_mode.brawl const as @a[tag=killer, tag=alive] if score @s score >= .goal_score control run function ult:victory/brawl
    # If all the players are dead in royale
    scoreboard players set .temp_pn _var 0
    execute as @a[tag=player] run scoreboard players add .temp_pn _var 1
    scoreboard players remove .temp_pn _var 1
    execute if score .game_mode flag = flag.game_mode.royale const as @a[tag=killer] if score @s score >= .temp_pn _var run function ult:victory
