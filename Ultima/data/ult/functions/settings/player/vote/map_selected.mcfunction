scoreboard players reset .vote _var
execute if score @s vote matches -2147483648..2147483647 run scoreboard players operation .vote _var = @s vote
scoreboard players operation @s vote = .selected_map _var
function ult:settings/player/vote/confirm
