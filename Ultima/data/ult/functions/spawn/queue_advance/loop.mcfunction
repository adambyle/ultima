# Find player at this point in queue
    function ult:data/root
    execute as @a[tag=player, tag=!alive] if score @s queue = .iter var run tag @s add root

# Search for player next in queue
    scoreboard players operation .queue var = .iter var
    scoreboard players remove .queue var 1
    scoreboard players set .can_deplete var 1
    execute as @a[tag=player, tag=!alive] if score @s queue = .queue var run scoreboard players set .can_deplete var 0

# If no such player exists, move up in the queue
    execute if score .can_deplete var matches 1 run scoreboard players remove @a[tag=root] queue 1

# Keep looping if possible
    scoreboard players add .iter var 1
    execute if score .iter var <= .total_players control run function ult:spawn/queue_advance/loop
