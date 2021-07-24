# Announce the next map
    scoreboard players operation .temp_map _var = .map flag
    function ult:data/map/get_details
    title @a reset
    title @a times 0 70 10
    title @a subtitle {"text": "Next up", "color": "gray"}
    execute unless score .map_mode flag = flag.map_mode.selected const run title @a title {"storage": "ult:temp", "nbt": "Map", "color": "#577590", "bold": true}

# Queue the next player
    execute if score .total_players control matches 3.. as @a[tag=player, scores={queue=1}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
    execute if score .total_players control matches 3.. run tellraw @a [{"text": "G: ", "color": "dark_gray"}, {"text": "Next fighter: ", "color": "#577590"}, {"selector": "@a[tag=player, scores={queue=1}]", "color": "white"}]
    tellraw @a ""
    schedule function ult:spawn/duels 80t
    schedule function ult:start/lighting 3s

# Show the wins for right now
    scoreboard players reset * health_display
    scoreboard objectives setdisplay sidebar wins
