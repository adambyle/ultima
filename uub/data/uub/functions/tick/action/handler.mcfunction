execute unless score game q matches 0 if score @s action matches 1..4 run title @s actionbar {"text": "You cannot change modes mid-game.","color": "red"}
execute unless score game q matches 1 if entity @s[team=play] run tellraw @a {"text": "You cannot opt out right now.","color": "red"}
execute unless score mode q matches 2 if entity @s[team=play] run tellraw @a {"text": "You cannot opt out right now.","color": "red"}
execute unless entity @s[team=play] if entity @s[team=play] run tellraw @a {"text": "You cannot opt out right now.","color": "red"}

execute if score game q matches 0 if score @s action matches 1..4 run function uub:tick/action/mode_start
execute if score game q matches 1 if score mode q matches 2 if entity @s[team=play] if score @s action matches 5 run function uub:tick/action/deopt
