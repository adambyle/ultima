execute as @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:firework_rocket"}]}] run function uub:event/reflection/rocket

execute at @a[tag=player, tag=alive, scores={pn=1}, gamemode=adventure] run fill ~ 31 ~ ~ 31 ~ red_stained_glass replace #impermeable
execute at @a[tag=player, tag=alive, scores={pn=2}, gamemode=adventure] run fill ~ 31 ~ ~ 31 ~ blue_stained_glass replace #impermeable
execute at @a[tag=player, tag=alive, scores={pn=3}, gamemode=adventure] run fill ~ 31 ~ ~ 31 ~ lime_stained_glass replace #impermeable
execute at @a[tag=player, tag=alive, scores={pn=4}, gamemode=adventure] run fill ~ 31 ~ ~ 31 ~ yellow_stained_glass replace #impermeable

execute as @e[type=firework_rocket, tag=!reflectionRocket] at @s run function uub:event/reflection/reflect
