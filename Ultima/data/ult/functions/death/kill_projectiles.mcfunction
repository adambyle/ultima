data modify storage ult:temp UUID set from entity @r[tag=root] UUID
execute store success score .no_match var run data modify storage ult:temp UUID set from entity @s Owner
execute if score .no_match var matches 0 run kill @s
