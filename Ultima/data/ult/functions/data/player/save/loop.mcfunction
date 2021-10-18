# Test to see if this child element's UUID matches the saving player
    # Get the array child's UUID
    data modify storage ult:temp UUID set from storage ult:temp Players[0].UUID
    # Compare to player UUID
    execute store success score .no_match var run data modify storage ult:temp UUID set from storage ult:temp Player.UUID
    # If it's a match, an instance is found, and append the modified data
    scoreboard players operation .no_instance control < .no_match var
    execute if score .no_match var matches 0 run data modify storage ult:temp NewPlayers append from storage ult:temp Player
    # Otherwise, append the old data
    execute if score .no_match var matches 1 run data modify storage ult:temp NewPlayers append from storage ult:temp Players[0]

# Continue looping while there are elements left
    data remove storage ult:temp Players[0]
    execute if data storage ult:temp Players[0] run function ult:data/player/save/loop
