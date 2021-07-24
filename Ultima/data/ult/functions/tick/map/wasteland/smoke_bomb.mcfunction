function ult:data/root
playsound entity.generic.explode master @a[tag=watching]
particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
clear @s flint
effect give @s resistance 2 2 true

# Find a suitable teleportation location
    tag @e remove temp
    execute as @e[tag=wasteland_tp] at @s if entity @a[tag=alive, distance=..4] run tag @s add temp
    tag @e remove temp2
    tag @e[sort=nearest, limit=1, tag=wasteland_tp] add temp2
    execute if entity @e[tag=wasteland_tp, tag=!temp, tag=!temp2] positioned as @e[sort=random, limit=1, tag=wasteland_tp, tag=!temp] run tp @s ~ ~ ~ ~ ~
    execute unless entity @e[tag=wasteland_tp, tag=!temp, tag=!temp2] positioned as @e[sort=random, limit=1, tag=wasteland_tp, tag=!temp2] run tp @s ~ ~ ~ ~ ~

# Give nearby players blindness
    effect give @a[tag=alive, tag=!root, distance=..5] instant_damage

# Summon a harming potion
    tag @e remove temp
    summon potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", tag: {Potion: "minecraft:harming"}, Count: 1b}, Motion: [0d, -5d, 0d], Tags: ["wasteland_bomb", "temp"]}
    execute as @a[tag=alive] if score @s pn = @e[tag=root, limit=1] pn run data modify entity @e[tag=wasteland_bomb, limit=1] Owner set from entity @s UUID

# Post-teleportation effects
    execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
    execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
