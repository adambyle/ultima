function ult:start/ready/valid_start

execute if score .temp _var matches 1 if score .map_mode flag = flag.map_mode.vote const store result bossbar ult:game_start value run scoreboard players remove #timeout ready 1
execute if score .temp _var matches 1 unless score .map_mode flag = flag.map_mode.vote const store result bossbar ult:game_start value run scoreboard players remove #timeout ready 2
execute if score #timeout ready matches 1..8 as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 2
execute if score #timeout ready matches 1.. run schedule function ult:start/ready/timer 1s
execute if score #timeout ready matches 0 run function ult:start/ready/timeout

execute if score #timeout ready matches 1.. unless score .map_mode flag = flag.map_mode.vote const as @a[tag=player, tag=!parkour, scores={y.ready=2,ready=0},tag=!afk] run function ult:start/ready
execute if score #timeout ready matches 1.. unless score .map_mode flag = flag.map_mode.vote const as @a[tag=player, tag=!parkour, scores={y.ready=3,ready=0}] run function ult:start/ready
execute if score #timeout ready matches 1.. if score .map_mode flag = flag.map_mode.vote const as @a[tag=player, tag=!parkour, scores={y.voteskip=2,ready=0,y.ready=3},tag=afk] run function ult:start/ready
execute if score #timeout ready matches 1.. if score .map_mode flag = flag.map_mode.vote const as @a[tag=player, tag=!parkour, scores={y.voteskip=3,ready=0}] run function ult:start/ready
