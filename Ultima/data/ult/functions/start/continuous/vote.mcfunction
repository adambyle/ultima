tellraw @a ""

scoreboard players operation .game_state flag = flag.game_state.voting const

tag @a remove voting
tag @a remove ready
execute if score .game_mode flag = flag.game_mode.duels const run tag @a[tag=player, tag=alive] add voting
execute if score .game_mode flag = flag.game_mode.duels const run tag @a[tag=player, scores={queue=1}] add voting
execute unless score .game_mode flag = flag.game_mode.duels const run tag @a[tag=player] add voting

execute as @e[tag=vote_station] store success score @s control if entity @a[distance=..2, gamemode=!spectator]
scoreboard players set .mandatory control 1
execute as @a[tag=voting] run function ult:settings/player/vote
