function ult:data/root
tag @e remove temp
tag @e[tag=wasteland_tp, limit=1, sort=furthest] add temp
tp @s @e[tag=wasteland_tp, limit=1, sort=random, tag=!temp]
effect give @a[distance=..5, tag=player, tag=alive, tag=!root] blindness 2
playsound entity.generic.explode master @a[tag=!parkour]
particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
clear @s flint
execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
execute at @s run playsound block.lava.extinguish master @s ~ ~ ~ 2 0.7
effect give @s resistance 2 2 true

tag @e remove temp
summon potion ~ ~ ~ {Item: {id: "splash_potion", tag: {Potion: "minecraft:harming"}, Count: 1b}, Motion: [0d, -5d, 0d], Tags: ["wasteland_bomb", "temp"]}
execute as @a[tag=alive] if score @s pn = @e[tag=root, limit=1] pn run data modify entity @e[tag=wasteland_bomb, limit=1] Owner set from entity @s UUID
