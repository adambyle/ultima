execute as @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:ender_pearl"}]}] run function uub:event/citadel/pearl

execute positioned 70 28 8 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
execute positioned 84 28 22 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
execute positioned 84 28 8 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
execute positioned 70 28 22 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
