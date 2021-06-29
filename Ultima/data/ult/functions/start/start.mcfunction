execute as @a[tag=alive, tag=player] run function ult:tick/action/opt_prompt

function ult:start/round

execute as @a[tag=alive, tag=player, sort=random] run function ult:spawn
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1.5
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 2

execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value false

scoreboard players set .game_state flag 1

execute at @e[tag=vote_station] run tp @a[distance=..2] 45 30 -12

execute as @a run function ult:start/spectate

tag @a remove fresh
