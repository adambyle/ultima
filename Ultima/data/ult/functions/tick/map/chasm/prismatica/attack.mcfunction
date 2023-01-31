function ult:data/root
tag @e remove temp
effect give @a[distance=..2.5, tag=player, tag=alive, nbt={OnGround: false}] instant_damage 1 0 true
summon potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", tag: {Potion: "minecraft:harming"}, Count: 1b}, Motion: [0d, -5d, 0d], Tags: ["wasteland_bomb", "temp"]}
execute as @a[tag=player, tag=alive] if score @s pn = @e[tag=root, limit=1] pn run data modify entity @e[tag=temp, limit=1] Owner set from entity @s UUID
playsound entity.dragon_fireball.explode master @a ~ ~ ~ 1 2
kill @s
