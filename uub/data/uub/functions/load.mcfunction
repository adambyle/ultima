kill @a
kill @e[tag=!text,tag=!nokill]
kill @e[type=item]

tag @a remove played_last_game
tag @a[team=play] add played_last_game

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
scoreboard objectives add last_attacker dummy
scoreboard objectives add dmg_source dummy
scoreboard objectives add event_timer dummy
scoreboard objectives add afk dummy
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add rx dummy
scoreboard objectives add ry dummy

scoreboard objectives add a.kills dummy
scoreboard objectives add a.deaths dummy
scoreboard objectives add a.avenge dummy
scoreboard objectives add a.not_underdog dummy
scoreboard objectives add a.steal dummy
scoreboard objectives add a.leader_kill dummy
scoreboard objectives add a.low_kill dummy
scoreboard objectives add a.damage_taken custom:damage_taken
scoreboard objectives add a.melee_dealt custom:damage_dealt

scoreboard objectives add s.kills dummy
scoreboard objectives add s.deaths dummy
scoreboard objectives add s.duels.win dummy
scoreboard objectives add s.classic.win dummy
scoreboard objectives add s.brawl.win dummy
scoreboard objectives add s.manor.win dummy
scoreboard objectives add s.woodlands.win dummy
scoreboard objectives add s.dungeon.win dummy
scoreboard objectives add s.abyss.win dummy
scoreboard objectives add s.citadel.win dummy
scoreboard objectives add s.reflect.win dummy
scoreboard objectives add s.avanto.win dummy
scoreboard objectives add s.dracula.win dummy
scoreboard objectives add s.duels.play dummy
scoreboard objectives add s.classic.play dummy
scoreboard objectives add s.brawl.play dummy
scoreboard objectives add s.manor.play dummy
scoreboard objectives add s.woodlands.play dummy
scoreboard objectives add s.dungeon.play dummy
scoreboard objectives add s.abyss.play dummy
scoreboard objectives add s.citadel.play dummy
scoreboard objectives add s.dracula.play dummy
scoreboard objectives add s.reflect.play dummy
scoreboard objectives add s.avanto.play dummy
scoreboard objectives add s.win dummy
scoreboard objectives add s.play dummy

scoreboard players add gid q 1
scoreboard players operation @a gid = gid q
scoreboard players set @a qdeath 0
scoreboard players set @a qkill 0
scoreboard players set @a queue 0
scoreboard players set @a kills 0
scoreboard players set @a took_dmg 0
scoreboard players set @a dmg 0
scoreboard players set @a dmg_source 0
scoreboard players set @a last_attacker 0
scoreboard players set @a event_timer -1
scoreboard players set @a rot -1
scoreboard players set @a afk 0

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

tag @a[team=play] remove team_spect
tag @a[team=spect] remove team_play
tag @a[tag=!team_play,tag=!team_spect] add team_play

replaceitem entity @s[tag=team_play] enderchest.10 lime_terracotta{display:{Name:'{"text": "Opted in","color": "green","bold": true,"italic": false}',Lore:['{"text": "Click to opt out.","color": "gray"}']}}
replaceitem entity @s[tag=team_spect] enderchest.10 blue_terracotta{display:{Name:'{"text": "Opted out","color": "blue","bold": true,"italic": false}',Lore:['{"text": "Click to opt in.","color": "gray"}']}}

team leave @a
team join off @a

tag @a remove low
tag @a remove fresh
tag @a remove high

setworldspawn 45 30 -11
execute if score played_game n matches 1 run tp @a 45 30 -11 180 0
execute if score played_game n matches 1 run spawnpoint @a 45 30 -11 180
execute if score played_game n matches 0 run tp @a 45 30 -11 0 0
execute if score played_game n matches 0 run spawnpoint @a 45 30 -11 0
scoreboard players reset * qdeath
clear @a
effect clear @a
gamemode adventure @a

schedule clear uub:start/prep
schedule clear uub:event/duels
schedule clear uub:start/timer

execute at @e[tag=dungeon_potion] run data remove block ~ ~ ~ Items

difficulty peaceful

schedule clear uub:event/dungeon_potion
schedule clear uub:event/woodlands_smoke
schedule clear uub:event/citadel_rune_noise
schedule clear uub:event/woodlands_arrows
function uub:event/woodlands_smoke
function uub:event/citadel_rune_noise

execute if score randmap q matches 1.. if score played_game n matches 1 run function uub:settings/next_map
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

execute as @e[tag=award] run data modify entity @s Invisible set value 1b
execute as @e[tag=award] run data modify entity @s ArmorItems set value []
execute as @e[tag=award] run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=award_plaque] run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=award_nameplate] run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=award_description] run data modify entity @s CustomNameVisible set value 0b
execute if score played_game n matches 1 unless score mode q matches 2 run function uub:awards
scoreboard players set played_game n 0

scoreboard players set @a a.kills 0
scoreboard players set @a a.deaths 0
scoreboard players set @a a.avenge 0
scoreboard players set @a a.not_underdog 0
scoreboard players set @a a.steal 0
scoreboard players set @a a.leader_kill 0
scoreboard players set @a a.low_kill 0
scoreboard players set @a a.damage_taken 0
scoreboard players set @a a.melee_dealt 0

data remove block 43 31 -12 Lock
setblock 43 31 -9 polished_blackstone_button[face=floor,facing=west]
