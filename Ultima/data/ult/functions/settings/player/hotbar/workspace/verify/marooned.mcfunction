execute unless data entity @s EnderItems[{id: "minecraft:iron_sword"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:heart_of_the_sea"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:crossbow"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:trident"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:firework_rocket"}] run scoreboard players set .verify _var 0
execute unless data entity @s EnderItems[{id: "minecraft:cooked_salmon"}] run scoreboard players set .verify _var 0

execute if score .verify _var matches 0 at @s run playsound entity.villager.no master @s ~ ~ ~ 4
execute if score .verify _var matches 0 run tellraw @s [{"text": "S: ", "color": "dark_gray"}, {"text": "Please make sure each item is in a slot!", "color": "#F8961E"}]
execute if score .verify _var matches 1 run function ult:settings/player/hotbar/workspace/assign/marooned

execute if score .verify _var matches 0 run function ult:settings/player/hotbar/workspace/setup
execute if score .verify _var matches 1 run function ult:settings/player/hotbar/featured
