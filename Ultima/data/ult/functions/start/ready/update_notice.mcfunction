# Highlight why the game isn't starting yet
    execute if entity @a[tag=!ready] run bossbar set ult:game_start name [{"text": "Game Starting", "color": "blue"}, {"text": " -- Waiting on: ", "color": "white"}, {"selector": "@a[tag=player, tag=!ready]", "color": "dark_red", "separator": " "}]
    execute if entity @a[tag=!ready] run bossbar set ult:game_start color blue
    execute unless entity @a[tag=!ready] run bossbar set ult:game_start name [{"text": "Game Delayed", "color": "gold"}, {"text": " -- ", "color": "white"}, {"text": "Bad settings (see chat)", "color": "yellow"}]
    execute unless entity @a[tag=!ready] run bossbar set ult:game_start color yellow
