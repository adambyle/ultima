# Reset data and determine who the killer is

function ult:data/player/get_nbt
tag @e remove temp
summon area_effect_cloud ~ ~ ~ {Tags: ["temp"]}
data modify entity @e[tag=temp, limit=1] Pos set from storage ult:temp Player.Pos
execute at @e[tag=temp] run function ult:death/fx
kill @e[tag=temp]

function ult:data/root

tag @a remove killer
execute at @s run tag @p[scores={kill=1..}, tag=!root] add killer
scoreboard players remove @a[tag=killer] kill 1

function ult:death/proc

execute if score @s deathsource matches 0 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was killed by"'
execute if score @s deathsource matches 1 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was knocked into the Abyss by"'
execute if score @s deathsource matches 2 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was fished into the Abyss by"'
execute if score @s deathsource matches 3 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was shot by"'
execute if score @s deathsource matches 4 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"got splashed by"'
execute if score @s deathsource matches 5 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"got pummeled by"'
execute if score @s deathsource matches 6 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was blown to bits while fighting"'
execute if score @s deathsource matches 7 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was cooked by"'
execute if score @s deathsource matches 8 if entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was submerged in lava by"'

execute if score @s deathsource matches 0 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"died"'
execute if score @s deathsource matches 1 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"leapt into the Abyss"'
execute if score @s deathsource matches 2 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"dove into the fishing hole"'
execute if score @s deathsource matches 3 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"shot themself"'
execute if score @s deathsource matches 4 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"made a swift exit"'
execute if score @s deathsource matches 5 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"fired a bolt through their chest"'
execute if score @s deathsource matches 6 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"was blown to bits"'
execute if score @s deathsource matches 7 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"cooked themself"'
execute if score @s deathsource matches 8 unless entity @a[tag=killer] run data modify storage ult:temp Death1 set value '"took too hot of a bath"'

execute if score @s deathsource matches 0..6 run data modify storage ult:temp Death2 set value '""'

execute as @a[tag=killer] at @s run playsound entity.player.levelup master @s
execute if score #flag game_mode = #duels game_mode run function ult:death/duels
execute if score #flag game_mode = #royale game_mode run function ult:death/royale
execute if score #flag game_mode = #brawl game_mode run function ult:death/brawl

execute if entity @a[tag=killer] run tag @s add fresh

function ult:start/map/reset

execute unless score #flag game_mode > #royale game_mode run effect give @a instant_health 1 3 true

title @s actionbar ""
