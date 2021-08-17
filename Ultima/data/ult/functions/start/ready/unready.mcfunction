# Unready
    tag @s remove ready
    function ult:start/ready/update_notice
    tellraw @a[tag=chat.n.e] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " is no longer ready.", "color": "#F3722C"}]
    tellraw @a[tag=chat.n.l] [{"text": "N: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F3722C"}, " -"]

# Cancel if nobody is ready anymore
    execute unless entity @a[tag=player, tag=ready] run function ult:start/ready/cancel
