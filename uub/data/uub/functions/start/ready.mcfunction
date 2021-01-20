execute unless entity @a[tag=player,scores={ready=1}] run function uub:start/ready/first_ready
scoreboard players set @s ready 1
tellraw @a [{"selector": "@s"},{"text": " is ready.","color": "blue"}]
tag @s remove root
execute as @a at @s run playsound block.note_block.snare master @s
function uub:start/ready/warning
scoreboard players set #pressed _var 1
function uub:start/ready/valid_start
