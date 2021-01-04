clear @s grass_block
clear @s smooth_quartz
clear @s spruce_sapling
clear @s stone_bricks
clear @s blackstone
clear @s diamond_block
clear @s dead_bush
clear @s emerald
clear @s bell
clear @s blue_ice
clear @s crimson_fungus
clear @s nether_star
clear @s end_stone
execute at @s[tag=!menu.stat.map] run playsound block.grass.break master @s

replaceitem entity @s enderchest.10 air
replaceitem entity @s enderchest.12 air
replaceitem entity @s enderchest.14 air
replaceitem entity @s enderchest.16 air

tag @a remove player
tag @s add player

scoreboard players operation plays n = @s s.manor.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.manor.win
scoreboard players set c n 10000
scoreboard players operation wins n *= c n
scoreboard players operation wins n /= plays n

scoreboard players operation whole n = wins n
scoreboard players operation decim n = wins n
scoreboard players set c n 100
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

loot replace entity @s enderchest.5 loot uub:map/manor

scoreboard players operation plays n = @s s.woodlands.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.woodlands.win
scoreboard players set c n 10000
scoreboard players operation wins n *= c n
scoreboard players operation wins n /= plays n

scoreboard players operation whole n = wins n
scoreboard players operation decim n = wins n
scoreboard players set c n 100
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

loot replace entity @s enderchest.6 loot uub:map/woodlands

scoreboard players operation plays n = @s s.dungeon.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.dungeon.win
scoreboard players set c n 10000
scoreboard players operation wins n *= c n
scoreboard players operation wins n /= plays n

scoreboard players operation whole n = wins n
scoreboard players operation decim n = wins n
scoreboard players set c n 100
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

loot replace entity @s enderchest.7 loot uub:map/dungeon

scoreboard players operation plays n = @s s.abyss.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.abyss.win
scoreboard players set c n 10000
scoreboard players operation wins n *= c n
scoreboard players operation wins n /= plays n

scoreboard players operation whole n = wins n
scoreboard players operation decim n = wins n
scoreboard players set c n 100
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

loot replace entity @s enderchest.8 loot uub:map/abyss

replaceitem entity @s enderchest.14 diamond_block{display:{Name:'{"text": "Citadel","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.15 dead_bush{display:{Name:'{"text": "Wasteland","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.16 emerald{display:{Name:'{"text": "Town Square","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.17 bell{display:{Name:'{"text": "Last Stand","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.23 blue_ice{display:{Name:'{"text": "Permafrost","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.24 crimson_fungus{display:{Name:'{"text": "Shroom","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.25 nether_star{display:{Name:'{"text": "Hellscape","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}
replaceitem entity @s enderchest.26 end_stone{display:{Name:'{"text": "Frontier","color": "white","bold": true,"italic": false}',Lore:['{"text": "Map coming soon.","color": "gray"}']}}

replaceitem entity @s enderchest.10 barrier{display:{Name:'{"text": "Back","bold": true,"italic": false,"color": "red"}',Lore:['{"text": "Go back to Statistics.","color": "gray"}']},HideFlags:63}

tag @s remove menu.stat
tag @s add menu.stat.map
