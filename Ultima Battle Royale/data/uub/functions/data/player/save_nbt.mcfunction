scoreboard players set #noinstance _var 1

data modify storage uub:temp Players set from storage uub:players Players
data modify storage uub:temp NewPlayers set value []
execute if data storage uub:temp Players[] run function uub:data/player/save_nbt/loop
execute if score #noinstance _var matches 1 run data modify storage uub:temp NewPlayers append from storage uub:temp Player
data modify storage uub:players Players set from storage uub:temp NewPlayers
