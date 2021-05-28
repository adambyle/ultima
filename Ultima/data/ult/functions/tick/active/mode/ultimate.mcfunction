# Empty chests that have been interacted with
execute as @e[tag=chest, scores={chest=1..}] at @s unless data block ~ ~ ~ LootTable unless entity @a[tag=player, tag=alive, distance=..6] run function ult:chest/empty

# Items near players don't despawn
execute as @e[type=item, tag=!static_item] at @s if entity @a[tag=alive, tag=player, distance=..10] run tag @s add static_item 
execute as @e[type=item, tag=static_item] at @s unless entity @a[tag=alive, tag=player, distance=..10] run tag @s remove static_item 
