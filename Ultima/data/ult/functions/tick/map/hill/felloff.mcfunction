effect give @s slowness 3 2
effect give @s weakness 3 2

# If beatdown phase, death
    execute if score .phase event matches 2 run kill @s

# If capture face, reset    
    execute if score .phase event matches 1 run function ult:tp
    execute if score .phase event matches 1 at @s run particle poof ~ ~ ~ 0 0 0 0.25 20
