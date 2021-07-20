# Choose random position in circle around target and teleport there if safe to do so
    execute positioned ^ ^ ^2 if block ~ ~ ~ air unless block ~ ~-1 ~ air if score .map event.skill_inc matches 1 anchored eyes run tp @s ~ ~ ~ facing entity @r[tag=temp]
    execute positioned ^ ^ ^-2 if block ~ ~ ~ air unless block ~ ~-1 ~ air if score .map event.skill_inc matches 2 anchored eyes run tp @s ~ ~ ~ facing entity @r[tag=temp]
    execute positioned ^2 ^ ^ if block ~ ~ ~ air unless block ~ ~-1 ~ air if score .map event.skill_inc matches 3 anchored eyes run tp @s ~ ~ ~ facing entity @r[tag=temp]
    execute positioned ^-2 ^ ^ if block ~ ~ ~ air unless block ~ ~-1 ~ air if score .map event.skill_inc matches 4 anchored eyes run tp @s ~ ~ ~ facing entity @r[tag=temp]
