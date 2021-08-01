function ult:data/root
function ult:data/player/get
execute as @a[tag=alive, tag=!root] run data modify storage ult:temp Player.Game.Opponent set from entity @s UUID
function ult:data/player/save
