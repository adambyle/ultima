execute if entity @a[tag=killer,scores={bool.die=1..}] run function uub:death/simul
execute unless entity @a[tag=killer,scores={bool.die=1..}] run function uub:death/brawl_normal
tag @a[tag=killer] remove fresh
say DEBUG: @a[tag=killer] is healing
effect give @a[tag=killer] health_boost 1 1 true

scoreboard players set @s tether 0
scoreboard players operation @s tether = @r[tag=killer] pn

execute as @r[tag=killer, scores={score=5..}] run function uub:victory/brawl
