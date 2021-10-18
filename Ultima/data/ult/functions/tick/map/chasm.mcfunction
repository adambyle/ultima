# Launch Charm
    execute as @a[tag=player, tag=alive, scores={jump=1}, nbt={ActiveEffects: [{Id: 8b}]}] at @s run function ult:tick/map/chasm/launch
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

# Soul Stone handling
    execute as @a[advancements={ult:maps/chasm/damage_dealt=true}, tag=player, tag=alive] run function ult:tick/map/chasm/damage_dealt
    execute as @a[nbt={SelectedItem: {id: "minecraft:ender_pearl"}}] run function ult:tick/map/chasm/hold_soul_stone
    tag @a[nbt=!{SelectedItem: {id: "minecraft:ender_pearl"}}] remove holding_soul_stone
    execute as @e[type=ender_pearl, nbt={Item: {tag: {Enchantments: [{}]}}}, tag=!soul_stone] run function ult:tick/map/chasm/soul_stone
    execute at @e[tag=soul_stone] run particle reverse_portal ~ ~ ~ 0 0 0 0 0
    execute as @e[type=ender_pearl] run data modify entity @s Owner set from entity @e[type=pig, limit=1] UUID
