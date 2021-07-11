# Unready
    tag @s remove ready
    function ult:start/ready/update_notice
    tellraw @a [{"selector": "@s", "color": "dark_red"}, {"text": " is no longer ready."}]

# Cancel if nobody is ready anymore
    execute unless entity @a[tag=player, tag=ready] run function ult:start/ready/cancel
