function uub:data/root

# Add 1 to player id, and if it is taken keep incrementing
scoreboard players add @s pn 1
execute as @a[tag=alive,tag=!root] if score @s pn = @r[tag=root] pn run function uub:spawn/assign_pn
