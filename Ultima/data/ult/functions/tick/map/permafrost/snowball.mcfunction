tag @e remove temp
summon potion ~ ~ ~ {Tags: ["temp"], Item: {id: "minecraft:splash_potion", tag: {Potion: "minecraft:harming"}, Count: 1b}}
data modify entity @e[tag=temp, limit=1] Motion set from entity @s Motion
data modify entity @e[tag=temp, limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=temp, limit=1] Owner set from entity @s Owner

tag @s add converted
