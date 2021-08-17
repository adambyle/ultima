function ult:data/player/get
    execute if data storage ult:temp Player.Chat{pronouns: 0b} run data modify storage ult:temp Possessive set value "their"
    execute if data storage ult:temp Player.Chat{pronouns: 1b} run data modify storage ult:temp Possessive set value "his"
    execute if data storage ult:temp Player.Chat{pronouns: 2b} run data modify storage ult:temp Possessive set value "her"
tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, [{"text": " lost ", "color": "gray"}, {"storage": "ult:temp", "nbt": "Possessive"}, " skill"]]
scoreboard players operation @s event.skill = event.skill.none const
function ult:tick/map/last_stand/skill/reset
