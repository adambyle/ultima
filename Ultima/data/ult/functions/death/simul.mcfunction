tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, {"text": " and ", "color": "gray"}, {"selector": "@a[tag=killer]", "color": "#F94144"}, {"text": " killed each other simultaneously. ", "color": "gray"}]
tellraw @a[tag=chat.g.l] [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "#F94144"}, " <-> ", {"selector": "@a[tag=killer]", "color": "#F94144"}]

# Handle the other player not recognized as dead yet
    execute as @a[tag=killer] run function ult:death/exit
    scoreboard players set @a[tag=killer] tether -1
    tag @a[tag=killer] add fresh
