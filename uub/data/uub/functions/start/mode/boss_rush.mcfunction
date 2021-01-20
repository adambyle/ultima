# One player as boss, up to four others as fighters
team join boss @r[tag=player]
team join fighters @a[limit=4,sort=random,team=!boss]
tag @a[team=fighters] add alive
tag @a[team=] remove player

# Boss health is based on the number of players
scoreboard players set @a[team=fighters] pseudo_health 20
scoreboard players set @a[team=boss] pseudo_health 200
execute as @a[team=fighters] run scoreboard players add @a[team=boss] pseudo_health 400

execute store result bossbar uub:boss max store result bossbar uub:boss value run scoreboard players get @r[team=boss] pseudo_health

scoreboard objectives setdisplay belowName display_health
scoreboard objectives setdisplay list display_health
scoreboard objectives setdisplay sidebar

# Everyone gets three lives
scoreboard players set @s score 3
