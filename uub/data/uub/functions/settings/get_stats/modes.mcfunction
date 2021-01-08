clear @s iron_axe
clear @s iron_sword
clear @s diamond
clear @s golden_helmet
clear @s wither_skeleton_skull
execute at @s[tag=!menu.stat.mode] run playsound block.smithing_table.use master @s

function uub:settings/clear_ender_chest

tag @a remove player
tag @s add player

scoreboard players operation plays n = @s s.classic.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.classic.win
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

loot replace entity @s enderchest.13 loot uub:mode/classic

scoreboard players operation plays n = @s s.duels.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.duels.win
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

loot replace entity @s enderchest.14 loot uub:mode/duels

scoreboard players operation plays n = @s s.brawl.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.brawl.win
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

loot replace entity @s enderchest.15 loot uub:mode/brawl

replaceitem entity @s enderchest.16 wither_skeleton_skull{display:{Name:'{"text": "Boss Rush","color": "white","bold": true,"italic": false}',Lore:['{"text": "Gamemode coming soon.","color": "gray"}']}}

replaceitem entity @s enderchest.10 structure_void{display:{Name:'{"text": "Back","bold": true,"italic": false,"color": "red"}',Lore:['{"text": "Go back to Statistics.","color": "gray"}']},HideFlags:63}

tag @s remove menu.stat
tag @s add menu.stat.mode
