function ult:data/player/get_nbt
execute if data storage ult:temp Player.Spectate{startGame: true} as @s[tag=player, tag=!alive] run function ult:spectate
execute if data storage ult:temp Player.Spectate{startGame: true} as @s[tag=spectator, tag=!parkour] run function ult:spectate
