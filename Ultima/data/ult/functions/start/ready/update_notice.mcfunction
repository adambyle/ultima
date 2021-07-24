# Highlight why the game isn't starting yet
    execute if entity @a[tag=!ready] run bossbar set ult:game_start name [{"text": "Game Starting", "color": "#577590"}, {"text": " -- Waiting on: ", "color": "gray"}, {"selector": "@a[tag=player, tag=!ready]", "color": "#F3722C", "separator": " "}]
    execute if entity @a[tag=!ready] run bossbar set ult:game_start color blue
    execute unless entity @a[tag=!ready] run bossbar set ult:game_start name [{"text": "Game Delayed", "color": "#F8961E"}, {"text": " -- ", "color": "white"}, {"text": "Bad settings (see chat)", "color": "#F9C74F"}]
    execute unless entity @a[tag=!ready] run bossbar set ult:game_start color yellow
