# Respawn players with no tether
tag @a remove temp
execute as @a[tag=player,tag=!alive,scores={tether=0}] if entity @a[tag=alive] run tag @s add temp
execute as @r[tag=temp] run function uub:respawn
