execute if entity @a[tag=killer,scores={bool.die=1..}] run function uub:death/simul
execute unless entity @a[tag=killer,scores={bool.die=1..}] run function uub:death/brawl_normal
tag @a[tag=killer] remove fresh

scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killer] pn

execute as @r[tag=killer, scores={score=5..}] run function uub:victory/brawl
