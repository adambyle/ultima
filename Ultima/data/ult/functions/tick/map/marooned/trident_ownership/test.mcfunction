# Compare UUID to Owner
    data modify storage ult:temp UUID set from entity @r[tag=root] UUID
    execute store success score .no_match _var run data modify storage ult:temp UUID set from entity @s Owner
    execute if score .no_match _var matches 0 run scoreboard players set @r[tag=root] _var 1
