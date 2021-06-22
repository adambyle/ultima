scoreboard players operation .temp_map _var = @s parkour
function ult:data/map/get_map_data

execute if score @s round = half.front const store result score #time _var run data get storage ult:temp GlobalData.Half.Time
execute if score @s round = half.back const store result score #time _var run data get storage ult:temp GlobalData.Full.Time
function ult:data/ender_chest/time
data modify storage ult:temp WorldRecordTime set from storage ult:temp Time

scoreboard players operation #time _var = @s timer
function ult:data/ender_chest/time
data modify storage ult:temp NewTime set from storage ult:temp Time

execute if score @s round = half.front const run data modify storage ult:temp RecordHolder set from storage ult:temp GlobalData.Half.Name
execute if score @s round = half.back const run data modify storage ult:temp RecordHolder set from storage ult:temp GlobalData.Full.Name

execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 8 1.2
tellraw @a {"text": "\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n", "obfuscated": true, "bold": true}
tellraw @a {"text": "Parkour World Record!", "color": "red", "bold": true}
execute if score @s round = half.front const run tellraw @a [{"storage": "ult:temp", "nbt": "Map", "color": "aqua"}, {"text": " First Half\n", "color": "dark_aqua"}]
execute if score @s round = half.back const run tellraw @a [{"storage": "ult:temp", "nbt": "Map", "color": "aqua"}, {"text": " Full Course\n", "color": "dark_aqua"}]
tellraw @a [{"text": "", "color": "dark_gray"}, {"text": "World Record: ", "strikethrough": true}, " ", {"storage": "ult:temp", "nbt": "WorldRecordTime", "interpret": true}, " by ", {"storage": "ult:temp", "nbt": "RecordHolder", "interpret": true}]
tellraw @a [{"text": "", "color": "yellow"}, {"text": "New Record: ", "color": "green", "bold": true}, " ", {"storage": "ult:temp", "nbt": "Time", "interpret": true, "color": "dark_green"}, " by ", {"selector": "@s", "color": "yellow"}]
tellraw @a {"text": "\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n", "obfuscated": true, "bold": true}

loot replace block 0 0 0 container.0 loot ult:tech/name
execute if score @s round = half.front const store result storage ult:temp PlayerData.Half int 1.0 run scoreboard players get @s timer
execute if score @s round = half.front const store result storage ult:temp GlobalData.Half.Time int 1.0 run scoreboard players get @s timer
execute if score @s round = half.front const run data modify storage ult:temp GlobalData.Half.Name set from block 0 0 0 Items[0].tag.display.Name
execute if score @s round = half.front const run data modify storage ult:temp GlobalData.Half.UUID set from entity @s UUID
execute if score @s round = half.back const store result storage ult:temp PlayerData.Full int 1.0 run scoreboard players get @s timer
execute if score @s round = half.back const store result storage ult:temp GlobalData.Full.Time int 1.0 run scoreboard players get @s timer
execute if score @s round = half.back const run data modify storage ult:temp GlobalData.Full.Name set from block 0 0 0 Items[0].tag.display.Name
execute if score @s round = half.back const run data modify storage ult:temp GlobalData.Full.UUID set from entity @s UUID

execute as @a[tag=parkour] run function ult:parkour/menu
