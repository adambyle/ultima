tp @s 45 30 -11 0 0
setblock 45 31 -3 polished_blackstone_pressure_plate[powered=false]
execute unless entity @s[tag=ready] unless entity @s[tag=team_spect] as @a at @s run playsound block.note_block.snare master @s
execute unless entity @s[tag=ready] unless entity @s[tag=team_spect] run tellraw @a [{"selector": "@s","color": "red"},{"text": " is ready to play!","color": "white"}]
execute unless entity @a[tag=ready,tag=team_play] as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 16 0.5
execute unless entity @a[tag=ready,tag=team_play] run tellraw @a {"text": "Game starts in 15 seconds.","color": "blue","bold": true}
execute unless entity @a[tag=ready,tag=team_play] run scoreboard players set game_start n 15
execute unless entity @a[tag=ready,tag=team_play] run bossbar set gamestart visible true
execute unless entity @a[tag=ready,tag=team_play] run bossbar set gamestart value 15
execute unless entity @a[tag=ready,tag=team_play] run schedule function uub:start/timer 1s
tag @s add ready
execute unless entity @a[tag=team_play,tag=!ready] run tellraw @a {"text": "Everyone is ready, game is starting.","color": "blue","bold": true}
execute unless entity @a[tag=team_play,tag=!ready] run function uub:start
