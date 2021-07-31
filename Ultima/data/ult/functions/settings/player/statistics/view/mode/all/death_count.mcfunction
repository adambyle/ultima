scoreboard players operation .iter _var = .max_death _var
execute if score .iter _var matches 1.. run function ult:settings/player/statistics/view/mode/all/death_count/loop
