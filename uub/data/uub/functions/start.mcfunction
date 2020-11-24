scoreboard players set pn q 0
execute as @a[team=play] run scoreboard players add pn q 1

##
scoreboard players set pn q 2

scoreboard players set invalid n 0
execute if score mode q matches 1 unless score pn q matches 3..4 run scoreboard players set invalid n 1
execute if score mode q matches 2 unless score pn q matches 2 run scoreboard players set invalid n 2
execute if score mode q matches 3 unless score pn q matches 3..8 run scoreboard players set invalid n 3
execute if score mode q matches 4 unless score pn q matches 4..8 run scoreboard players set invalid n 4
execute if score map q matches 2..3 run scoreboard players set invalid n 5
execute if score pn q matches ..1 run scoreboard players set invalid n 6

execute if score invalid n matches 1.. run tellraw @s ""
execute if score invalid n matches 5 run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "The map you have selected cannot yet be played.","color": "gray"}]
execute if score invalid n matches 6 run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 2 players to play this game.","color": "gray"}]

execute if score invalid n matches 1 if score pn q matches 2 run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 3 players to play Classic mode.","color": "gray"}]
execute if score invalid n matches 1 if score pn q matches 5.. run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "No more than 4 players can play Classic mode.","color": "gray"}]
execute if score invalid n matches 2 if score pn q matches 3.. run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "No more than 2 players can play Duels mode.","color": "gray"}]
execute if score invalid n matches 3 if score pn q matches 2 run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 3 players to play Ultimate Brawl mode.","color": "gray"}]
execute if score invalid n matches 4 if score pn q matches 2..3 run tellraw @s [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 4 players to play Double Elimination mode.","color": "gray"}]

execute if score invalid n matches 1..4 if score pn q matches 2 run tellraw @s [{"text": "Click here to play Duels mode instead.","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 2"}}]
execute if score invalid n matches 1..4 if score pn q matches 3..4 run tellraw @s [{"text": "Click here to play Classic mode instead.","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 1"}}]
execute if score invalid n matches 1..4 if score pn q matches 5..8 run tellraw @s [{"text": "Click here to play Ultimate Brawl mode instead.","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 3"}}]

execute if score invalid n matches 1.. run tp @s 0 21 0
execute if score invalid n matches 1.. run setblock 0 21 3 polished_blackstone_pressure_plate[powered=false]

execute if score invalid n matches 0 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 0.75
execute if score invalid n matches 0 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 1
execute if score invalid n matches 0 run scoreboard players set game q -1
execute if score invalid n matches 0 run schedule function uub:start/prep 1s
