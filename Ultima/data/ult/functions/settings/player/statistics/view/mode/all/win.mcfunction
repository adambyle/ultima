scoreboard players add .wins var 1

execute store result score .dat var run data get storage ult:temp Game.players
scoreboard players operation .defeats var += .dat var
scoreboard players remove .defeats var 1
