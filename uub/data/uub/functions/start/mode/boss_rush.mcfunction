# One player as boss, up to four others as fighters
team join boss @r[tag=player]
team join fighters @a[limit=4,sort=random,team=!boss]
tag @a[team=fighters] add alive
tag @a[team=] remove player

# Boss health is based on the number of players
scoreboard players set @a[team=fighters] pseudo_health 20
scoreboard players set @a[team=boss] pseudo_health 0
execute as @a[team=fighters,tag=player] run scoreboard players add @a[team=boss] pseudo_health 500

execute store result bossbar uub:boss max store result bossbar uub:boss value run scoreboard players get @r[team=boss] pseudo_health

scoreboard players set @a[team=fighters] score 3
scoreboard objectives modify score displayname {"text": "Lives","color": "dark_red"}
scoreboard objectives setdisplay belowName display_health
scoreboard objectives setdisplay list display_health
scoreboard objectives setdisplay sidebar score
