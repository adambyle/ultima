data modify storage ult:temp UUID set from entity @r[tag=root] UUID
execute store success score #nomatch _var run data modify storage ult:temp UUID set from entity @s Owner
execute if score #nomatch _var matches 0 run kill @s
