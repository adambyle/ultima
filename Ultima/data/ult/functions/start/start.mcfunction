execute as @a[tag=alive, tag=player] run function ult:tick/action/opt_prompt

function ult:start/round

execute as @a[tag=alive,tag=player, sort=random] run function ult:spawn
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1.5
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 2

execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value false

scoreboard players set #flag game_state 1

execute as @a unless score @s y.spect_game matches 1.. run scoreboard players set @s y.spect_game 1
execute as @a[scores={y.spect_game=1}, tag=spectator, tag=!parkour] run function ult:spectate

tag @a remove fresh
