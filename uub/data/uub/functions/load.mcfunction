scoreboard objectives add n dummy
scoreboard objectives add q dummy
scoreboard objectives add gid dummy
scoreboard objectives add action trigger
scoreboard objectives add pn dummy
scoreboard objectives add tether dummy
scoreboard objectives add qdeath deathCount
scoreboard objectives add qkill playerKillCount
scoreboard objectives add queue dummy
scoreboard objectives add kills dummy "Score"
scoreboard objectives add hp dummy {"text": "HP","color": "dark_red"}
scoreboard objectives add dmg custom:damage_dealt
scoreboard objectives add rot dummy
scoreboard objectives add timer dummy

scoreboard players add gid q 1
scoreboard players operation @a gid = gid q
scoreboard players set @a qdeath 0
scoreboard players set @a qkill 0
scoreboard players set @a queue 0
scoreboard players reset @a kills
scoreboard players set @a rot 0
scoreboard players set @a rot -1

scoreboard players set game q 0
execute unless score mode q matches 1.. positioned -3 22 0 run function uub:settings/mode
execute unless score map q matches 1.. unless score randmap q matches 1.. positioned 3 22 0 run function uub:settings/map

team add spect {"text": "Spectating","color": "blue"}
team modify spect collisionRule never
team modify spect color blue
team modify spect friendlyFire false
team modify spect seeFriendlyInvisibles false

team add play {"text": "Playing","color": "green"}
team modify play color green
team modify play collisionRule never
team modify play friendlyFire false
team modify play seeFriendlyInvisibles false

team join play @a[team=]

tag @a remove low
tag @a remove fresh

tp @a 0 21 0
clear @a
effect clear @a
gamemode adventure @a
effect give @a resistance 99999 4 true
effect give @a invisibility 99999 0 true
effect give @a instant_health 1 3 true

schedule clear uub:start/prep
schedule clear uub:event/duels

execute as @e[tag=text] run data merge entity @s {CustomNameVisible:1b}
execute at @e[tag=dungeon_potion] run data remove block ~ ~ ~ Items

difficulty peaceful

schedule clear uub:tick/second
schedule clear uub:event/dungeon_potion
function uub:tick/second

execute if score randmap q matches 1.. run scoreboard players add randmap q 1
execute if score randmap q matches 4.. run scoreboard players set randmap q 1
execute if score randmap q matches 1.. run scoreboard players set map q 0
scoreboard objectives setdisplay sidebar

gamerule sendCommandFeedback false
