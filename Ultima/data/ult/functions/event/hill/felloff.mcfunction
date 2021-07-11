execute if score #phase event matches 2 run kill @s
execute if score #phase event matches 1 run function ult:tp
execute if score #phase event matches 1 at @s run particle poof ~ ~ ~ 0 0 0 0.25 20
effect give @s slowness 4 2
effect give @s weakness 4 2
