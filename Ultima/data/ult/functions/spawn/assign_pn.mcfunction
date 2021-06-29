function ult:data/root

# Add 1 to player id, and if it is taken keep incrementing
scoreboard players add @s pn 1

scoreboard players set .loop _var 0
execute as @a[tag=alive, tag=player, tag=!root] if score @s pn = @r[tag=root] pn as @r[tag=root] run scoreboard players set .loop _var 1
execute as @e[tag=respawn_marker] if score @s pn = @r[tag=root] pn as @r[tag=root] run scoreboard players set .loop _var 1
execute if score .loop _var matches 1 run function ult:spawn/assign_pn
