execute store result score .n _var run data get storage ult:temp SubArray[0].count
execute store result storage ult:temp SubArray[0].count int 1 run scoreboard players add .n _var 1
execute store result score .n _var run data get storage ult:temp SubArray[0].losses
execute if data storage ult:temp Game{win: false} store result storage ult:temp SubArray[0].losses int 1 run scoreboard players add .n _var 1
execute store result score .n _var run data get storage ult:temp SubArray[0].players
execute store result score .players _var run data get storage ult:temp Game.players
scoreboard players operation .n _var += .players _var
execute if data storage ult:temp Game{win: true} store result storage ult:temp SubArray[0].players int 1 run scoreboard players remove .n _var 1
