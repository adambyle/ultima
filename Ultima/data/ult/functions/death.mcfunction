# Reset data and determine who the killer is

function ult:data/root
function ult:data/player/get_nbt
tag @e remove temp
summon marker ~ ~ ~ {Tags: ["temp"]}
data modify entity @e[limit=1, tag=temp] Pos set from storage ult:temp Player.Pos
execute at @e[tag=temp] run function ult:death/fx
kill @e[tag=temp]

tag @a remove killer
execute at @s run tag @p[tag=!root, scores={kill=1..}] add killer
scoreboard players remove @a[tag=killer] kill 1

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

data modify storage ult:temp Death2 set value '""'

execute if entity @a[tag=killer] run tag @s add fresh

execute as @a[tag=killer] at @s run playsound entity.player.levelup master @s
execute if score .game_mode flag = flag.game_mode.duels const run function ult:death/duels
execute if score .game_mode flag = flag.game_mode.royale const run function ult:death/royale
execute if score .game_mode flag = flag.game_mode.brawl const run function ult:death/brawl

function ult:start/map/reset

execute if score .game_mode flag = flag.game_mode.royale const run effect give @a instant_health 1 3 true

function ult:death/exit
