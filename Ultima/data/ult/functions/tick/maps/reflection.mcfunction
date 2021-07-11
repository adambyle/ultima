execute as @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:firework_rocket"}]}] run function ult:tick/maps/reflection/rocket

execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=1}] run fill ~ 31 ~ ~ 31 ~ red_stained_glass replace #impermeable
execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=2}] run fill ~ 31 ~ ~ 31 ~ blue_stained_glass replace #impermeable
execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=3}] run fill ~ 31 ~ ~ 31 ~ lime_stained_glass replace #impermeable
execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=4}] run fill ~ 31 ~ ~ 31 ~ yellow_stained_glass replace #impermeable

execute as @e[type=firework_rocket, tag=!reflection_rocket] at @s run function ult:tick/maps/reflection/reflect
