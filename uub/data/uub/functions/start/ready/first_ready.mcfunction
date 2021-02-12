bossbar set uub:game_start visible true
scoreboard players set #valid_ready _var 0
execute store result bossbar uub:game_start max store result bossbar uub:game_start value run scoreboard players set #timeout ready 30
schedule function uub:start/ready/timer 1s

execute unless score #flag map = #vote map as @a[scores={y.ready=2,ready=0},tag=!afk] run function uub:start/ready
execute unless score #flag map = #vote map as @a[scores={y.ready=3,ready=0}] run function uub:start/ready
