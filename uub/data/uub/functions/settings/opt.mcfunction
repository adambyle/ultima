execute as @p if entity @s[team=play] run title @p actionbar [{"text": "You have ","color": "dark_gray"},{"text": "opted out.","color": "blue"}]
execute as @p unless entity @s[team=play] run title @p actionbar [{"text": "You have ","color": "dark_gray"},{"text": "opted in.","color": "green"}]

tag @a remove player
execute as @p run tag @s[team=play] add player
team leave @p
execute as @p run team join spect @s[tag=player]
execute as @p run team join play @s[tag=!player]

setblock ~ ~ ~ polished_blackstone_pressure_plate[powered=false]
tp @p 0 21 0
