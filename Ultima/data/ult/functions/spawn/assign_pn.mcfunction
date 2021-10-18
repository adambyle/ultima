function ult:data/root

# Add 1 to player id, and if it is taken keep incrementing
    scoreboard players add @s pn 1
    scoreboard players set .loop var 0
    # Test for existing players
    execute as @a[tag=alive, tag=player, tag=!root] if score @s pn = @r[tag=root] pn as @r[tag=root] run scoreboard players set .loop var 1
    # Test for players who will soon respawn with this id
    execute as @e[tag=respawn_marker] if score @s pn = @r[tag=root] pn as @r[tag=root] run scoreboard players set .loop var 1
    execute if score .loop var matches 1 run function ult:spawn/assign_pn
