# Add 1 to player id, and if it is taken keep incrementing
    function ult:data/root
    scoreboard players add @s queue 1
    execute as @a[tag=!alive, tag=!root, tag=player] if score @s queue = @r[tag=root] queue as @r[tag=root] run function ult:spawn/assign_queue
