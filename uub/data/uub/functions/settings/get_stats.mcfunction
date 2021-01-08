clear @s globe_banner_pattern
clear @s structure_void
execute at @s[tag=!menu.stat] run playsound ui.loom.take_result master @s

function uub:settings/clear_ender_chest

tag @a remove player
tag @s add player

scoreboard players operation plays n = @s s.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation wins n = @s s.win
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

scoreboard players operation win_whole n = whole n
scoreboard players operation win_decim n = decim n

scoreboard players operation deaths n = @s s.deaths
execute if score deaths n matches 0 run scoreboard players set deaths n 1
scoreboard players operation kills n = @s s.kills
scoreboard players set c n 100
scoreboard players operation kills n *= c n
scoreboard players operation kills n /= deaths n

scoreboard players operation whole n = kills n
scoreboard players operation decim n = kills n
scoreboard players operation whole n /= c n
scoreboard players operation mwhle n = whole n
scoreboard players operation mwhle n *= c n
scoreboard players operation decim n -= mwhle n

scoreboard players operation kdr_whole n = whole n
scoreboard players operation kdr_decim n = decim n

loot replace entity @s enderchest.12 loot uub:overall_stats

scoreboard players set map_max n 1
scoreboard players set map_min n 1

scoreboard players operation max n = @s s.manor.play
scoreboard players operation min n = max n

scoreboard players operation plays n = @s s.woodlands.play
execute if score plays n > max n run scoreboard players set map_max n 2
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 2
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.dungeon.play
execute if score plays n > max n run scoreboard players set map_max n 3
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 3
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.abyss.play
execute if score plays n > max n run scoreboard players set map_max n 4
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 4
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.citadel.play
execute if score plays n > max n run scoreboard players set map_max n 5
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 5
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.reflect.play
execute if score plays n > max n run scoreboard players set map_max n 13
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 13
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.dracula.play
execute if score plays n > max n run scoreboard players set map_max n 14
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 14
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.avanto.play
execute if score plays n > max n run scoreboard players set map_max n 15
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 15
execute if score plays n < min n run scoreboard players operation min n = plays n

execute if score map_max n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp1"]}
execute if score map_max n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp1"]}
execute if score map_max n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp1"]}
execute if score map_max n matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp1"]}
execute if score map_max n matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp1"]}
execute if score map_max n matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp1"]}
execute if score map_max n matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp1"]}
execute if score map_max n matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp1"]}
execute if score map_min n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp2"]}
execute if score map_min n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp2"]}
execute if score map_min n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp2"]}
execute if score map_min n matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp2"]}
execute if score map_min n matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp2"]}
execute if score map_min n matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp2"]}
execute if score map_min n matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp2"]}
execute if score map_min n matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp2"]}

scoreboard players set map_max n 1
scoreboard players set map_min n 1
scoreboard players set c n 100

scoreboard players operation wins n = @s s.manor.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.manor.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation max n = wins n
scoreboard players operation max n /= plays n
scoreboard players operation min n = max n

scoreboard players operation wins n = @s s.woodlands.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.woodlands.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 2
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 2
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.dungeon.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.dungeon.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 3
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 3
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.abyss.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.abyss.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 4
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 4
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.citadel.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.citadel.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 5
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 5
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.reflect.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.reflect.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 13
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 13
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.dracula.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.dracula.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 14
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 14
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.avanto.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.avanto.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 15
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 15
execute if score rat n < min n run scoreboard players operation min n = rat n

execute if score map_max n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp3"]}
execute if score map_max n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp3"]}
execute if score map_max n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp3"]}
execute if score map_max n matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp3"]}
execute if score map_max n matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp3"]}
execute if score map_max n matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp3"]}
execute if score map_max n matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp3"]}
execute if score map_max n matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp3"]}
execute if score map_min n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp4"]}
execute if score map_min n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp4"]}
execute if score map_min n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp4"]}
execute if score map_min n matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp4"]}
execute if score map_min n matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp4"]}
execute if score map_min n matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp4"]}
execute if score map_min n matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp4"]}
execute if score map_min n matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp4"]}

loot replace entity @s enderchest.14 loot uub:map_stats

kill @e[tag=temp1]
kill @e[tag=temp2]
kill @e[tag=temp3]
kill @e[tag=temp4]

scoreboard players set map_max n 1
scoreboard players set map_min n 1

scoreboard players operation max n = @s s.classic.play
scoreboard players operation min n = max n

scoreboard players operation plays n = @s s.duels.play
execute if score plays n > max n run scoreboard players set map_max n 2
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 2
execute if score plays n < min n run scoreboard players operation min n = plays n

scoreboard players operation plays n = @s s.brawl.play
execute if score plays n > max n run scoreboard players set map_max n 3
execute if score plays n > max n run scoreboard players operation max n = plays n
execute if score plays n < min n run scoreboard players set map_min n 3
execute if score plays n < min n run scoreboard players operation min n = plays n

execute if score map_max n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Classic"',Tags:["temp1"]}
execute if score map_max n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Duels"',Tags:["temp1"]}
execute if score map_max n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Brawl"',Tags:["temp1"]}
execute if score map_min n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Classic"',Tags:["temp2"]}
execute if score map_min n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Duels"',Tags:["temp2"]}
execute if score map_min n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Brawl"',Tags:["temp2"]}

scoreboard players set map_max n 1
scoreboard players set map_min n 1
scoreboard players set c n 100

scoreboard players operation wins n = @s s.classic.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.classic.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation max n = wins n
scoreboard players operation max n /= plays n
scoreboard players operation min n = max n

scoreboard players operation wins n = @s s.duels.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.duels.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 2
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 2
execute if score rat n < min n run scoreboard players operation min n = rat n

scoreboard players operation wins n = @s s.brawl.win
scoreboard players operation wins n *= c n
scoreboard players operation plays n = @s s.brawl.play
execute if score plays n matches 0 run scoreboard players set plays n 1
scoreboard players operation rat n = wins n
scoreboard players operation rat n /= plays n
execute if score rat n > max n run scoreboard players set map_max n 3
execute if score rat n > max n run scoreboard players operation max n = rat n
execute if score rat n < min n run scoreboard players set map_min n 3
execute if score rat n < min n run scoreboard players operation min n = rat n

execute if score map_max n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Classic"',Tags:["temp3"]}
execute if score map_max n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Duels"',Tags:["temp3"]}
execute if score map_max n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Brawl"',Tags:["temp3"]}
execute if score map_min n matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Classic"',Tags:["temp4"]}
execute if score map_min n matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Duels"',Tags:["temp4"]}
execute if score map_min n matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Brawl"',Tags:["temp4"]}

loot replace entity @s enderchest.16 loot uub:mode_stats

replaceitem entity @s enderchest.10 structure_void{display:{Name:'{"text": "Back","bold": true,"italic": false,"color": "red"}',Lore:['{"text": "Go back to Player Settings.","color": "gray"}']},HideFlags:63}

tag @s remove menu.stat.map
tag @s remove menu.stat.mode
tag @s remove menu.main
tag @s add menu.stat

kill @e[tag=temp1]
kill @e[tag=temp2]
kill @e[tag=temp3]
kill @e[tag=temp4]
