# Take an array and return a sub array starting from zero of length `.len control`
    data modify storage ult:temp SubArray set value []
    scoreboard players set .len var 0
    execute if score .len var < .len control run function ult:data/nbt/splice/loop
