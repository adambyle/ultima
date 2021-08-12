# Return to lobby and main menu
    function ult:settings/player/vote/exit

# Ready up (or announce vote change)
    function ult:data/player/get
    execute if data storage ult:temp Player.Chat{pronouns: 0b} run data modify storage ult:temp Possessive set value "their"
    execute if data storage ult:temp Player.Chat{pronouns: 1b} run data modify storage ult:temp Possessive set value "his"
    execute if data storage ult:temp Player.Chat{pronouns: 2b} run data modify storage ult:temp Possessive set value "her"
    execute if score .vote _var matches -2147483648..2147483647 run tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " changed "}, {"storage": "ult:temp", "nbt": "Possessive"}, {"text": " vote.", "color": "gray"}]
    execute unless score .vote _var matches -2147483648..2147483647 if score .mandatory control matches 0 run function ult:start/ready
    execute unless score .vote _var matches -2147483648..2147483647 if score .mandatory control matches 1 run function ult:start/continuous/ready
