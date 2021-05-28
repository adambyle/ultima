tag @r[tag=player,limit=4] add alive
execute if score .game_mode flag = flag.game_mode.brawl const as @a[tag=player,tag=!alive] run function ult:spawn/assign_queue
execute if score .game_mode flag = flag.game_mode.royale const as @a[tag=!alive] run function ult:start/mode/multi/kick

scoreboard objectives setdisplay belowName health_display
scoreboard objectives setdisplay list health_display

scoreboard players set .goal_score control 5
