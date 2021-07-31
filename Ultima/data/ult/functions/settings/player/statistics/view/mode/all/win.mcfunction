scoreboard players add .wins _var 1

execute store result score .dat _var run data get storage ult:temp Game.players
scoreboard players operation .defeats _var += .dat _var
scoreboard players remove .defeats _var 1
