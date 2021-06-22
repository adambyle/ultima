# Count the votes
    function ult:data/root
    execute as @a[tag=player] if score @s vote = @e[tag=root, limit=1] control run scoreboard players add @e[tag=root] _var 1

# Summon a vote candidate per vote this map received
    scoreboard players set .temp _var 0
    # Only run if you got a vote
    execute unless score @s _var matches 0 run function ult:data/map/choose_map/summon_vote_candidate
