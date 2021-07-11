function ult:data/root
playsound entity.generic.explode master @a
particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
clear @s flint
effect give @s resistance 2 2 true

# Teleport to a random teleport destination that is not the nearest one
    tag @e remove temp
    tag @e[sort=nearest, limit=1, tag=wasteland_tp] add temp
    tp @s @e[sort=random, limit=1, tag=wasteland_tp, tag=!temp]

# Give nearby players blindness
    effect give @a[tag=player, tag=alive, tag=!root, distance=..5] instant_damage

# Post-teleportation effects
    execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
    execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
