# Find the nearest target and perform teleportation
    function ult:data/root
    tag @a remove temp
    tag @p[tag=alive, tag=!root, distance=..5] add temp
    execute at @r[tag=temp] rotated ~ 0 run function ult:tick/map/last_stand/flurry/tp
