data modify storage ult:temp SubArray append from storage ult:temp Merge
data modify storage ult:temp SubArray[0].count set value 1
execute store success storage ult:temp SubArray[0].losses int 1 if data storage ult:temp Game{win: false}
execute store result score .players _var run data get storage ult:temp Game.players
execute if data storage ult:temp Game{win: true} store result storage ult:temp SubArray[0].players int 1 run scoreboard players remove .players _var 1
