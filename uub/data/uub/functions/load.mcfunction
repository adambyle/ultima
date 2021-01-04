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
scoreboard objectives add took_dmg custom:damage_taken
scoreboard objectives add rot dummy
scoreboard objectives add timer dummy
scoreboard objectives add debug dummy
scoreboard objectives add dmg_source dummy
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
scoreboard players operation * gid = gid q
scoreboard players set * qdeath 0
scoreboard players set * qkill 0
scoreboard players set * queue 0
scoreboard players reset * kills
scoreboard players reset * took_dmg
scoreboard players reset * dmg_source
scoreboard players set * event_timer -1
scoreboard players set * rot -1

scoreboard players set game q 0
scoreboard players set arrow_refill n 0
execute unless score mode q matches 1.. positioned -3 22 0 run function uub:settings/mode
execute unless score map q matches 1.. unless score randmap q matches 1.. run function uub:settings/map

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

team add off {"text": "Waiting","color": "red"}
team modify off color white
team modify off collisionRule never
team modify off friendlyFire false
team modify off seeFriendlyInvisibles false

tag @a[team=play] add team_play
tag @a[team=spect] add team_spect

team join play @a[team=off]
team join play @a[team=]
team join play @a[tag=!team_play,tag=!team_spect]

tag @a remove team_play
tag @a remove team_spect
tag @a[team=play] add team_play
tag @a[team=spect] add team_spect

replaceitem entity @s[tag=team_play] enderchest.10 lime_terracotta{display:{Name:'{"text": "Opted in","color": "green","bold": true,"italic": false}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=team_spect] enderchest.10 blue_terracotta{display:{Name:'{"text": "Opted out","color": "blue","bold": true,"italic": false}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}

team leave @a
team join off @a

tag @a remove low
tag @a remove fresh

tp @a 45 30 -11
setworldspawn 45 30 -11
spawnpoint @a 45 30 -11 0
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

replaceitem entity @a[tag=team_play] armor.chest leather_chestplate{display:{color:65293}}
replaceitem entity @a[tag=team_spect] armor.chest leather_chestplate{display:{color:4607}}

tag @a remove menu.stat.map
tag @a remove menu.stat.mode
tag @a remove menu.stat
tag @a add menu.main
execute as @a run function uub:settings/main_menu

time set noon
tag @a remove ready
tag @a remove left_game
tag @a remove can_win

bossbar add gamestart {"text": "Game starting","color": "blue"}
bossbar set gamestart color blue
bossbar set gamestart players @a
bossbar set gamestart visible false
bossbar set gamestart max 15
