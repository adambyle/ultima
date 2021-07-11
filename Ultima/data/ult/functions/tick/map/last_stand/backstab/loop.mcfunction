scoreboard players operation .temp rotation = @s rotation
execute if score .temp rotation matches ..0 run scoreboard players add .temp rotation 360
scoreboard players operation .temp2 rotation = @r[tag=root] rotation
execute if score .temp2 rotation matches ..0 run scoreboard players add .temp2 rotation 360
scoreboard players operation .temp rotation -= .temp2 rotation
execute unless score .temp rotation matches -60..60 run scoreboard players set .test _var 0
