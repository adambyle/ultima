# If NBT value was true, spectate game
    execute if score .spect_mode _var matches 1 run function ult:spectate

# If NBT value was false, go to lobby
    execute if score .spect_mode _var matches 0 run function ult:lobby
