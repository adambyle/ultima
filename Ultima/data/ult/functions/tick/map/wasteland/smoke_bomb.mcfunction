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

# Summon a harming potion
    tag @e remove temp
    summon potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", tag: {Potion: "minecraft:harming"}, Count: 1b}, Motion: [0d, -5d, 0d], Tags: ["wasteland_bomb", "temp"]}
    execute as @a[tag=alive] if score @s pn = @e[tag=root, limit=1] pn run data modify entity @e[tag=wasteland_bomb, limit=1] Owner set from entity @s UUID

# Post-teleportation effects
    execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
    execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
