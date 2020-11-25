execute if entity @s[tag=alive] as @a[scores={queue=1},team=play] run function uub:start/swapin
tag @s remove alive
team join spect
gamemode spectator
function uub:tp
scoreboard players remove pn q 1
execute if score pn q matches ..1 run tellraw @a {"text": "There are not enough players to continue.","color": "red"}
execute if score pn q matches ..1 run function uub:load
