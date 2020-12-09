tag @e[team=!play] remove alive

execute if score game q matches 0 run function uub:tick/off
execute if score game q matches 1 run function uub:tick/on

execute as @a[scores={action=1..}] run function uub:tick/action/handler
scoreboard players enable @a action
scoreboard players set @a action 0

kill @e[type=#arrows,nbt={inGround:1b}]
kill @e[type=item]

execute as @a[scores={qdeath=2}] run function uub:tp
scoreboard players set @a[scores={qdeath=2}] qdeath 0

execute positioned 0 20 0 as @a[gamemode=spectator,distance=..5] run function uub:tp
