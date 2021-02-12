execute as @a[tag=alive,tag=player] run function uub:spawn
execute as @a[team=boss,tag=player] run function uub:spawn
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1.5
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 2

execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value false
execute if score #flag game_mode = #boss game_mode run bossbar set uub:boss visible true

execute unless score #flag game_mode = #boss game_mode run team leave @a[tag=player]

scoreboard players set #flag game_state 1

schedule function uub:tick/opt_prompt/universal 4s

function uub:start/round
