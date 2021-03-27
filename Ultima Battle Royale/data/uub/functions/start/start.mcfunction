execute as @a[tag=alive,tag=player, sort=random] run function uub:spawn
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1.5
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 2

execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value false

team leave @a[tag=player]

scoreboard players set #flag game_state 1

execute as @a[tag=player, tag=alive] run function uub:tick/opt_prompt

function uub:start/round

tag @a remove fresh
