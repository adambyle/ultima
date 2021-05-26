execute unless entity @a[tag=killer,scores={death=1..}] run function ult:death/brawl_normal
execute if entity @a[tag=killer,scores={death=1..}] run function ult:death/simul
tag @a[tag=killer] remove fresh

scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killer] pn


execute as @a[tag=killer, tag=alive] if score @s score >= #goal score run function ult:victory/brawl

effect give @a[tag=killer] instant_health 1 1 true

scoreboard players set #alive _var 0
execute as @a[tag=player, tag=alive] run scoreboard players add #alive _var 1
execute if score #alive _var matches 4.. run function ult:tick/action/opt_prompt/lobby_tp

scoreboard players set @s showedkey 0
execute if entity @a[tag=killer] run data modify storage ult:temp Key set value {dieBrawlNormal: true}
execute unless entity @a[tag=killer] run data modify storage ult:temp Key set value {dieBrawlAlone: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point
