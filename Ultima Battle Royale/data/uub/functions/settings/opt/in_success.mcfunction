tellraw @a [{"selector":"@s","color":"dark_green"}, " has opted in."]
execute at @s run playsound block.note_block.xylophone master @s
tag @s add player
tag @s remove spectator

scoreboard players set #temp _var 0
execute if score #flag game_mode = #brawl game_mode run scoreboard players set #temp _var 1
execute if score #flag game_mode = #duels game_mode run scoreboard players set #temp _var 1

execute if score #flag game_state matches 1 if score #temp _var matches 1 run function uub:settings/opt/join
