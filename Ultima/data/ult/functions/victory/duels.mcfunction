function ult:data/map/get_details
title @a reset
title @a times 0 70 10
title @a subtitle "Next up"
execute unless score .map_mode flag = flag.map_mode.selected const run title @a title {"storage": "ult:temp", "nbt": "Map", "color": "green"}

execute as @a[tag=player, scores={queue=1}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
execute if score .total_players control matches 3.. run tellraw @a [{"text": "Next fighter: ", "color": "gray"}, {"selector": "@a[tag=player, scores={queue=1}]"}]
schedule function ult:spawn/duels 80t
schedule function ult:start/lighting 3s

scoreboard players operation .game_state flag = flag.game_state.transition const

scoreboard players reset * health_display
scoreboard objectives setdisplay sidebar wins
