execute unless entity @e[nbt={Trident: {tag: {Dracula: true}}}] unless entity @a[nbt={Inventory: [{id: "minecraft:trident"}]}, tag=player, tag=alive] if predicate ult:coin_flip run scoreboard players remove #map event 1
execute if score #map event matches 0 run function ult:event/dracula/summon

data merge entity @e[type=trident, limit=1] {Glowing: true, Trident: {tag: {Dracula: true}}, Fire: -1, pickup: 0b}

data modify entity @e[type=trident, limit=1] damage set value 4.0d

execute as @e[type=trident] store result score @s _var run data get entity @s life 1.0
execute as @e[type=trident, scores={_var=240..}] at @s unless entity @a[tag=player, tag=alive, distance=..6] run kill @s

execute as @e[type=trident, nbt={DealtDamage: true}, nbt=!{Trident: {tag: {Dead: true}}}] at @s run function ult:event/dracula/lightning
execute as @e[type=trident, nbt={inGround: true, Trident: {tag: {Dead: true}}}] at @s if entity @a[tag=player, tag=alive, distance=..1] run function ult:event/dracula/give
