function uub:data/root

# Add 1 to player id, and if it is taken keep incrementing
scoreboard players add @s queue 1
execute as @a[tag=alive] if score @s queue = @r[tag=root] queue run function uub:spawn/assign_queue
