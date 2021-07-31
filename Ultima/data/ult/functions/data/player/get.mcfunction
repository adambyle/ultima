# Store the data of the given player UUID into temporary storage
    # Destroy existing data to prevent accidental access of someone else's data
    data remove storage ult:temp Player
    # Create a temporary player list to iterate through by deletion
    data modify storage ult:temp Players set from storage ult:players Players
    execute if data storage ult:temp Players[0] run function ult:data/player/get/loop
    # If the player does not exist, create a brand new node for this player
    execute unless data storage ult:temp Player run data modify storage ult:temp Player.UUID set from entity @s UUID
    # Format the data to complete missing data
    function ult:data/player/get/modernize
