tag @a remove player
tag @s add player
execute as @a[team=play] if score @s queue > @r[tag=player] queue run scoreboard players remove @s queue 1
scoreboard players set @s queue 0
execute if entity @s[tag=alive] as @a[scores={queue=1},team=play] run function uub:start/swapin
execute if score mode q matches 1 as @a[team=play] if score @s pn = @r[tag=player] tether run scoreboard players remove @s kills 1
execute if score mode q matches 1 as @a[team=play] if score @s tether = @r[tag=player] pn run function uub:respawn
tag @s remove alive
tag @s remove respawn
team leave @s
team join spect
gamemode spectator
function uub:tp
function uub:stat/play
scoreboard players remove pn q 1
tellraw @a [{"selector": "@s","color": "blue"},{"text": " has opted out mid-game.","color": "blue"}]
execute if score pn q matches 2 unless score mode q matches 2 run tellraw @a {"text": "There are not enough players to continue.","color": "red"}
execute if score pn q matches ..1 run tellraw @a {"text": "There are not enough players to continue.","color": "red"}
execute if score pn q matches 2 unless score mode q matches 2 run function uub:load
execute if score pn q matches ..1 run function uub:load
scoreboard players reset @s kills
tag @s remove can_win
tag @s add left_game
