scoreboard players operation .game_state flag = flag.game_state.active const
function ult:start/round
execute as @a[tag=alive] run function ult:spawn
execute unless entity @a[tag=alive] run function ult:spawn/next
function ult:spawn/next
execute as @a[gamemode=spectator] run function ult:tp
scoreboard objectives setdisplay sidebar health_display
