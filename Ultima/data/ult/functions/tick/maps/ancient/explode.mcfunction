function ult:data/root
tag @s add exploded
execute as @e[type=fireball, tag=!exploded, distance=..5] at @s run function ult:tick/maps/ancient/explode

tag @e remove temp
summon potion ~ ~ ~ {Item: {id: "splash_potion", tag: {Potion: "minecraft:strong_harming"}, Count: 1b}, Motion: [0d, -5d, 0d], Tags: ["fireball_potion", "temp"]}
execute as @a[tag=alive] if score @s pn = @e[limit=1, tag=root] pn run data modify entity @e[limit=1, tag=fireball_potion] Owner set from entity @s UUID
particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force

execute store result score .alt _var run data get entity @s Pos[1]
kill @s

tag @e remove temp
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}
summon marker ~ ~ ~ {Tags: ["temp"]}

execute if score .alt _var matches 26.. run spreadplayers ~ ~ 0 3 under 34 false @e[tag=temp]
execute if score .alt _var matches 21..25 run spreadplayers ~ ~ 0 3 under 25 false @e[tag=temp]
execute if score .alt _var matches ..20 run spreadplayers ~ ~ 0 3 under 18 false @e[tag=temp]
execute at @e[tag=temp] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ lava run setblock ~ ~ ~ fire
kill @e[tag=temp]
