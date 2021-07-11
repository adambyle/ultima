execute if predicate ult:coin_flip unless entity @e[tag=fake_potion] run scoreboard players remove .map event 1
execute if score .map event matches ..0 at @e[sort=random, limit=1, tag=dungeon_potion] run function ult:tick/map/dungeon/spawn_potion

execute at @e[tag=dungeon_potion] as @e[type=falling_block, distance=..2] if entity @a[tag=player, tag=player, tag=alive, scores={altitude=21}, distance=..5] run function ult:tick/map/dungeon/fill_potion
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[0] unless data block ~ ~ ~ Items[{Slot: 1b, tag: {Potion: "minecraft:strong_healing"}}] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[{Slot: 0b}] run data remove block ~ ~ ~ Items
execute at @e[tag=dungeon_potion] if data block ~ ~ ~ Items[{Slot: 2b}] run data remove block ~ ~ ~ Items

clear @a[nbt={ActiveEffects: [{Id: 1b}]}] potion
clear @a[nbt={ActiveEffects: [{Id: 3b}]}] potion
