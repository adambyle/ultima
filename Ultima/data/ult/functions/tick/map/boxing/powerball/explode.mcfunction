particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
playsound entity.generic.explode master @a[tag=watching]
effect clear @p[tag=alive, distance=..3] strength
effect give @p[tag=alive, distance=..3] slowness 6 1
kill @s
