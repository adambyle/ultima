# Unready
    tag @s remove ready
    function ult:start/ready/update_notice
    tellraw @a [{"text": "L: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " is no longer ready.", "color": "#F3722C"}]

# Cancel if nobody is ready anymore
    execute unless entity @a[tag=player, tag=ready] run function ult:start/ready/cancel
