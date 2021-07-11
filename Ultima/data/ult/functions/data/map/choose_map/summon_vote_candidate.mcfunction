# Carry over the map number
    tag @e remove temp
    summon marker ~ ~ ~ {Tags: ["temp", "vote_map"]}
    scoreboard players operation @e[tag=temp] control = @s control

# Continue if even more people voted for this map
    scoreboard players add .temp _var 1
    execute if score .temp _var < @s _var run function ult:data/map/choose_map/summon_vote_candidate
