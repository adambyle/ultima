data remove storage uub:temp Player
data modify storage uub:temp Players set from storage uub:players Players
execute if data storage uub:temp Players[] run function uub:data/player/get_nbt/loop
execute unless data storage uub:temp Player run data modify storage uub:temp Player.UUID set from entity @s UUID
function uub:data/player/get_nbt/modernize
