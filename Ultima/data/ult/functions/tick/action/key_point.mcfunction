function ult:data/player/get_nbt
data modify storage ult:temp Keys set from storage ult:temp Player.Keys

scoreboard players set .no_match _var 1
execute if data storage ult:temp Keys[0] run function ult:tick/action/key_point/loop

execute if score .no_match _var matches 1 run function ult:tick/action/key_point/nomatch

function ult:data/player/save_nbt
