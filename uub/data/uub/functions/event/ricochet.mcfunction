execute at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 3
execute at @s run particle poof ~ ~ ~ 0 0 0 0.3 20
execute store result score arrow_power n run data get entity @s damage
execute store result entity @s damage double 1.0 run scoreboard players add arrow_power n 1
execute store result entity @s Motion[1] double -1.0 run data get entity @s Motion[1]
tag @s add ricochet
