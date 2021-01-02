kill @a

execute if score all debug matches 1 run tellraw @a {"text": "ATTENTION: DEBUG MODE IS ON! GAME MAY NOT WORK PROPERLY!","bold": true,"color": "yellow"}
execute if score all debug matches 1 run tellraw @a [{"text": "Unless otherwise instructed, tell the server operator to ","color": "yellow"},{"text": "turn off debug mode.","underlined": true,"clickEvent": {"action": "run_command","value": "/function uub:debug/off"}}]

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
scoreboard objectives add debug dummy
scoreboard objectives add event_timer dummy

scoreboard objectives add s.kills dummy
scoreboard objectives add s.deaths dummy
scoreboard objectives add s.duels.win dummy
scoreboard objectives add s.classic.win dummy
scoreboard objectives add s.brawl.win dummy
scoreboard objectives add s.manor.win dummy
scoreboard objectives add s.woodlands.win dummy
scoreboard objectives add s.dungeon.win dummy
scoreboard objectives add s.abyss.win dummy
scoreboard objectives add s.duels.play dummy
scoreboard objectives add s.classic.play dummy
scoreboard objectives add s.brawl.play dummy
scoreboard objectives add s.manor.play dummy
scoreboard objectives add s.woodlands.play dummy
scoreboard objectives add s.dungeon.play dummy
scoreboard objectives add s.abyss.play dummy
scoreboard objectives add s.win dummy
scoreboard objectives add s.play dummy

scoreboard players add gid q 1
scoreboard players operation @a gid = gid q
scoreboard players set @a qdeath 0
scoreboard players set @a qkill 0
scoreboard players set @a queue 0
scoreboard players reset @a kills
scoreboard players set @a event_timer -1
scoreboard players set @a rot -1

scoreboard players set game q 0
scoreboard players set arrow_refill n 0
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
spawnpoint @a 0 21 0
scoreboard players reset * qdeath
clear @a
effect clear @a
gamemode adventure @a

schedule clear uub:start/prep
schedule clear uub:event/duels

execute as @e[tag=text] run data merge entity @s {CustomNameVisible:1b}
execute at @e[tag=dungeon_potion] run data remove block ~ ~ ~ Items

difficulty peaceful

schedule clear uub:event/dungeon_potion
schedule clear uub:event/woodlands_smoke
schedule clear uub:event/woodlands_arrows
function uub:event/woodlands_smoke

execute if score randmap q matches 1.. run function uub:settings/next_map
scoreboard objectives setdisplay sidebar

execute unless score feedback debug matches 1 run gamerule sendCommandFeedback false

data modify entity @e[tag=version,limit=1] CustomName set value '{"text":"Ultima: Ultimate Brawl 1.1","color":"gold"}'

execute if score played_game n matches 1 run tellraw @a [{"text": "Interested in your performance? ","color": "aqua"},{"text": "Click here!","color": "white","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 7"}}]
scoreboard players set played_game n 0

schedule clear uub:tick/load
function uub:tick/load
schedule function uub:tick/load 1t append
schedule function uub:tick/load 3s append
