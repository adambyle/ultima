particle poof ~ ~ ~ 0 0 0 0.5 20
playsound entity.firework_rocket.blast master @a ~ ~ ~ 4.0
execute store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] -1000
tag @s add deflected
