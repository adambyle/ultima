function ult:data/root
tag @a remove temp
item modify entity @s weapon.mainhand ult:maps/chasm/soul_stone_nobody
execute as @e if score @s pn = @r[tag=root] event.soul run item modify entity @r[tag=root] weapon.mainhand ult:maps/chasm/soul_stone
