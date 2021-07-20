particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
playsound entity.generic.explode master @a
effect clear @p[tag=player, tag=alive, distance=..3] strength
effect give @p[tag=player, tag=alive, distance=..3] slowness 6 1
kill @s
