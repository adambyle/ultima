execute if score #flag game_mode = #duels game_mode unless score #server pn matches 2.. run function ult:settings/opt/end_early
execute if score #flag game_mode = #royale game_mode unless score #server pn matches 3.. run function ult:settings/opt/end_early
execute if score #flag game_mode = #brawl game_mode unless score #server pn matches 3.. run function ult:settings/opt/end_early

execute unless score @s y.spect_opt matches 1.. run scoreboard players set @s y.spect_opt 1
scoreboard players operation #spect_mode _var = @s y.spect_opt
function ult:tick/action/not_playing
