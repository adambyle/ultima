scoreboard players operation #temp map = @s parkour
function uub:data/get_map_name

execute if score @s round matches 0 store result score #time _var run data get storage uub:temp GlobalData.Half.Time
execute if score @s round matches 1 store result score #time _var run data get storage uub:temp GlobalData.Full.Time
function uub:data/ender_chest/time
data modify storage uub:temp WorldRecordTime set from storage uub:temp Time

scoreboard players operation #time _var = @s timer
function uub:data/ender_chest/time
data modify storage uub:temp NewTime set from storage uub:temp Time

execute if score @s round matches 0 run data modify storage uub:temp RecordHolder set from storage uub:temp GlobalData.Half.Name
execute if score @s round matches 1 run data modify storage uub:temp RecordHolder set from storage uub:temp GlobalData.Full.Name

execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 8 1.2
tellraw @a {"text": "\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n", "obfuscated": true, "bold": true}
tellraw @a {"text": "Parkour World Record!", "color": "red", "bold": true}
execute if score @s round matches 0 run tellraw @a [{"storage": "uub:temp", "nbt": "Map", "color": "aqua"}, {"text": " First Half\n", "color": "dark_aqua"}]
execute if score @s round matches 1 run tellraw @a [{"storage": "uub:temp", "nbt": "Map", "color": "aqua"}, {"text": " Full Course\n", "color": "dark_aqua"}]
tellraw @a [{"text": "", "color": "dark_gray"}, {"text": "World Record:", "strikethrough": true}, " ", {"storage": "uub:temp", "nbt": "WorldRecordTime", "interpret": true}, " by ", {"storage": "uub:temp", "nbt": "RecordHolder", "interpret": true}]
tellraw @a [{"text": "", "color": "yellow"}, {"text": "New Record:", "color": "green", "bold": true}, " ", {"storage": "uub:temp", "nbt": "Time", "interpret": true, "color": "dark_green"}, " by ", {"selector": "@s", "color": "yellow"}]
tellraw @a {"text": "\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n", "obfuscated": true, "bold": true}

loot replace block 0 0 0 container.0 loot uub:tech/name
execute if score @s round matches 0 store result storage uub:temp PlayerData.Half int 1.0 run scoreboard players get @s timer
execute if score @s round matches 0 store result storage uub:temp GlobalData.Half.Time int 1.0 run scoreboard players get @s timer
execute if score @s round matches 0 run data modify storage uub:temp GlobalData.Half.Name set from block 0 0 0 Items[0].tag.display.Name
execute if score @s round matches 0 run data modify storage uub:temp GlobalData.Half.UUID set from entity @s UUID
execute if score @s round matches 1 store result storage uub:temp PlayerData.Full int 1.0 run scoreboard players get @s timer
execute if score @s round matches 1 store result storage uub:temp GlobalData.Full.Time int 1.0 run scoreboard players get @s timer
execute if score @s round matches 1 run data modify storage uub:temp GlobalData.Full.Name set from block 0 0 0 Items[0].tag.display.Name
execute if score @s round matches 1 run data modify storage uub:temp GlobalData.Full.UUID set from entity @s UUID
