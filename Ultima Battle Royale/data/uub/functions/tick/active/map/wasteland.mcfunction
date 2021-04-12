execute as @a[scores={crouch=1..}, nbt={SelectedItem: {id: "minecraft:flint"}}] at @s run function uub:event/wasteland/smoke_bomb
execute as @a[scores={crouch=1..}, nbt={Inventory: [{id: "minecraft:flint", Slot: -106b}]}] at @s run function uub:event/wasteland/smoke_bomb

execute if predicate uub:rabbit_spawn at @r at @e[tag=wasteland_rabbit_spawn, sort=random, limit=1] unless entity @e[type=rabbit, distance=..12] run summon rabbit

execute as @a[scores={x.rabbit=1..}, nbt=!{Inventory: [{id: "minecraft:cooked_rabbit"}]}] run function uub:event/wasteland/food

execute as @a[scores={crouch=1..}, nbt={SelectedItem: {id: "minecraft:cooked_rabbit"}}] run function uub:event/wasteland/eat_food
execute as @a[scores={crouch=1..}, nbt={Inventory: [{id: "minecraft:cooked_rabbit", Slot: -106b}]}] run function uub:event/wasteland/eat_food

execute at @e[tag=wasteland_port] align xyz positioned ~.5 ~ ~.5 run playsound block.wooden_door.open master @a[distance=...5, tag=player, tag=alive, tag=!wasteland_warped]

execute positioned 77 21 50 run tag @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] add new_wasteland_warped
execute positioned 77 21 50 run tp @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] 77 21 52 0 ~
tag @a[tag=new_wasteland_warped] add wasteland_warped
tag @a remove new_wasteland_warped

execute positioned 77 21 52 run tag @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] add new_wasteland_warped
execute positioned 77 21 52 run tp @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] 77 21 50 180 ~
tag @a[tag=new_wasteland_warped] add wasteland_warped
tag @a remove new_wasteland_warped

execute positioned 75 21 47 run tag @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] add new_wasteland_warped
execute positioned 75 21 47 run tp @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] 75 26 53 -90 ~
tag @a[tag=new_wasteland_warped] add wasteland_warped
tag @a remove new_wasteland_warped

execute positioned 75 26 53 run tag @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] add new_wasteland_warped
execute positioned 75 26 53 run tp @a[tag=!wasteland_warped, tag=player, tag=alive, distance=...5] 75 21 47 -90 ~
tag @a[tag=new_wasteland_warped] add wasteland_warped
tag @a remove new_wasteland_warped

execute as @a[tag=wasteland_warped] at @s unless entity @e[tag=wasteland_port, distance=..1] run tag @s remove wasteland_warped

effect give @e[type=rabbit] slowness 999999 1 true
