tellraw @a [{"selector": "@s", "color": "red"}, {"text": " and ", "color": "gray"}, {"selector": "@a[tag=killer]", "color": "red"}, {"text": " killed each other simultaneously. ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "dark_red"}, {"text": " HP.", "color": "dark_red"}]}}]

# Handle the other player not recognized as dead yet
    execute as @a[tag=killer] run function ult:death/exit
    scoreboard players set @a[tag=killer] tether -1
    tag @a[tag=killer] add fresh
