execute as @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:ender_pearl"}]}] run function uub:event/citadel/pearl

execute positioned 70 28 8 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
execute positioned 84 28 22 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
execute positioned 84 28 8 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true
execute positioned 70 28 22 run effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, distance=..2] regeneration 2 2 true

scoreboard players add #map citadel_rune 1
execute if predicate uub:coin_flip run scoreboard players add #map citadel_rune 1
execute if score #map citadel_rune matches 5.. run scoreboard players remove #map citadel_rune 4

tag @e[nbt={Item: {id: "minecraft:globe_banner_pattern"}}, type=item] add citadel_rune
tag @e[tag=citadel_rune] add static_item
execute unless entity @e[tag=citadel_rune] if predicate uub:coin_flip run scoreboard players remove #map event 1
execute if score #map event matches 0 run function uub:event/citadel/summon_rune

execute as @a[scores={crouch=1}, tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:globe_banner_pattern"}}] run function uub:event/citadel/activate_rune
