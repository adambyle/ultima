tellraw @a[tag=watching] [{"selector": "@s"}, {"text": " wants to change game mode.", "color": "gray"}]
execute as @a[tag=watching] at @s run playsound block.note_block.iron_xylophone master @s ~ ~ ~ 4
tag @s add change_modes
