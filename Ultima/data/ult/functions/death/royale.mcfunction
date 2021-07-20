# If the killer is also dead
    execute if entity @a[tag=killer, scores={death=1..}] run function ult:death/simul

# Otherwise give killer a point
    scoreboard players add @a[tag=killer, scores={death=0}] score 1

# Standard death message
    execute if entity @a[tag=killer, scores={death=0}] run tellraw @a [{"selector": "@s", "color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]", "color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=killer]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "dark_red"}, {"text": " HP.\n", "color": "dark_red"}, {"selector": "@a[tag=killer]", "color": "white"}, {"text": " reached ", "color": "gray"}, {"score": {"name": "@r[tag=killer]", "objective": "score"}, "color": "green"}, {"text": " out of ", "color": "gray"}, {"score": {"name": ".temp_pn", "objective": "pn"}, "color": "dark_green"}, {"text": " kills needed to win.", "color": "gray"}]}}]

# If no killer was found, choose someone random
    tag @a remove random
    tag @r[tag=alive, scores={death=0}] add random
    execute unless entity @a[tag=killer] run scoreboard players add @a[tag=random] score 1
    execute unless entity @a[tag=killer] if entity @a[tag=random] run tellraw @a [{"selector": "@s", "color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ", and is tethered to ", "color": "gray"}, {"selector": "@a[tag=random]", "color": "white"}, {"text": ". ", "color": "gray"}, {"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=random]"}, {"text": " was at ", "color": "gray"}, {"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "dark_red"}, {"text": " HP.\n", "color": "dark_red"}, {"selector": "@a[tag=random]", "color": "white"}, {"text": " reached ", "color": "gray"}, {"score": {"name": "@r[tag=random]", "objective": "score"}, "color": "green"}, {"text": " out of ", "color": "gray"}, {"score": {"name": ".temp_pn", "objective": "pn"}, "color": "dark_green"}, {"text": " kills needed to win.", "color": "gray"}]}}]
    execute unless entity @a[tag=killer] run tag @a[tag=random] add killer

# If STILL no killer exists
    execute unless entity @a[tag=killer] run tellraw @a [{"selector": "@s", "color": "red"}, {"text": " died.", "color": "gray"}]

# Set tether
    scoreboard players operation @s tether = @r[tag=killer] pn

# Reset score
    scoreboard players set @s score 0

# If the player will be waiting for their killer to die
    execute if entity @a[tag=killer] run function ult:settings/opt/prompt/lobby_tp

# If all the players are dead
    scoreboard players set .temp_pn _var 0
    execute as @a[tag=player] run scoreboard players add .temp_pn _var 1
    scoreboard players remove .temp_pn _var 1
    execute as @a[tag=killer] if score @s score >= .temp_pn _var run function ult:victory
