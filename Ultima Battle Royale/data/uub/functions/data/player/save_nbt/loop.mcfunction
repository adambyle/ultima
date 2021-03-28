data modify storage uub:temp UUID set from storage uub:temp Players[0].UUID
execute store result score #nomatch _var run data modify storage uub:temp UUID set from storage uub:temp Player.UUID
scoreboard players operation #noinstance _var < #nomatch _var
execute if score #nomatch _var matches 0 run data modify storage uub:temp NewPlayers append from storage uub:temp Player
execute if score #nomatch _var matches 1 run data modify storage uub:temp NewPlayers append from storage uub:temp Players[0]

data remove storage uub:temp Players[0]
execute if data storage uub:temp Players[] run function uub:data/player/save_nbt/loop
