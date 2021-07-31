# Round-specific commands
    function ult:start/round

# Spawn all the starting players in a random order
    execute as @a[sort=random, tag=alive, tag=player] run function ult:spawn
    tag @a remove fresh
    execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 1.5
    execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 4 2

# Final lobby clean up
    execute as @e[tag=text_display] run data modify entity @s CustomNameVisible set value false
    execute at @e[tag=vote_station] run tp @a[distance=..2] 45 30 -12
    scoreboard players operation .game_state flag = flag.game_state.active const

# Players who have opted to spectate games when they just start are teleported to watch
    execute as @a run function ult:start/spectate

