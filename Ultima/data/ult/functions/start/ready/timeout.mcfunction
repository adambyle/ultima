bossbar set ult:game_start visible false
schedule clear ult:start/ready/timer
execute as @a[tag=player,scores={ready=0}] run function ult:start/ready/deopt
tellraw @a {"text": "The game is starting!","color": "green"}
function ult:start
scoreboard players set @a ready 0
scoreboard players set #timeout ready -1
