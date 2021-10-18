# Make sure rotations are in range of each other (so that they are facing the same direction, thus the victim is facing away)
    scoreboard players operation .temp rotation = @s rotation
    scoreboard players operation .temp2 rotation = @r[tag=root] rotation
    scoreboard players operation .temp2 rotation -= .temp rotation

    scoreboard players operation .temp3 rotation = .temp2 rotation
    scoreboard players operation .temp4 rotation = .temp2 rotation
    scoreboard players remove .temp3 rotation 360
    scoreboard players add .temp4 rotation 360

    execute unless score .temp2 rotation matches -60..60 unless score .temp3 rotation matches -60..60 unless score .temp4 rotation matches -60..60 run scoreboard players set .test var 0
