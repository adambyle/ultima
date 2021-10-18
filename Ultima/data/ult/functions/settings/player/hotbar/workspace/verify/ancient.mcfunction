execute unless data entity @s EnderItems[{id: "minecraft:diamond_axe"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:diamond_pickaxe"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:netherite_ingot"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:fire_charge"}] run scoreboard players set .verify var 0
execute unless data entity @s EnderItems[{id: "minecraft:diamond_hoe"}] run scoreboard players set .verify var 0

execute if score .verify var matches 0 at @s run playsound entity.villager.no master @s ~ ~ ~ 4
execute if score .verify var matches 0 run tellraw @s[tag=chat.s.e] [{"text": "S: ", "color": "dark_gray"}, {"text": "Please make sure each item is in a slot!", "color": "#F8961E"}]
execute if score .verify var matches 0 run tellraw @s[tag=chat.s.l] [{"text": "S: ", "color": "dark_gray"}, "Invalid settings."]
execute if score .verify var matches 1 run function ult:settings/player/hotbar/workspace/assign/ancient

execute if score .verify var matches 0 run function ult:settings/player/hotbar/workspace/setup
execute if score .verify var matches 1 run function ult:settings/player/hotbar/featured
