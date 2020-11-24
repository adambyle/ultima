execute unless score game q matches 0 if score @s action matches 1..4 run title @s actionbar {"text": "You cannot start a game mid-game!","color": "red"}

execute if score game q matches 0 if score @s action matches 1..4 run function uub:tick/action/mode_start
