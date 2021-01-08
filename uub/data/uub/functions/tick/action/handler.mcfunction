execute unless score game q matches 0 if score @s action matches 1..3 run title @s actionbar {"text": "You cannot change modes mid-game.","color": "red"}
execute unless score game q matches 1.. if score @s action matches 5 run title @s actionbar {"text": "Opt out using the ender chest.","color": "red"}
execute if score game q matches 1.. unless entity @s[team=play] if score @s action matches 5 run title @s actionbar {"text": "You are already opted out.","color": "red"}
execute unless score game q matches 1.. if score @s action matches 6 run title @s actionbar {"text": "Opt in using the ender chest.","color": "red"}
execute if score game q matches 1.. unless entity @s[team=spect] if score @s action matches 6 run title @s[tag=!left_game] actionbar {"text": "You are already opted in.","color": "red"}
execute if score @s action matches 6 run title @s[tag=left_game] actionbar {"text": "You cannot join a game you opted out of.","color": "red"}
execute if score @s action matches 7 run title @s[gamemode=!spectator] actionbar {"text": "You cannot teleport to the lobby now.","color": "red"}

execute if score game q matches 0 if score @s action matches 1..3 run function uub:tick/action/mode_start
execute if score game q matches 1.. if entity @s[team=play] if score @s action matches 5 run function uub:tick/action/deopt
execute if score game q matches 1.. if score @s action matches 6 if entity @s[team=spect,tag=!left_game] run function uub:tick/action/opt
execute if score game q matches 1.. if score @s action matches 7 if entity @s[gamemode=spectator] run function uub:tick/action/tplobby
