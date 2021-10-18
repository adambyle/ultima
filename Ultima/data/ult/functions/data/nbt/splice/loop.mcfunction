# Pop the first entry and give it to the sub array
    data modify storage ult:temp SubArray append from storage ult:temp Array[0]
    data remove storage ult:temp Array[0]

# Test to keep going
    scoreboard players add .len var 1
    execute if score .len var < .len control if data storage ult:temp Array[0] run function ult:data/nbt/splice/loop
