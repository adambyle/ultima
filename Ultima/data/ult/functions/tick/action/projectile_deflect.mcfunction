particle poof ~ ~ ~ 0 0 0 0.5 20 force
playsound entity.firework_rocket.blast master @a[tag=!parkour] ~ ~ ~ 4.0
execute store result entity @s Motion[1] double 0.00001 run data get entity @s Motion[1] -100000
tag @s add deflected
