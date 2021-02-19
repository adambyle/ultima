# Deal with current netherite armor owners
scoreboard players remove @a[scores={event=1..}] event 1
execute as @a[tag=player, tag=alive, scores={event=0}] run function uub:event/abyss/revert

# Allow players to equip
execute as @a[tag=player, tag=alive, scores={event=-1}, nbt=!{Inventory: [{id: "minecraft:netherite_ingot"}]}] run function uub:event/abyss/trigger

# Clear levitation from high players
effect clear @a[tag=player, tag=alive, scores={altitude=34..}] levitation