# Get AFK settings and display warning based on setting and the AFK timer
    function ult:data/player/get
    scoreboard players set .show_afk var 0
    execute unless score .show_afk var matches 1 store success score .show_afk var if data storage ult:temp Player{afkTime: 0b} if score @s afk matches 75..
    execute unless score .show_afk var matches 1 store success score .show_afk var if data storage ult:temp Player{afkTime: 1b} if score @s afk matches 150..
    execute unless score .show_afk var matches 1 store success score .show_afk var if data storage ult:temp Player{afkTime: 2b} if score @s afk matches 225..
    execute if score .show_afk var matches 1 run title @s times 0 2 0
    execute if score .show_afk var matches 1 run title @s subtitle {"text": "Move your camera", "color": "#F8961E"}
    execute if score .show_afk var matches 1 run title @s title {"text": "You are AFK!", "color": "#F8961E", "bold": true}
