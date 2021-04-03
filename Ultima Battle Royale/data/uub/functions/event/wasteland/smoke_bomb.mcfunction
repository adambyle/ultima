tp @s @e[tag=wasteland_tp, limit=1, sort=furthest]
effect give @a[distance=..2, tag=player, tag=alive] instant_damage
effect give @a[distance=..2, tag=player, tag=alive] blindness 2
playsound entity.generic.explode master @a
particle explosion_emitter ~ ~ ~ 0 0 0 0 0
clear @s flint
execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0
execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
