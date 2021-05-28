function ult:exit

function ult:data/player/get_nbt
execute store result score .spect_mode _var run data get storage ult:temp Player.Spectate.death
function ult:exit/arena

scoreboard players reset @s death
scoreboard players reset @s kill

title @s actionbar ""
