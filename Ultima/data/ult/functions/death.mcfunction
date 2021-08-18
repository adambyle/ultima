function ult:data/root

# Special effects at player death position
    tag @e remove temp
    summon marker ~ ~ ~ {Tags: ["temp"]}
    function ult:data/player/get
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
    execute if data storage ult:temp Player.Chat{pronouns: 0b} run data modify storage ult:temp Subject set value "they"
    execute if data storage ult:temp Player.Chat{pronouns: 0b} run data modify storage ult:temp Object set value "them"
    execute if data storage ult:temp Player.Chat{pronouns: 0b} run data modify storage ult:temp Possessive set value "their"
    execute if data storage ult:temp Player.Chat{pronouns: 1b} run data modify storage ult:temp Subject set value "he"
    execute if data storage ult:temp Player.Chat{pronouns: 1b} run data modify storage ult:temp Object set value "him"
    execute if data storage ult:temp Player.Chat{pronouns: 1b} run data modify storage ult:temp Possessive set value "his"
    execute if data storage ult:temp Player.Chat{pronouns: 2b} run data modify storage ult:temp Subject set value "she"
    execute if data storage ult:temp Player.Chat{pronouns: 2b} run data modify storage ult:temp Object set value "her"
    execute if data storage ult:temp Player.Chat{pronouns: 2b} run data modify storage ult:temp Possessive set value "her"
    # If there was a killer
    execute if score @s death_cause = death_cause.normal const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was killed by"'
    execute if score @s death_cause = death_cause.abyss_fall const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was knocked into the abyss by"'
    execute if score @s death_cause = death_cause.abyss_fished const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was fished into the abyss by"'
    execute if score @s death_cause = death_cause.shot const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was shot by"'
    execute if score @s death_cause = death_cause.harming_potion const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"got splashed by"'
    execute if score @s death_cause = death_cause.shot_hard const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"got pummeled by"'
    execute if score @s death_cause = death_cause.exploded const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was blown to bits by"'
    execute if score @s death_cause = death_cause.fire const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was cooked by"'
    execute if score @s death_cause = death_cause.lava const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was submerged in lava by"'
    execute if score @s death_cause = death_cause.shot_aerial const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was shot out of the sky by"'
    execute if score @s death_cause = death_cause.rocket const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was snapped and crackled by"'
    execute if score @s death_cause = death_cause.hill_pitfall const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was knocked off the hill by"'
    execute if score @s death_cause = death_cause.hill_pitfall_king const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was overthrown by"'
    execute if score @s death_cause = death_cause.hill_shot const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was royally executed by"'
    execute if score @s death_cause = death_cause.glitch const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"found a way to forever escape"'
    execute if score @s death_cause = death_cause.froze const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was sent to a warmer place by"'
    execute if score @s death_cause = death_cause.snowballed const if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was snowballed by"'
    # If there was no killer
    execute if score @s death_cause = death_cause.normal const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"died"'
    execute if score @s death_cause = death_cause.abyss_fall const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"leapt into the abyss"'
    execute if score @s death_cause = death_cause.abyss_fished const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"dove into the fishing hole"'
    execute if score @s death_cause = death_cause.shot const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '["shot ", {"storage": "ult:temp", "nbt": "Object"}, "self"]'
    execute if score @s death_cause = death_cause.harming_potion const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"made a swift exit"'
    execute if score @s death_cause = death_cause.shot_hard const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '["fired a bolt through ", {"storage": "ult:temp", "nbt": "Possessive"}, " chest"]'
    execute if score @s death_cause = death_cause.exploded const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '["blew ", {"storage": "ult:temp", "nbt": "Object"}, "self to bits"]'
    execute if score @s death_cause = death_cause.fire const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"couldn\'t take the heat"'
    execute if score @s death_cause = death_cause.lava const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"took too hot of a bath"'
    execute if score @s death_cause = death_cause.shot_aerial const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"had a skydiving accident"'
    execute if score @s death_cause = death_cause.rocket const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"went out with a bang"'
    execute if score @s death_cause = death_cause.hill_pitfall const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"fell off the hill"'
    execute if score @s death_cause = death_cause.hill_pitfall_king const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '["fell down and broke ", {"storage": "ult:temp", "nbt": "Possessive"}, " crown"]'
    execute if score @s death_cause = death_cause.hill_shot const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"took the royal crossbow and gave up the throne"'
    execute if score @s death_cause = death_cause.glitch const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"tried to be clever"'
    execute if score @s death_cause = death_cause.froze const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"froze to death"'
    execute if score @s death_cause = death_cause.snowballed const unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '["snowballed ", {"storage": "ult:temp", "nbt": "Object"}, "self"]'
    # Second portion of death message
    data modify storage ult:temp Death2 set value '""'

# Update statistics
    execute unless entity @a[tag=killer] run scoreboard players remove @s death_cause 100
    execute store result storage ult:temp DeathCause int 1 run scoreboard players get @s death_cause
    # Update killer
    execute as @a[tag=killer] run function ult:data/player/get
    data modify storage ult:temp Player.Game.kills append from storage ult:temp DeathCause
    execute as @a[tag=killer] run function ult:data/player/save
    # Update self
    function ult:data/player/get
    data modify storage ult:temp Player.Game.deaths append from storage ult:temp DeathCause
    # Currently, simultaneous kills prevent stat changes
    execute unless entity @a[tag=killer, tag=player, tag=!alive] run function ult:data/player/save

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
    function ult:data/player/get
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
    execute if score .game_mode flag = flag.game_mode.royale const as @a[tag=player, tag=alive] if score @s score >= .temp_pn _var run function ult:victory
