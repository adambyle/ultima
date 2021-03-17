data modify storage uub:temp UUID set from entity @s Owner
execute store success score #effect _var run data modify storage uub:temp UUID set from entity @p[tag=player, tag=alive] UUID

execute if score #effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..2] run particle explosion_emitter
execute if score #effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..2] run playsound entity.generic.explode master @a
execute if score #effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..2] run effect clear @p[tag=player, tag=alive, distance=..2] strength
execute if score #effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..2] run effect give @p[tag=player, tag=alive, distance=..2] slowness 6 1
execute if score #effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..2] run effect give @p[tag=player, tag=alive, distance=..2] mining_fatigue 4 6
execute if score #effect _var matches 1 if entity @a[tag=player, tag=alive, distance=..2] run kill @s
