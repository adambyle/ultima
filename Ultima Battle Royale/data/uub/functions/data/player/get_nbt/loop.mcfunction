data modify storage uub:temp UUID set from storage uub:temp Players[0].UUID
execute store result score #nomatch _var run data modify storage uub:temp UUID set from entity @s UUID
execute if score #nomatch _var matches 0 run data modify storage uub:temp Player set from storage uub:temp Players[0]

data remove storage uub:temp Players[0]
execute if data storage uub:temp Players[] run function uub:data/player/get_nbt/loop
