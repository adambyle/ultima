bossbar set uub:game_start visible false
schedule clear uub:start/ready/timer
execute as @a[tag=player,scores={ready=0}] run function uub:start/ready/deopt
tellraw @a {"text": "The game is starting!","color": "green"}
function uub:start
scoreboard players set @a ready 0
scoreboard players set #timeout ready -1
