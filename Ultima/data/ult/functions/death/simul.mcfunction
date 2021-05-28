tellraw @a [{"selector": "@s", "color": "red"}, {"text": " and ", "color": "gray"}, {"selector": "@a[tag=killer]", "color": "red"}, {"text": " killed each other simultaneously. ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "dark_red"}, {"text": " HP.", "color": "dark_red"}]}}]

execute as @a[tag=killer] run function ult:exit/death
scoreboard players reset @a[tag=killer] tether
tag @a[tag=killer] add fresh
