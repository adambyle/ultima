# Test to see if this child element's UUID matches the loading player
    # Get the array child's UUID
    data modify storage ult:temp UUID set from storage ult:temp Players[0].UUID
    # Compare to player UUID
    execute store result score .no_match _var run data modify storage ult:temp UUID set from entity @s UUID
    # If it's a match, load the data
    execute if score .no_match _var matches 0 run data modify storage ult:temp Player set from storage ult:temp Players[0]

# Continue looping while there are elements left
    data remove storage ult:temp Players[0]
    execute unless data storage ult:temp Player if data storage ult:temp Players[0] run function ult:data/player/get_nbt/loop
