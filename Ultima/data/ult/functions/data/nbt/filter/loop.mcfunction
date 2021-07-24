# Test if this element has object as a subset (uses ult:temp Merge)
    data modify storage ult:temp Object set from storage ult:temp Array[0]
    # Test for merge and append if matches
    function ult:data/nbt/subset
    execute if score .subset control matches 1 run data modify storage ult:temp SubArray append from storage ult:temp Array[0]
    # Continue looping
    data remove storage ult:temp Array[0]
    execute if data storage ult:temp Array[0] run function ult:data/nbt/filter/loop
