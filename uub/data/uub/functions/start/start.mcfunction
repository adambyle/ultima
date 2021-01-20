execute as @a[tag=alive] run function uub:spawn
tag @a[tag=spectator] add in_lobby
execute as @a[team=boss] run function uub:spawn
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1.5
execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 2

execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value false
execute if score #flag mode = #boss mode run bossbar set uub:boss visible true

team empty lobby

scoreboard players set #flag game_state 1
