tag @a remove player
tag @s add player
execute as @a if score @s last_attacker = @r[tag=player] pn run scoreboard players set @s last_attacker 0
execute as @a[team=play] if score @s queue > @r[tag=player] queue run scoreboard players remove @s queue 1
execute as @e[type=potion] if score @s pn = @r[tag=player] pn run kill @s
execute as @e[type=#arrows] if score @s pn = @r[tag=player] pn run kill @s
execute as @e[type=trident] if score @s pn = @r[tag=player] pn run kill @s
scoreboard players set @s queue 0
execute if entity @s[tag=alive] as @a[scores={queue=1},team=play] run function uub:start/swapin
execute if score mode q matches 1 as @a[team=play] if score @s pn = @r[tag=player] tether run scoreboard players remove @s kills 1
execute if score mode q matches 1 as @a[team=play] if score @s tether = @r[tag=player] pn run function uub:respawn
tag @s remove alive
tag @s remove respawn
team leave @s
team join spect
tag @s remove team_play
tag @s add team_spect
tp @s 45 30 -12 0 0
function uub:stat/play
scoreboard players remove pn q 1
tellraw @a [{"selector": "@s","color": "blue"},{"text": " has opted out mid-game.","color": "blue"}]
execute if score pn q matches 2 unless score mode q matches 2 run tellraw @a {"text": "There are not enough players to continue.","color": "red"}
execute if score pn q matches ..1 run tellraw @a {"text": "There are not enough players to continue.","color": "red"}
execute if score pn q matches 2 unless score mode q matches 2 run function uub:load/reload
execute if score pn q matches ..1 run function uub:load/reload
scoreboard players reset @s kills
tag @s remove can_win
tag @s add left_game
function uub:settings/main_menu
clear
effect clear @s
