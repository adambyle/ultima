tellraw @a[tag=player] [{"selector": "@s"},{"text": " wants to change game mode.", "color": "gray"}]
execute as @a[tag=player] at @s run playsound block.note_block.iron_xylophone master @s
scoreboard players set .switch_game_mode control 200
scoreboard players set @s action 0
scoreboard players set @s game_mode 1
