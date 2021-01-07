execute as @e[tag=award] run data modify entity @s Invisible set value 0b
execute as @e[tag=award_plaque] run data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=award_nameplate] run data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=award_description] run data modify entity @s CustomNameVisible set value 1b

tag @a remove receiving
tag @r[tag=played_last_game,limit=3] add receiving
tellraw @a ""
tellraw @a [{"text": "Awards have been given to select contestants: ","color": "yellow"},{"selector": "@a[tag=receiving]","color": "gold"}]

tag @a remove 1
tag @a remove 2
tag @a remove 3

tag @r[tag=receiving] add 1
tag @r[tag=receiving,tag=!1] add 2
tag @r[tag=receiving,tag=!1,tag=!2] add 3

scoreboard players set a.taken.1 n 0
scoreboard players set a.taken.2 n 0
scoreboard players set a.taken.3 n 0
scoreboard players set a.taken.4 n 0
scoreboard players set a.taken.5 n 0
scoreboard players set a.taken.6 n 0
scoreboard players set a.taken.7 n 0
scoreboard players set a.taken.8 n 0

scoreboard players set a.kills.max n 0
execute as @a[tag=played_last_game] if score @s a.kills > a.kills.max n run scoreboard players operation a.kills.max n = @s a.kills
scoreboard players set a.deaths.min n 999999
scoreboard players set a.deaths.max n 0
execute as @a[tag=played_last_game] if score @s a.deaths < a.deaths.min n run scoreboard players operation a.deaths.min n = @s a.deaths
execute as @a[tag=played_last_game] if score @s a.deaths > a.deaths.max n run scoreboard players operation a.deaths.max n = @s a.deaths
scoreboard players operation a.deaths.dif n = a.deaths.max n
scoreboard players operation a.deaths.dif n -= a.deaths.min n
scoreboard players set a.avenge.max n 0
execute as @a[tag=played_last_game] if score @s a.avenge > a.avenge.max n run scoreboard players operation a.avenge.max n = @s a.avenge
scoreboard players set a.not_underdog.max n 0
execute as @a[tag=played_last_game] if score @s a.not_underdog > a.not_underdog.max n run scoreboard players operation a.not_underdog.max n = @s a.not_underdog
scoreboard players set a.leader_kill.max n 0
execute as @a[tag=played_last_game] if score @s a.leader_kill > a.leader_kill.max n run scoreboard players operation a.leader_kill.max n = @s a.leader_kill
scoreboard players set a.steal.max n 0
execute as @a[tag=played_last_game] if score @s a.steal > a.steal.max n run scoreboard players operation a.steal.max n = @s a.steal
scoreboard players set a.low_kill.max n 0
execute as @a[tag=played_last_game] if score @s a.low_kill > a.low_kill.max n run scoreboard players operation a.low_kill.max n = @s a.low_kill
scoreboard players set a.damage_taken.max n 0
execute as @a[tag=played_last_game] if score @s a.damage_taken > a.damage_taken.max n run scoreboard players operation a.damage_taken.max n = @s a.damage_taken

execute if score a.deaths.min n matches 3.. run scoreboard players set a.taken.1 n 1
execute if score a.deaths.dif n matches ..1 run scoreboard players set a.taken.1 n 1
execute if score a.steal.max n matches ..1 run scoreboard players set a.taken.2 n 1
execute if score a.kills.max n matches ..3 run scoreboard players set a.taken.3 n 1
execute if score a.not_underdog.max n matches ..1 run scoreboard players set a.taken.4 n 1
execute if score a.avenge.max n matches ..1 run scoreboard players set a.taken.5 n 1
execute if score a.leader_kill.max n matches ..1 run scoreboard players set a.taken.6 n 1
execute if score a.low_kill.max n matches ..1 run scoreboard players set a.taken.7 n 1
execute if score a.damage_taken.max n matches ..599 run scoreboard players set a.taken.8 n 1

execute as @e[tag=award] run data modify entity @s ArmorItems set value [{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"leather_chestplate",tag:{display:{color:16757504}},Count:1b},{id:"player_head",Count:1b}]
execute as @e[tag=award_nameplate] run data modify entity @s CustomName set value '{"text": "No contender","color": "black","bold": true}'
execute as @e[tag=award_plaque] run data modify entity @s CustomName set value '{"text": "No award","color": "gray"}'
execute as @e[tag=award_description] run data modify entity @s CustomName set value '""'

function uub:awards/reset_tracker
execute as @a[tag=1] run loot replace entity @e[tag=1,tag=award] armor.head loot uub:player_head
data modify block 45 35 -23 Text1 set value '{"selector": "@a[tag=1]","color": "gold","bold": true}'
execute as @a[tag=1] run data modify entity @e[tag=award_nameplate,tag=1,limit=1] CustomName set from block 45 35 -23 Text1
execute as @a[tag=1] run function uub:awards/give
function uub:awards/display
execute as @a[tag=1] run data modify entity @e[tag=award_plaque,tag=1,limit=1] CustomName set from block 45 35 -23 Text1
execute as @a[tag=1] run data modify entity @e[tag=award_description,tag=1,limit=1] CustomName set from block 45 35 -23 Text2

function uub:awards/reset_tracker
execute as @a[tag=2] run loot replace entity @e[tag=2,tag=award] armor.head loot uub:player_head
data modify block 45 35 -23 Text1 set value '{"selector": "@a[tag=2]","color": "gold","bold": true}'
execute as @a[tag=2] run data modify entity @e[tag=award_nameplate,tag=2,limit=1] CustomName set from block 45 35 -23 Text1
execute as @a[tag=2] run execute as @a[tag=2] run function uub:awards/give
execute as @a[tag=2] run function uub:awards/display
execute as @a[tag=2] run data modify entity @e[tag=award_plaque,tag=2,limit=1] CustomName set from block 45 35 -23 Text1
execute as @a[tag=2] run data modify entity @e[tag=award_description,tag=2,limit=1] CustomName set from block 45 35 -23 Text2

function uub:awards/reset_tracker
execute as @a[tag=3] run loot replace entity @e[tag=3,tag=award] armor.head loot uub:player_head
data modify block 45 35 -23 Text1 set value '{"selector": "@a[tag=3]","color": "gold","bold": true}'
execute as @a[tag=3] run data modify entity @e[tag=award_nameplate,tag=3,limit=1] CustomName set from block 45 35 -23 Text1
execute as @a[tag=3] run function uub:awards/give
execute as @a[tag=3] run function uub:awards/display
execute as @a[tag=3] run data modify entity @e[tag=award_plaque,tag=3,limit=1] CustomName set from block 45 35 -23 Text1
execute as @a[tag=3] run data modify entity @e[tag=award_description,tag=3,limit=1] CustomName set from block 45 35 -23 Text2

execute at @e[tag=award] run summon firework_rocket ~ ~1 ~ {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4b,Flicker:1b,Trail:1b,Colors:[I;16757504]}]}}}}
