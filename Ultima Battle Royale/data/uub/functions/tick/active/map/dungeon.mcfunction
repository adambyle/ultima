execute if predicate uub:coin_flip run scoreboard players remove #map event 1
execute if score #map event matches ..0 at @e[tag=dungeon_potion, limit=1, sort=random] run function uub:event/dungeon/spawn_potion

execute at @e[tag=dungeon_potion] as @e[type=falling_block, distance=..2] if entity @a[tag=player, scores={altitude=21}, tag=player, tag=alive, distance=..5] run function uub:event/dungeon/fill_potion
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[] unless data block ~ ~ ~ Items[{tag: {Potion: "minecraft:strong_healing"}, Slot: 1b}] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[{Slot: 0b}] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[{Slot: 2b}] run data remove block ~ ~ ~ Items

effect clear @a[scores={x.damage=1..}] invisibility
effect clear @a[scores={x.damage=1..}] speed
effect clear @a[scores={x.damage=1..}] resistance
scoreboard players reset * x.damage

clear @a[nbt={ActiveEffects: [{Id: 14b}], Inventory: [{id: "minecraft:iron_chestplate"}]}, tag=player, tag=alive] #uub:event/dungeon/armor
execute as @a[nbt=!{ActiveEffects: [{Id: 14b}]}, nbt=!{Inventory: [{id: "minecraft:iron_chestplate"}]}, tag=player, tag=alive] run function uub:event/dungeon/revert
