execute as @a[scores={event.debris=1..}] run function ult:tick/map/ancient/give_ingot

scoreboard players set @a _var 0
execute as @a if score @s crouch_mode matches 1 if data entity @s {SelectedItem: {id: "minecraft:netherite_ingot"}} run scoreboard players set @s _var 1
execute as @a if score @s crouch_mode matches 1 if data entity @s {Inventory: [{id: "minecraft:netherite_ingot", Slot: -106b}]} run scoreboard players set @s _var 2
execute as @a[scores={_var=1..}] run function ult:tick/map/ancient/upgrade

execute as @a[scores={crouch_mode=1}, nbt={SelectedItem: {id: "minecraft:fire_charge"}}] at @s anchored eyes run function ult:tick/map/ancient/fireball
scoreboard players reset * event.debris

tag @e remove exploded
execute as @e[type=fireball] at @s if entity @e[type=fireball, distance=0.01..5] run function ult:tick/map/ancient/explode
execute as @e[type=fireball] at @s run tp @e[sort=nearest, limit=1, tag=fireball_tracker, distance=..3] @s
execute as @e[tag=fireball_tracker] at @s unless entity @e[type=fireball, distance=..1] run function ult:tick/map/ancient/explode
