# Spectate game based on settings
    function ult:data/player/get_nbt
    # Participating players who didn't get put in right away
    execute if data storage ult:temp Player.Spectate{startGame: true} as @s[tag=player, tag=!alive] run function ult:spectate
    # Other players who want to watch
    execute if data storage ult:temp Player.Spectate{startGame: true} as @s[tag=spectator] run function ult:spectate
