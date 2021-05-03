data modify storage ult:temp UUID set from storage ult:temp Players[0].UUID
execute store result score #nomatch _var run data modify storage ult:temp UUID set from entity @s UUID
execute if score #nomatch _var matches 0 run data modify storage ult:temp Player set from storage ult:temp Players[0]

data remove storage ult:temp Players[0]
execute if data storage ult:temp Players[] run function ult:data/player/get_nbt/loop
