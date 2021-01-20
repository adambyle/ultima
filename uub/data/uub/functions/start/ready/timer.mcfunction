function uub:start/ready/valid_start

execute if score #temp _var matches 1 if score #flag map = #vote map store result bossbar uub:game_start value run scoreboard players remove #timeout ready 1
execute if score #temp _var matches 1 unless score #flag map = #vote map store result bossbar uub:game_start value run scoreboard players remove #timeout ready 2
execute if score #timeout ready matches 1..8 as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 2
execute if score #timeout ready matches 1.. run schedule function uub:start/ready/timer 1s
execute if score #timeout ready matches ..0 run function uub:start/ready/timeout
