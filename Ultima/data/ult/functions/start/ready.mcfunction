function ult:data/root
scoreboard players set @s ready 1
execute unless entity @a[tag=player,scores={ready=1},tag=!root] run function ult:start/ready/first_ready
scoreboard players set #max _var 0
execute as @a[tag=player] run scoreboard players add #max _var 1
scoreboard players set #ready _var 0
execute as @a[tag=player, scores={ready=1}] run scoreboard players add #ready _var 1
tellraw @a[tag=!root] [{"selector": "@s","color": "blue"},{"text": " is ready. "}, {"score": {"name": "#ready", "objective": "_var"}, "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Ready:\n", "color": "blue", "bold": true}, {"selector": "@a[tag=player, scores={ready=1}]"}, {"text": "\nWaiting on:\n", "color": "dark_red", "bold": true}, {"selector": "@a[tag=player, scores={ready=0}]", "color": "gray"}]}, "extra": [" / ", {"score": {"name": "#max", "objective": "_var"}}]}, " "]
tellraw @s [{"selector": "@s","color": "blue"},{"text": " is ready. "}, {"score": {"name": "#ready", "objective": "_var"}, "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Ready:\n", "color": "blue", "bold": true}, {"selector": "@a[tag=player, scores={ready=1}]"}, {"text": "\nWaiting on:\n", "color": "dark_red", "bold": true}, {"selector": "@a[tag=player, scores={ready=0}]", "color": "gray"}]}, "extra": [" / ", {"score": {"name": "#max", "objective": "_var"}}]}, " ", {"text": "Mistake? Click to unready.", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 7"}}]
tag @s remove root
execute as @a at @s run playsound block.note_block.snare master @s
function ult:start/ready/warning
function ult:start/ready/valid_start
function ult:tp/lobby
