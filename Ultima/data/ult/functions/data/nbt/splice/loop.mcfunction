# Pop the first entry and give it to the sub array
    data modify storage ult:temp SubArray append from storage ult:temp Array[0]
    data remove storage ult:temp Array[0]

# Test to keep going
    scoreboard players add .len _var 1
    execute if score .len _var < .len control run function ult:data/nbt/splice/loop
