scoreboard players set #increase _var 2
execute as @s[tag=fresh] run scoreboard players set #increase _var 1
execute if score .revenge control matches 1 run scoreboard players set #increase _var 3
scoreboard players set #decrease _var 1

execute if score #decrease _var > @s score run scoreboard players operation #decrease _var = @s score

function ult:data/root

scoreboard players operation @s score -= #decrease _var
scoreboard players operation @a[tag=killer] score += #increase _var
execute unless entity @a[tag=killer] run scoreboard players add @a[tag=!root, tag=player] score 1

execute unless entity @a[tag=killer] run tellraw @a [{"selector": "@s", "color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@s"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@s", "objective": "score"}, "color": "blue"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "-", "color": "dark_blue"}, {"score": {"name": "#decrease", "objective": "_var"}, "color": "dark_blue"}, {"text": ")\n", "color": "dark_gray"}, {"selector": "@a[tag=!root, tag=player]"}, {"text": " all gain a point. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "+1", "color": "dark_blue"}, {"text": ")", "color": "dark_gray"}]}}]

execute if entity @a[tag=killer] run tellraw @a [{"selector": "@s", "color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]", "color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"},{"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"},{"text": " was at ", "color": "gray"},{"score": {"name": "@r[tag=killer]", "objective": "health"}, "color": "dark_red"},{"text": " HP.\n", "color": "dark_red"}, {"selector": "@s"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@s", "objective": "score"}, "color": "blue"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "-", "color": "dark_blue"}, {"score": {"name": "#decrease", "objective": "_var"}, "color": "dark_blue"}, {"text": ")\n", "color": "dark_gray"}, {"selector": "@a[tag=killer]"}, {"text": " now has ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "score"}, "color": "blue"}, {"text": " points. ", "color": "gray"}, {"text": "(", "color": "dark_gray"}, {"text": "+", "color": "dark_blue"}, {"score": {"name": "#increase", "objective": "_var"}, "color": "dark_blue"}, {"text": ")", "color": "dark_gray"}]}}]
