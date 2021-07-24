# Test which elements of an array have a certain object as a subset
    data modify storage ult:temp SubArray set value []
    execute if data storage ult:temp Array[0] run function ult:data/nbt/filter/loop
