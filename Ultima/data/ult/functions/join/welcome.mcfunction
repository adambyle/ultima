function ult:join

function ult:lobby
execute if score .debug_mode flag = flag.debug_mode.on const run tellraw @a[tag=operator] [{"text": "DEBUG MODE IS ON!\n", "color": "yellow"}, {"text": "Click to turn it off.", "underlined": true, "clickEvent": {"action": "run_command", "value": "/scoreboard players operation .debug_mode flag = flag.debug_mode.off flag"}}]
effect give @s instant_health 1 3 true

clear
