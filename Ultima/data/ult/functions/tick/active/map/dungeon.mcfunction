execute if predicate ult:coin_flip run scoreboard players remove #map event 1
execute if score #map event matches ..0 at @e[tag=dungeon_potion, limit=1, sort=random] run function ult:tick/active/map/dungeon/spawn_potion

execute at @e[tag=dungeon_potion] as @e[type=falling_block, distance=..2] if entity @a[tag=player, scores={altitude=21}, tag=player, tag=alive, distance=..5] run function ult:tick/active/map/dungeon/fill_potion
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[] unless data block ~ ~ ~ Items[{tag: {Potion: "minecraft:strong_healing"}, Slot: 1b}] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[{Slot: 0b}] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[{Slot: 2b}] run data remove block ~ ~ ~ Items

clear @a[nbt={ActiveEffects: [{Id: 1b}]}] potion
clear @a[nbt={ActiveEffects: [{Id: 3b}]}] potion
