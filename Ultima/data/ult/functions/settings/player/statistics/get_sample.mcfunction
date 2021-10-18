function ult:data/player/get

data modify storage ult:temp Sample set value []
data modify storage ult:temp Merge set value {}
execute unless data storage ult:temp Player.StatMenu{map: -1} run data modify storage ult:temp Merge.map set from storage ult:temp Player.StatMenu.map
# Get search range
execute if data storage ult:temp Player.StatMenu{timespan: 0b} run scoreboard players set .len control 20
execute if data storage ult:temp Player.StatMenu{timespan: 1b} run scoreboard players set .len control 100
execute if data storage ult:temp Player.StatMenu{timespan: 2b} run scoreboard players set .len control 500
execute if data storage ult:temp Player.StatMenu{timespan: 3b} run scoreboard players set .len control 2500
data modify storage ult:temp Array set from storage ult:temp Player.Games
function ult:data/nbt/splice
data modify storage ult:temp Games set from storage ult:temp SubArray
# Duels data
execute store result storage ult:temp Merge.mode byte 1 run scoreboard players get flag.game_mode.duels const
data modify storage ult:temp Array set from storage ult:temp Games
function ult:data/nbt/filter
execute if data storage ult:temp Player.StatMenu{mode: 0b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
execute if data storage ult:temp Player.StatMenu{mode: 1b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
# Royale data
execute store result storage ult:temp Merge.mode byte 1 run scoreboard players get flag.game_mode.royale const
data modify storage ult:temp Array set from storage ult:temp Games
function ult:data/nbt/filter
execute if data storage ult:temp Player.StatMenu{mode: 0b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
execute if data storage ult:temp Player.StatMenu{mode: 2b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
execute if data storage ult:temp Player.StatMenu{mode: 3b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
# Brawl data
execute store result storage ult:temp Merge.mode byte 1 run scoreboard players get flag.game_mode.brawl const
data modify storage ult:temp Array set from storage ult:temp Games
function ult:data/nbt/filter
execute if data storage ult:temp Player.StatMenu{mode: 0b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
execute if data storage ult:temp Player.StatMenu{mode: 2b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
execute if data storage ult:temp Player.StatMenu{mode: 4b} run data modify storage ult:temp Sample append from storage ult:temp SubArray[]
# Sample size
execute store result score .sample var run data get storage ult:temp Sample
