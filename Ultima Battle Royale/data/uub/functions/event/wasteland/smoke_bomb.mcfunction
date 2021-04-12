tp @s @e[tag=wasteland_tp, limit=1, sort=random]
effect give @a[distance=..5, tag=player, tag=alive] instant_damage
effect give @a[distance=..5, tag=player, tag=alive] blindness 2
playsound entity.generic.explode master @a[tag=!parkour]
particle explosion_emitter ~ ~ ~ 0 0 0 0 0
clear @s flint
execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0
execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
effect give @s resistance 2 2 true
