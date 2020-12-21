tag @e remove marker
summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Tags:["marker"]}
execute store result entity @e[tag=marker,limit=1] Rotation[0] float 1.0 run scoreboard players get @s rot

tag @a remove player
tag @s add player

execute at @e[tag=marker] as @a[team=play] if score @s tether = @r[tag=player] pn run particle dust 1 0 0 0.8 ^ ^1 ^1 0 0 0 0 1 force @s
kill @e[tag=marker]
