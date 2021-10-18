# Start immediately if possible
    function ult:start/ready/valid_start

# Move timer down
    # Slower for vote mode
    execute if score .valid var matches 1 if score .map_mode flag = flag.map_mode.vote const store result bossbar ult:game_start value run scoreboard players remove .ready_timeout var 1
    # Faster otherwise
    execute if score .valid var matches 1 unless score .map_mode flag = flag.map_mode.vote const store result bossbar ult:game_start value run scoreboard players remove .ready_timeout var 2

# Final coutndown noises
    execute if score .ready_timeout var matches 1..8 as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 2

# Automatically ready players based on their settings
    execute if score .ready_timeout var matches 1.. as @a[tag=player, tag=!ready] run function ult:start/ready/auto_test

# Repeat timer if not done counting down
    execute if score .ready_timeout var matches 1.. run schedule function ult:start/ready/timer 1s

# End the timer if at zero
    execute if score .ready_timeout var matches 0 run function ult:start/ready/timeout
