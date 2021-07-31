execute store result score .n _var run data get storage ult:temp SubArray[0].count
execute store result storage ult:temp SubArray[0].count int 1 run scoreboard players add .n _var 1
execute store result score .n _var run data get storage ult:temp SubArray[0].wins
execute if data storage ult:temp Game{win: true} store result storage ult:temp SubArray[0].wins int 1 run scoreboard players add .n _var 1
