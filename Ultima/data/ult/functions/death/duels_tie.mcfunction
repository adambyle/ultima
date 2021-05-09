execute unless score @s y.spect_death matches 1.. run scoreboard players set @s y.spect_death 1
scoreboard players operation #spect_mode _var = @s y.spect_death
function ult:tick/action/not_playing

function ult:spawn/assign_queue

scoreboard players set @s showedkey 0
data modify storage ult:temp Key set value {dieDuels: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point
