# Compare UUID to Owner
    tag @a remove temp
    data modify storage ult:temp UUID set from entity @e[tag=root, limit=1] Owner
    execute store success score .no_match var run data modify storage ult:temp UUID set from entity @s UUID
    execute if score .no_match var matches 0 run tag @s add temp
    execute as @a[tag=player, tag=alive] if score @s pn = @r[tag=temp] event.soul run tag @s add temp2
    execute as @a[tag=player, tag=alive] if score @s pn = @r[tag=temp] event.soul run data modify entity @e[tag=root, limit=1] Owner set from entity @s UUID
