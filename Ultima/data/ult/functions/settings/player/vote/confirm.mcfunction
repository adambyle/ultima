# Return to lobby and main menu
    function ult:settings/player/vote/exit

# Ready up (or announce vote change)
    execute if score .vote _var matches -2147483648..2147483647 run tellraw @a [{"selector": "@s"}, {"text": " changed their vote.", "color": "gray"}]
    execute unless score .vote _var matches -2147483648..2147483647 run function ult:start/ready
