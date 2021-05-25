function ult:data/root
tag @a remove temp
tag @p[tag=player, tag=alive, distance=..5, tag=!root] add temp
execute at @r[tag=temp] rotated ~ 0 run function ult:tick/active/map/last_stand/flurry/tp
