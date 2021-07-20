function ult:data/root

# Test that all nearby players are facing away, and that such a player exists
    scoreboard players set .test _var 1
    execute positioned ^ ^ ^3 as @a[tag=player, tag=alive, tag=!root, distance=..3] at @s run function ult:tick/map/last_stand/backstab/loop
    execute positioned ^ ^ ^3 unless entity @a[tag=player, tag=alive, tag=!root, distance=..3] run scoreboard players set .test _var 0

# Give/clear strength based on above criteria
    execute if score .test _var matches 0 run effect clear @s strength
    execute if score .test _var matches 1 run effect give @s strength 99999 0
