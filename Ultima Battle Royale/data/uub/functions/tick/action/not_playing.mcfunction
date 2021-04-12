execute if score #spect_mode _var matches 1 run gamemode spectator
execute if score #spect_mode _var matches 1 run function uub:tick/action/opt_prompt
execute if score #spect_mode _var matches 1 run function uub:tp

execute if score #spect_mode _var matches 2 run function uub:tp/lobby
