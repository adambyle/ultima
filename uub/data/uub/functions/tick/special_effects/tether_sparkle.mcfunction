tag @e remove marker
summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Tags:["marker"]}
execute store result entity @e[tag=marker,limit=1] Rotation[0] float 1.0 run scoreboard players get @s rot

execute at @e[tag=marker] if score @s kills matches 1.. run particle composter ^ ^ ^1 0 0.02 0 1 0
execute if score @s kills matches 2 as @e[tag=marker] at @s run tp @s ~ ~ ~ ~180 ~
execute if score @s kills matches 3 as @e[tag=marker] at @s run tp @s ~ ~ ~ ~120 ~
execute at @e[tag=marker] if score @s kills matches 2.. run particle composter ^ ^ ^1 0 0.02 0 1 0
execute as @e[tag=marker] at @s run tp @s ~ ~ ~ ~120 ~
execute at @e[tag=marker] if score @s kills matches 3 run particle composter ^ ^ ^1 0 0.02 0 1 0
kill @e[tag=marker]
