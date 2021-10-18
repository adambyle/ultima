playsound entity.shulker_bullet.hit master @s ~ ~ ~ 4
execute at @s run tp @s ~ ~ ~ ~180 ~
effect give @s blindness 3
kill @e[tag=temp]
