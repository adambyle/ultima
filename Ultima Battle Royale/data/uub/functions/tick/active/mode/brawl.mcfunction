# Respawn players when there is room
scoreboard players set #temp pn 0
execute as @a[tag=player, tag=alive] run scoreboard players add #temp pn 1
execute if score #temp pn matches ..3 as @r[tag=player, tag=!alive, scores={tether=0, queue=1}] run function uub:respawn
