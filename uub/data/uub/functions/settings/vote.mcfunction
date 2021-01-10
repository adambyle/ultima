function uub:settings/clear_ender_chest
function uub:settings/clear_map_icons
tag @s remove menu.main
tag @s remove menu.vote.best
tag @s remove menu.vote.worst
tag @s add menu.vote

execute at @s run playsound entity.villager.ambient master @s

clear @s red_wool
clear @s green_wool
clear @s structure_void

replaceitem entity @s enderchest.13 structure_void{display:{Name:'{"text": "Back","bold": true,"italic": false,"color": "red"}',Lore:['{"text": "Go back to Player Settings.","color": "gray"}']},HideFlags:63}

execute if score @s upvote matches 0 run summon armor_stand 45 20 -10 {CustomName:'"None"',Tags:["temp5"]}
execute if score @s upvote matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp5"]}
execute if score @s upvote matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp5"]}
execute if score @s upvote matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp5"]}
execute if score @s upvote matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp5"]}
execute if score @s upvote matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp5"]}
execute if score @s upvote matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp5"]}
execute if score @s upvote matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp5"]}
execute if score @s upvote matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp5"]}
execute if score @s downvote matches 0 run summon armor_stand 45 20 -10 {CustomName:'"None"',Tags:["temp6"]}
execute if score @s downvote matches 1 run summon armor_stand 45 20 -10 {CustomName:'"Manor"',Tags:["temp6"]}
execute if score @s downvote matches 2 run summon armor_stand 45 20 -10 {CustomName:'"Woodlands"',Tags:["temp6"]}
execute if score @s downvote matches 3 run summon armor_stand 45 20 -10 {CustomName:'"Dungeon"',Tags:["temp6"]}
execute if score @s downvote matches 4 run summon armor_stand 45 20 -10 {CustomName:'"Abyss"',Tags:["temp6"]}
execute if score @s downvote matches 5 run summon armor_stand 45 20 -10 {CustomName:'"Citadel"',Tags:["temp6"]}
execute if score @s downvote matches 13 run summon armor_stand 45 20 -10 {CustomName:'"Reflection"',Tags:["temp6"]}
execute if score @s downvote matches 14 run summon armor_stand 45 20 -10 {CustomName:'"Dracula\'s Castle"',Tags:["temp6"]}
execute if score @s downvote matches 15 run summon armor_stand 45 20 -10 {CustomName:'"Avanto"',Tags:["temp6"]}

loot replace entity @s enderchest.11 loot uub:vote/downvoted
loot replace entity @s enderchest.15 loot uub:vote/upvoted

kill @e[tag=temp5]
kill @e[tag=temp6]
