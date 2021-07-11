execute as @a[tag=player, tag=alive, nbt=!{Inventory: [{id: "minecraft:firework_rocket"}]}] run function ult:tick/map/reflection/rocket

execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=1}] run fill ~ 31 ~ ~ 31 ~ red_stained_glass replace #impermeable
execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=2}] run fill ~ 31 ~ ~ 31 ~ blue_stained_glass replace #impermeable
execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=3}] run fill ~ 31 ~ ~ 31 ~ lime_stained_glass replace #impermeable
execute at @a[gamemode=adventure, tag=player, tag=alive, scores={pn=4}] run fill ~ 31 ~ ~ 31 ~ yellow_stained_glass replace #impermeable

execute as @e[type=firework_rocket, tag=!reflection_rocket] at @s run function ult:tick/map/reflection/reflect

execute as @a[tag=player, tag=alive, scores={jump=1..}] at @s if block ~ ~-1 ~ blue_concrete run function ult:tick/map/reflection/tp/up
execute as @a[tag=player, tag=alive, scores={crouch_mode=1}] at @s if block ~ ~3 ~ red_concrete run function ult:tick/map/reflection/tp/down
