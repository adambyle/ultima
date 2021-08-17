# Apply skill
    # Get skill value of nearest marker
    scoreboard players operation @s event.skill = @e[sort=nearest, limit=1, tag=last_stand_skill] event.skill
    # Announce application
    execute if score @s event.skill = event.skill.flurry_rush const run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " learned ", "color": "gray"}, {"text": "Flurry Rush", "color": "#577590"}, {"text": ".", "color": "gray"}]
    execute if score @s event.skill = event.skill.hot_pursuit const run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " learned ", "color": "gray"}, {"text": "Hot Pursuit", "color": "#577590"}, {"text": ".", "color": "gray"}]
    execute if score @s event.skill = event.skill.combonatrix const run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " learned ", "color": "gray"}, {"text": "Combonatrix", "color": "#577590"}, {"text": ".", "color": "gray"}]
    execute if score @s event.skill = event.skill.backstabbing const run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " learned ", "color": "gray"}, {"text": "Backstabbing", "color": "#577590"}, {"text": ".", "color": "gray"}]

# Reset attributes and apply new ones
    function ult:tick/map/last_stand/skill/reset
    execute if score @s event.skill = event.skill.hot_pursuit const run attribute @s generic.movement_speed base set 0.13
