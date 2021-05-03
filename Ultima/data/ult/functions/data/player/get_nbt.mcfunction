data remove storage ult:temp Player
data modify storage ult:temp Players set from storage ult:players Players
execute if data storage ult:temp Players[] run function ult:data/player/get_nbt/loop
execute unless data storage ult:temp Player run data modify storage ult:temp Player.UUID set from entity @s UUID
function ult:data/player/get_nbt/modernize
