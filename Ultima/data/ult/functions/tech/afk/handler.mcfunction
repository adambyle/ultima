# Get AFK settings and tag with AFK based on setting and the AFK timer
    function ult:data/player/get
    execute if data storage ult:temp Player{afkTime: 0b} if score @s afk matches 100.. run tag @s add afk
    execute if data storage ult:temp Player{afkTime: 1b} if score @s afk matches 200.. run tag @s add afk
    execute if data storage ult:temp Player{afkTime: 2b} if score @s afk matches 300.. run tag @s add afk

# Automatically opt out if AFK
    execute as @s[tag=player, tag=afk] run function ult:settings/opt/out
