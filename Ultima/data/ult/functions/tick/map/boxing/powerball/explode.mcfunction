particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force
playsound entity.generic.explode master @a[tag=watching]
effect clear @s strength
effect give @s slowness 6 1
kill @e[tag=temp]
