scoreboard players set @s ready 0
scoreboard players set #max _var 0
execute as @a[tag=player] run scoreboard players add #max _var 1
scoreboard players set #ready _var 0
execute as @a[tag=player, scores={ready=1}] run scoreboard players add #ready _var 1
tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " is no longer ready. "}, {"score": {"name": "#ready", "objective": "_var"}, "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Ready:\n", "color": "blue", "bold": true}, {"selector": "@a[tag=player, scores={ready=1}]"}, {"text": "\nWaiting on:\n", "color": "dark_red", "bold": true}, {"selector": "@a[tag=player, scores={ready=0}]", "color": "gray"}]}, "extra": [" / ", {"score": {"name": "#max", "objective": "_var"}}]}]
execute unless entity @a[tag=player,scores={ready=1}] run function ult:start/ready/cancel
