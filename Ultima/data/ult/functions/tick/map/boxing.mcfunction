# Regen inside the ring
    effect give @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 10b}]}, x=110, y=16, z=88, dx=18, dy=6, dz=18] regeneration 5

# Snowball handler
    execute as @e[type=snowball] at @s run function ult:tick/map/boxing/powerball
