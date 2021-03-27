function uub:data/root
scoreboard players set @s ready 1
execute unless entity @a[tag=player,scores={ready=1},tag=!root] run function uub:start/ready/first_ready
tellraw @a [{"selector": "@s","color": "blue"},{"text": " is ready."}]
tag @s remove root
execute as @a at @s run playsound block.note_block.snare master @s
function uub:start/ready/warning
function uub:start/ready/valid_start
function uub:tp/lobby
