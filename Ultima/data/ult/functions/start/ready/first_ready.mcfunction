bossbar set ult:game_start visible true
scoreboard players set .valid_ready _var 0
execute store result bossbar ult:game_start max store result bossbar ult:game_start value run scoreboard players set #timeout ready 30
schedule function ult:start/ready/timer 1s

execute as @a[tag=player, scores={ready=0, y.ready=0}, tag=parkour] run function ult:parkour/exit
