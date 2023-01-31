# Launch Charm
    execute as @a[tag=player, tag=alive, nbt={ActiveEffects: [{Id: 8}], SelectedItem: {id: "minecraft:slime_ball"}}] run function ult:tick/map/chasm/launch_check
    effect give @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:slime_ball"}, OnGround: true}] jump_boost 99999 9
    effect clear @a[tag=player, tag=alive, nbt=!{SelectedItem: {id: "minecraft:slime_ball"}, OnGround: true}]
    execute at @a[tag=player, tag=alive, scores={event=1..}] run particle item_slime ~ ~ ~ 0 0 0 0 0
    scoreboard players remove @a[tag=player, tag=alive, scores={event=1..}] event 1

# Prismatica
    execute as @a[tag=player, tag=alive, nbt={Inventory: [{id: "minecraft:spyglass", Slot: -106b}]}] run function ult:tick/map/chasm/prismatica/charge_meter
    execute as @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:spyglass"}}] run function ult:tick/map/chasm/prismatica/charge_meter
    title @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:spyglass", Slot: -106b}]}, nbt=!{SelectedItem: {id: "minecraft:spyglass"}}] actionbar ""
    execute as @a[tag=player, tag=alive, nbt={SelectedItem: {id: "minecraft:spyglass"}}, scores={event.prism=1..}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s anchored eyes run function ult:tick/map/chasm/prismatica
    execute as @a[tag=player, tag=alive, nbt={Inventory: [{id: "minecraft:spyglass", Slot: -106b}]}, scores={event.prism=1..}] if score @s crouch_mode = crouch_mode.crouch_pressed const at @s anchored eyes run function ult:tick/map/chasm/prismatica
    execute as @e[tag=prism] run function ult:tick/map/chasm/prismatica/move
    scoreboard players add @a[tag=player, tag=alive, scores={event.prism=..119}] event.prism 1

# Slowness over the Lake of Souls
    execute as @a[tag=!soul_lake] at @s if block ~ ~-1 ~ minecraft:light_blue_stained_glass run function ult:tick/map/chasm/soul_lake
    execute as @a[tag=!soul_lake] at @s if block ~ ~-2 ~ minecraft:light_blue_stained_glass run function ult:tick/map/chasm/soul_lake
    execute as @a[tag=soul_lake] at @s unless block ~ ~-2 ~ minecraft:light_blue_stained_glass unless block ~ ~-1 ~ minecraft:light_blue_stained_glass run tag @s remove soul_lake
    effect give @a[tag=soul_lake] slowness 99999 3 true
    effect clear @a[tag=!soul_lake] slowness
