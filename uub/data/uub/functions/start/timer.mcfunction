scoreboard players remove game_start n 1
execute store result bossbar gamestart value run scoreboard players get game_start n
execute if score game_start n matches 1..3 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 0.5
execute if score game_start n matches 0 run function uub:start
execute if score game_start n matches 1.. run schedule function uub:start/timer 1s
