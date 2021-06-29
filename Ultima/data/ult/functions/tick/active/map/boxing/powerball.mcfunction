data modify storage ult:temp UUID set from entity @s Owner
execute store success score .effect _var run data modify storage ult:temp UUID set from entity @p[tag=player, tag=alive] UUID

execute if score .effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..3] run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
execute if score .effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..3] run playsound entity.generic.explode master @a
execute if score .effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..3] run effect clear @p[tag=player, tag=alive, distance=..3] strength
execute if score .effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..3] run effect give @p[tag=player, tag=alive, distance=..3] slowness 6 1
execute if score .effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..3] run kill @s
