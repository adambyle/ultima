# Deal with current netherite armor owners
scoreboard players remove @a[scores={event=1..}] event 1
execute as @a[tag=player, tag=alive, scores={event=0}] run function uub:event/abyss/revert

# Allow players to equip
execute as @a[tag=player, tag=alive, scores={crouch=1}, nbt={SelectedItem: {id: "minecraft:netherite_ingot"}}] run function uub:event/abyss/trigger
execute as @a[tag=player, tag=alive, scores={crouch=1}, nbt={Inventory: [{id: "minecraft:netherite_ingot", Slot: -106b}]}] run function uub:event/abyss/trigger

# Clear levitation from high players
effect clear @a[tag=player, tag=alive, scores={altitude=34..}] levitation

# Deal with fishing rod bobbers
scoreboard players add @e[type=fishing_bobber] event 1
kill @e[type=fishing_bobber, scores={event=100..}]
