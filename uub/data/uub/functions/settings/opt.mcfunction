tag @a remove player
tag @s[tag=team_play] add player
tag @s remove team_play
tag @s remove team_spect
tag @s[tag=player] add team_spect
tag @s[tag=!player] add team_play
execute at @s run playsound block.note_block.bell master @s
function uub:settings/main_menu
execute unless entity @a[tag=team_play,tag=!ready] if entity @a[tag=ready] run tellraw @a {"text": "Everyone is ready, game is starting.","color": "blue","bold": true}
execute unless entity @a[tag=team_play,tag=!ready] if entity @a[tag=ready] run function uub:start
