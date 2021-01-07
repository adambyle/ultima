execute if score randmap q matches 1.. run scoreboard players operation map q = randmap q

scoreboard players set pn q 0
execute as @a[tag=team_play,tag=ready] run scoreboard players add pn q 1

scoreboard players set goal q 1
scoreboard players operation goal q += pn q
scoreboard players set goal q 5

scoreboard players set invalid n 0
execute if score mode q matches 1 unless score pn q matches 3..4 run scoreboard players set invalid n 1
execute if score mode q matches 2 unless score pn q matches 2.. run scoreboard players set invalid n 2
execute if score mode q matches 3 unless score pn q matches 3..8 run scoreboard players set invalid n 3
execute if score map q matches 6.. run scoreboard players set invalid n 5
execute if score pn q matches ..1 run scoreboard players set invalid n 6

execute if score bypass debug matches 1 run scoreboard players set invalid n 0

execute if score invalid n matches 1.. run tellraw @a ""
execute if score invalid n matches 5 run tellraw @a [{"text": "Can't start! ","color": "dark_red"},{"text": "The map you have selected cannot yet be played.","color": "gray"}]
execute if score invalid n matches 6 run tellraw @a [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 2 players to play this game.","color": "gray"}]

execute if score invalid n matches 1 if score pn q matches 2 run tellraw @a [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 3 players to play Classic mode.","color": "gray"}]
execute if score invalid n matches 1 if score pn q matches 5.. run tellraw @a [{"text": "Can't start! ","color": "dark_red"},{"text": "No more than 4 players can play Classic mode.","color": "gray"}]
execute if score invalid n matches 3 if score pn q matches 2 run tellraw @a [{"text": "Can't start! ","color": "dark_red"},{"text": "You need at least 3 players to play Brawl mode.","color": "gray"}]

execute if score invalid n matches 1..4 if score pn q matches 2 run tellraw @a [{"text": "Click here to play Duels mode instead.","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 2"}}]
execute if score invalid n matches 1..4 if score pn q matches 3..4 run tellraw @a [{"text": "Click here to play Classic mode instead.","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 1"}}]
execute if score invalid n matches 1..4 if score pn q matches 5..8 run tellraw @a [{"text": "Click here to play Brawl mode instead.","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 3"}}]

execute if score invalid n matches 1.. run tp @s 45 30 -11

execute if score invalid n matches 0 run tellraw @a[tag=!ready,tag=team_play] {"text": "You were not ready by the time the game started, so you were opted out.","color": "gray"}
execute if score invalid n matches 0 run replaceitem entity @a[tag=!ready] enderchest.10 blue_terracotta{display:{Name:'{"text": "Opted out","color": "blue","bold": true,"italic": false}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}
execute if score invalid n matches 0 run tag @a[tag=!ready] remove team_play
execute if score invalid n matches 0 run tag @a[tag=!team_play] add team_spect

execute if score invalid n matches 0 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 0.75
execute if score invalid n matches 0 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 1
execute if score invalid n matches 0 run scoreboard players set game q -1
execute if score invalid n matches 0 run schedule function uub:start/prep 1s

execute if score invalid n matches 0 run title @a reset
execute if score invalid n matches 0 run title @a times 0 20 5
execute if score invalid n matches 0 if score randmap q matches 1..12 run title @a subtitle {"text": "By Adam Byle","color": "gold"}
execute if score invalid n matches 0 if score randmap q matches 13 run title @a subtitle {"text": "By Tucker Lawson","color": "gold"}
execute if score invalid n matches 0 if score randmap q matches 14 run title @a subtitle {"text": "By Brayden Smith","color": "gold"}
execute if score invalid n matches 0 if score randmap q matches 1.. run function uub:settings/announce_map

execute if score map q matches 3 run schedule function uub:event/dungeon_potion 15s

execute if score invalid n matches 0 run function uub:event/lighting
schedule clear uub:start/timer
bossbar set gamestart visible false
tag @a remove ready
