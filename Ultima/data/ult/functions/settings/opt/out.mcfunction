function ult:data/root

execute if score @s[tag=player] online matches 1 run tellraw @a [{"selector": "@s", "color": "dark_gray"}, {"text": " has opted out.", "color": "dark_gray"}]
execute at @s run playsound block.note_block.xylophone master @s
execute as @s[tag=player] run function ult:exit
tag @s remove player
tag @s add spectator
tag @s remove ready
execute if score .game_state flag = flag.game_state.active const run function ult:settings/opt/out/mid_game

scoreboard players reset @s score
scoreboard players reset @s health

effect give @s instant_health 1 2 true

function ult:settings/ender_chest/main
