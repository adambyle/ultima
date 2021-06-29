scoreboard players set @s ready 0
scoreboard players set #max _var 0
execute as @a[tag=player] run scoreboard players add #max _var 1
scoreboard players set #ready _var 0
execute as @a[tag=player, scores={ready=1}] run scoreboard players add #ready _var 1

scoreboard players set .count _var 0
scoreboard players set #count2 _var 0
execute as @a[scores={ready=0}, tag=player] run scoreboard players add .count _var 1
execute as @a[scores={ready=1}, tag=player] run scoreboard players add #count2 _var 1
execute if score .count _var matches 0 run data modify storage ult:temp NotReady set value '"(Nobody)"'
execute if score .count _var matches 1.. run data modify storage ult:temp NotReady set value '{"selector": "@a[scores={ready=0}, tag=player]"}'
execute if score #count2 _var matches 0 run data modify storage ult:temp Ready set value '"(Nobody)"'
execute if score #count2 _var matches 1.. run data modify storage ult:temp Ready set value '{"selector": "@a[scores={ready=1}, tag=player]"}'

tellraw @a [{"selector": "@s", "color": "dark_red"}, {"text": " is no longer ready. "}, {"score": {"name": "#ready", "objective": "_var"}, "color": "dark_gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Ready:\n", "color": "blue", "bold": true}, {"storage": "ult:temp", "nbt": "Ready", "interpret": true, "color": "white"}, {"text": "\nWaiting on:\n", "color": "dark_red", "bold": true}, {"storage": "ult:temp", "nbt": "NotReady", "color": "gray", "interpret": true}]}, "extra": [" / ", {"score": {"name": "#max", "objective": "_var"}}]}]
execute unless entity @a[tag=player, scores={ready=1}] run function ult:start/ready/cancel
