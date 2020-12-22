execute unless score game q matches 0 if score @s action matches 1..3 run title @s actionbar {"text": "You cannot change modes mid-game.","color": "red"}
execute unless score game q matches 1.. if score @s action matches 5 run title @s actionbar {"text": "You cannot opt out right now.","color": "red"}
execute unless entity @s[team=play] if score @s action matches 5 run title @s actionbar {"text": "You are already opted out.","color": "red"}
execute unless score game q matches 1.. if score @s action matches 6 run title @s actionbar {"text": "You cannot opt in right now.","color": "red"}
execute unless entity @s[team=spect] if score @s action matches 6 run title @s actionbar {"text": "You are already opted in.","color": "red"}

execute if score game q matches 0 if score @s action matches 1..3 run function uub:tick/action/mode_start
execute if score game q matches 1.. if entity @s[team=play] if score @s action matches 5 run function uub:tick/action/deopt
execute if score game q matches 1.. if score @s action matches 6 if entity @s[team=spect] run function uub:tick/action/opt
