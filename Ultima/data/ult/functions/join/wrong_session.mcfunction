function ult:join

execute as @s[tag=!spectator] run function ult:settings/opt/out

# Spectate or lobby
    function ult:data/player/get
    execute store result score .spect_mode var run data get storage ult:temp Player.Spectate.joinWorld
    function ult:exit

tellraw @s[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"text": "A game is currently in progress.", "color": "#F9C74F"}]
function ult:settings/opt/prompt
