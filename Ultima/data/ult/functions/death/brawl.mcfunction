tag @a[tag=killer] remove fresh
execute unless entity @a[tag=killer, scores={death=1..}] run function ult:death/brawl/normal
execute if entity @a[tag=killer, scores={death=1..}] run function ult:death/simul

execute as @a[tag=killer, tag=alive] if score @s score >= .goal_score control run function ult:victory/brawl

execute if score .total_players control matches 4.. run function ult:tick/action/opt_prompt/lobby_tp

tag @s remove key_shown
execute if entity @a[tag=killer] run data modify storage ult:temp Key set value {dieBrawlNormal: true}
execute unless entity @a[tag=killer] run data modify storage ult:temp Key set value {dieBrawlAlone: true}
execute as @s[tag=!key_shown] run function ult:tick/action/key_point
