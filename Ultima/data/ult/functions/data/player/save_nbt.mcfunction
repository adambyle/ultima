scoreboard players set #noinstance _var 1

data modify storage ult:temp Players set from storage ult:players Players
data modify storage ult:temp NewPlayers set value []
execute if data storage ult:temp Players[] run function ult:data/player/save_nbt/loop
execute if score #noinstance _var matches 1 run data modify storage ult:temp NewPlayers append from storage ult:temp Player
data modify storage ult:players Players set from storage ult:temp NewPlayers
