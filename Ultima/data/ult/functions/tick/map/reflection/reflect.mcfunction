# Don't reflect more than once
    tag @s add reflection_rocket

# Mark location of first rocket
    tag @e remove temp2
    summon marker ~ ~ ~ {Tags: ["temp2"]}

# Process Y position
    # Get Y
    execute store result score .y _var run data get entity @s Pos[1] 10000
    # Center at Y=31.5
    scoreboard players set .new_y _var 315000
    # Get the distance from the center to the Y pos
    scoreboard players operation .new_y _var -= .y _var
    # Invert by recentering
    scoreboard players add .new_y _var 315000
    # Store new Y into marker
    execute store result entity @e[limit=1, tag=temp2] Pos[1] double 0.0001 run scoreboard players get .new_y _var
    # Summon new rocket at marker
    tag @e remove temp
    execute at @e[tag=temp2] run summon firework_rocket ~ ~ ~ {ShotAtAngle: true, Tags: ["reflection_rocket", "temp"]}

# Transfer nbt (with Rotation and Motion inverted)
    data modify entity @e[limit=1, tag=temp] Rotation set from entity @s Rotation
    execute store result entity @e[limit=1, tag=temp] Rotation[0] float -0.0001 run data get entity @s Rotation[0] 10000
    data modify entity @e[limit=1, tag=temp] Motion set from entity @s Motion
    execute store result entity @e[limit=1, tag=temp] Motion[1] double -0.0001 run data get entity @s Motion[1] 10000
    data modify entity @e[limit=1, tag=temp] Life set from entity @s Life
    data modify entity @e[limit=1, tag=temp] LifeTime set from entity @s LifeTime
    data modify entity @e[limit=1, tag=temp] Owner set from entity @s Owner
    data modify entity @e[limit=1, tag=temp] FireworksItem set from entity @s FireworksItem

kill @e[tag=temp2]
