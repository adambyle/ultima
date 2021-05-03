scoreboard players operation #temp map = @s parkour
function ult:data/get_map_name

scoreboard players operation #time _var = @s timer
function ult:data/ender_chest/time
data modify storage ult:temp NewTime set from storage ult:temp Time

tellraw @a ""
execute if score @s round matches 0 run tellraw @a [{"storage": "ult:temp", "nbt": "Map", "color": "aqua"}, {"text": " First Half", "color": "dark_aqua"}]
execute if score @s round matches 1 run tellraw @a [{"storage": "ult:temp", "nbt": "Map", "color": "aqua"}, {"text": " Full Course", "color": "dark_aqua"}]
tellraw @a [{"selector": "@s"}, {"text": " got a personal best: ", "color": "gold"}, {"storage": "ult:temp", "nbt": "NewTime", "interpret": true, "color": "yellow"}]
tellraw @a ""
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 4 0.6

execute if score @s round matches 0 store result storage ult:temp PlayerData.Half int 1.0 run scoreboard players get @s timer
execute if score @s round matches 1 store result storage ult:temp PlayerData.Full int 1.0 run scoreboard players get @s timer

function ult:parkour/menu
