# Find the player's data in the array
    # Assume the player has no existing data
    scoreboard players set .no_instance control 1
    # Make a copy of the list
    data modify storage ult:temp Players set from storage ult:players Players
    # Make a new list that will later contain the modified data
    data modify storage ult:temp NewPlayers set value []
    # Use iteration by deletion to find the player's data
    execute if data storage ult:temp Players[0] run function ult:data/player/save/loop
    # If no instances exist, just append the raw data to the new list
    execute if score .no_instance control matches 1 run data modify storage ult:temp NewPlayers append from storage ult:temp Player
    # Copy over the new list to the hard data
    data modify storage ult:players Players set from storage ult:temp NewPlayers
