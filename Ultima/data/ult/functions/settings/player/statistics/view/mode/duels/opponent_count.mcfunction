scoreboard players operation .iter _var = .max_opp _var
execute if score .iter _var matches 1.. run function ult:settings/player/statistics/view/mode/duels/opponent_count/loop
