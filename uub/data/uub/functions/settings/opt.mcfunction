tag @a remove player
tag @s[tag=team_play] add player
tag @s remove team_play
tag @s remove team_spect
tag @s[tag=player] add team_spect
tag @s[tag=!player] add team_play
execute at @s run playsound block.note_block.bell master @s

function uub:settings/main_menu
