scoreboard players set selected n 0
execute as @s[tag=menu.vote.best] run function uub:settings/vote/selection
execute as @s[tag=menu.vote.best] if score selected n matches 1.. unless score selected n = @s upvote unless score selected n = @s downvote at @s run playsound entity.villager.yes master @s
execute as @s[tag=menu.vote.best] if score selected n matches 1.. unless score selected n = @s downvote run scoreboard players operation @s upvote = selected n
execute as @s[tag=menu.vote.best] if score selected n matches 1.. unless score selected n = @s upvote at @s run playsound entity.villager.yes master @s[tag=!menu.vote.best]
execute at @s run playsound entity.villager.yes master @s[tag=!menu.vote.best]

execute as @s[tag=!menu.vote.best] run function uub:settings/clear_ender_chest
function uub:settings/clear_map_icons
clear @s red_wool
clear @s green_wool
clear @s structure_void
function uub:settings/vote/list_maps
replaceitem entity @s enderchest.13 structure_void{display:{Name:'{"text": "Back","bold": true,"italic": false,"color": "red"}',Lore:['{"text": "Go back to Map Preferences.","color": "gray"}']},HideFlags:63}

execute if score @s upvote matches 1 run replaceitem entity @s enderchest.5 minecraft:dark_oak_planks{display:{Name:'{"text": "Manor","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Upvoted!","color": "dark_green"}']}} 1
execute if score @s upvote matches 2 run replaceitem entity @s enderchest.6 minecraft:spruce_sapling{display:{Name:'{"text": "Woodlands","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Upvoted!","color": "dark_green"}']}} 1
execute if score @s upvote matches 3 run replaceitem entity @s enderchest.7 minecraft:stone_bricks{display:{Name:'{"text": "Dungeon","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Upvoted!","color": "dark_green"}']}} 1
execute if score @s upvote matches 4 run replaceitem entity @s enderchest.8 minecraft:blackstone{display:{Name:'{"text": "Abyss","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Upvoted!","color": "dark_green"}']}} 1
execute if score @s upvote matches 5 run replaceitem entity @s enderchest.14 diamond_block{display:{Name:'{"text": "Citadel","color": "white","bold": true,"italic": false}',Lore:['{"text": "Upvoted!","color": "dark_green"}']}}
execute if score @s upvote matches 13 run replaceitem entity @s enderchest.0 polished_andesite{display:{Name:'{"text": "Reflection","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Jonathan Deiss!","color": "dark_purple"}','{"text": "Upvoted!","color": "dark_green"}']},HideFlags:63}
execute if score @s upvote matches 14 run replaceitem entity @s enderchest.1 polished_blackstone_bricks{display:{Name:'{"text": "Dracula\'s Castle","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Reed Aldridge!","color": "dark_purple"}','{"text": "Upvoted!","color": "dark_green"}']},HideFlags:63}
execute if score @s upvote matches 15 run replaceitem entity @s enderchest.2 snow{display:{Name:'{"text": "Avanto","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Tucker Lawson!","color": "dark_purple"}','{"text": "Upvoted!","color": "dark_green"}']}}

execute if score @s downvote matches 1 run replaceitem entity @s enderchest.5 minecraft:dark_oak_planks{display:{Name:'{"text": "Manor","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']}} 1
execute if score @s downvote matches 2 run replaceitem entity @s enderchest.6 minecraft:spruce_sapling{display:{Name:'{"text": "Woodlands","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']}} 1
execute if score @s downvote matches 3 run replaceitem entity @s enderchest.7 minecraft:stone_bricks{display:{Name:'{"text": "Dungeon","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']}} 1
execute if score @s downvote matches 4 run replaceitem entity @s enderchest.8 minecraft:blackstone{display:{Name:'{"text": "Abyss","bold": true,"italic": false,"color": "white"}',Lore:['{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']}} 1
execute if score @s downvote matches 5 run replaceitem entity @s enderchest.14 diamond_block{display:{Name:'{"text": "Citadel","color": "white","bold": true,"italic": false}',Lore:['{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']}}
execute if score @s downvote matches 13 run replaceitem entity @s enderchest.0 polished_andesite{display:{Name:'{"text": "Reflection","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Jonathan Deiss!","color": "dark_purple"}','{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']},HideFlags:63}
execute if score @s downvote matches 14 run replaceitem entity @s enderchest.1 polished_blackstone_bricks{display:{Name:'{"text": "Dracula\'s Castle","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Reed Aldridge!","color": "dark_purple"}','{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']},HideFlags:63}
execute if score @s downvote matches 15 run replaceitem entity @s enderchest.2 snow{display:{Name:'{"text": "Avanto","color": "white","bold": true,"italic": false}',Lore:['{"text": "Featuring Tucker Lawson!","color": "dark_purple"}','{"text": "Downvoted! (Cannot upvote)","color": "dark_red"}']}}

tag @s remove menu.vote
tag @s add menu.vote.best
