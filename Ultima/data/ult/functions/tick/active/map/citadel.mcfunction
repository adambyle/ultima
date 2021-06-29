execute as @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:ender_pearl"}]}] run function ult:tick/active/map/citadel/pearl

execute positioned 70 28 8 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true
execute positioned 84 28 22 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true
execute positioned 84 28 8 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true
execute positioned 70 28 22 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 1 true

scoreboard players add .map_rune _var 1
execute if predicate ult:coin_flip run scoreboard players add .map_rune _var 1
execute if score .map_rune _var matches 5.. run scoreboard players remove .map_rune _var 4

tag @e[type=item, nbt={Item: {id: "minecraft:globe_banner_pattern"}}] add citadel_rune
tag @e[tag=citadel_rune] add static_item
execute unless entity @e[tag=citadel_rune] if predicate ult:coin_flip run scoreboard players remove .map event 1
execute if score .map event matches 0 run function ult:tick/active/map/citadel/summon_rune

execute as @a[tag=player, tag=alive, scores={crouch_mode=1}, nbt={SelectedItem: {id: "minecraft:globe_banner_pattern"}}] run function ult:tick/active/map/citadel/activate_rune
execute as @a[tag=player, tag=alive, scores={crouch_mode=1}, nbt={Inventory: [{id: "minecraft:globe_banner_pattern", Slot: -106b}]}] run function ult:tick/active/map/citadel/activate_rune

title @a[tag=player, tag=alive, scores={event.rune=0}] actionbar ""
title @a[tag=player, tag=alive, scores={event.rune=1}] actionbar {"text": "Δ Rune Applied -- Speed Up", "bold": true, "color": "gold"}
title @a[tag=player, tag=alive, scores={event.rune=2}] actionbar {"text": "Π Rune Applied -- Health Up", "bold": true, "color": "red"}
title @a[tag=player, tag=alive, scores={event.rune=3}] actionbar {"text": "Σ Rune Applied -- Attack Up", "bold": true, "color": "aqua"}
title @a[tag=player, tag=alive, scores={event.rune=4}] actionbar {"text": "Γ Rune Applied -- Defense Up", "bold": true, "color": "green"}

execute as @a[nbt={SelectedItem: {id: "minecraft:crossbow"}, Inventory: [{id: "minecraft:arrow"}]}, nbt=!{SelectedItem: {tag: {Charged: true}}}] run function ult:tick/active/map/citadel/refill_arrow
