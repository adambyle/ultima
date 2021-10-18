function ult:data/player/get

item replace block 0 0 0 container.0 from block 0 1 0 container.13
data remove block 0 0 0 Items[0].tag.bonus
execute store result score .children var run data get block 0 0 0 Items[0].tag
execute if score .children var matches 0 run data remove block 0 0 0 Items[0].tag

# ABYSS
scoreboard players reset .bonus var

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.abyss.sword
execute store success score .bonus var if score .map flag = flag.map.abyss const run clear @s netherite_sword{bonus: true}
execute if score .bonus var matches 1 run clear @s diamond_sword
execute if score .bonus var matches 1 run clear @s netherite_sword
execute if score .bonus var matches 1 run function ult:items/give

scoreboard players reset .hotbar var
execute store success score .bonus var if score .map flag = flag.map.abyss const run clear @s spawner{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

scoreboard players set .hotbar var -1
execute store success score .bonus var if score .map flag = flag.map.abyss const run clear @s end_rod{bonus: true}
execute unless data entity @s Inventory[{id: "minecraft:end_rod"}] if score .bonus var matches 1 run function ult:items/give

scoreboard players reset .hotbar var
execute store success score .bonus var if score .map flag = flag.map.abyss const run clear @s snowball{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

# DUNGEON
scoreboard players reset .bonus var

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.dungeon.harm_pot
execute store success score .bonus var if score .map flag = flag.map.dungeon const run clear @s splash_potion{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

scoreboard players reset .hotbar var
execute store success score .bonus var if score .map flag = flag.map.dungeon const run clear @s cauldron{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

scoreboard players reset .hotbar var
execute store success score .bonus var if score .map flag = flag.map.dungeon const run clear @s crossbow{bonus: true}
execute if score .bonus var matches 1 unless data entity @s Inventory[{id: "minecraft:crossbow"}] run function ult:items/give
execute if score .bonus var matches 1 run give @s arrow

execute store success score .bonus var if score .map flag = flag.map.dungeon const run clear @s iron_axe{bonus: true}
execute if score .bonus var matches 1 run clear @s stone_axe
execute if score .bonus var matches 1 run clear @s iron_axe
execute if score .bonus var matches 1 run function ult:items/give

# WOODLANDS
scoreboard players reset .bonus var

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.woodlands.gapple
execute store success score .bonus var if score .map flag = flag.map.woodlands const run clear @s golden_apple{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.woodlands.arrows
execute store success score .bonus var if score .map flag = flag.map.woodlands const run clear @s arrow{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

scoreboard players reset .hotbar var
execute store success score .bonus var if score .map flag = flag.map.woodlands const run clear @s ender_pearl{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

execute store success score .bonus var if score .map flag = flag.map.woodlands const run clear @s chainmail_chestplate{bonus: true}
execute if score .bonus var matches 1 run item replace entity @s armor.chest from block 0 0 0 container.0

# MANOR
scoreboard players reset .bonus var

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.sword
execute store success score .bonus var if score .map flag = flag.map.manor const run clear @s diamond_sword{bonus: true}
execute if score .bonus var matches 1 run clear @s diamond_sword
execute if score .bonus var matches 1 run function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.bow
execute store success score .bonus var if score .map flag = flag.map.manor const run clear @s bow{bonus: true}
execute if score .bonus var matches 1 run clear @s bow
execute if score .bonus var matches 1 run function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.crossbow
execute store success score .bonus var if score .map flag = flag.map.manor const run clear @s crossbow{bonus: true}
execute if score .bonus var matches 1 run clear @s crossbow
execute if score .bonus var matches 1 run function ult:items/give

execute store result score .hotbar var run data get storage ult:temp Player.Hotbar.manor.potion
execute store success score .bonus var if score .map flag = flag.map.manor const run clear @s potion{bonus: true}
execute if score .bonus var matches 1 run function ult:items/give

#

execute at @e[tag=bonus_item] run setblock ~ ~ ~ air
scoreboard players set .bonus_item control 0

execute at @s run playsound ui.stonecutter.select_recipe master @s ~ ~ ~ 4
tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s"}, " got a bonus item."]
