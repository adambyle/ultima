# Get AFK settings and display warning based on setting and the AFK timer
    function ult:data/player/get
    scoreboard players set .show_afk _var 0
    execute unless score .show_afk _var matches 1 store success score .show_afk _var if data storage ult:temp Player{afkTime: 0b} if score @s afk matches 100..
    execute unless score .show_afk _var matches 1 store success score .show_afk _var if data storage ult:temp Player{afkTime: 1b} if score @s afk matches 200..
    execute unless score .show_afk _var matches 1 store success score .show_afk _var if data storage ult:temp Player{afkTime: 2b} if score @s afk matches 300..
    execute if score .show_afk _var matches 1 run title @s reset
    execute if score .show_afk _var matches 1 run title @s times 0 2 0
    execute if score .show_afk _var matches 1 run title @s subtitle {"text": "Move your camera", "color": "#F8961E"}
    execute if score .show_afk _var matches 1 run title @s title {"text": "You are AFK!", "color": "#F8961E", "bold": true}
