function ult:data/root
tag @e remove temp
tag @e[sort=furthest, limit=1, tag=wasteland_tp] add temp
tp @s @e[sort=random, limit=1, tag=wasteland_tp, tag=!temp]
effect give @a[tag=player, tag=alive, tag=!root, distance=..5] instant_damage
effect give @a[tag=player, tag=alive, tag=!root, distance=..5] blindness 2
playsound entity.generic.explode master @a
particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
clear @s flint
execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
effect give @s resistance 2 2 true
