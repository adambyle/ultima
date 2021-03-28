scoreboard players operation #temp map = @s parkour
function uub:data/get_map_name

scoreboard players operation #time _var = @s timer
function uub:data/ender_chest/time
data modify storage uub:temp NewTime set from storage uub:temp Time

tellraw @a ""
execute if score @s round matches 0 run tellraw @a [{"storage": "uub:temp", "nbt": "Map", "color": "aqua"}, {"text": " First Half", "color": "dark_aqua"}]
execute if score @s round matches 1 run tellraw @a [{"storage": "uub:temp", "nbt": "Map", "color": "aqua"}, {"text": " Full Course", "color": "dark_aqua"}]
tellraw @a [{"selector": "@s"}, {"text": " got a personal best: ", "color": "gold"}, {"storage": "uub:temp", "nbt": "NewTime", "interpret": true, "color": "yellow"}]
tellraw @a ""
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 4 0.6

execute if score @s round matches 0 store result storage uub:temp PlayerData.Half int 1.0 run scoreboard players get @s timer
execute if score @s round matches 0 store result storage uub:temp PlayerData.Full int 1.0 run scoreboard players get @s timer
