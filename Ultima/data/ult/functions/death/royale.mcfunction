scoreboard players set #temp pn 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
scoreboard players remove #temp pn 1

execute if entity @a[tag=killer,scores={die=1..}] run function ult:death/simul
scoreboard players add @a[tag=killer,scores={die=0}] score 1
execute if entity @a[tag=killer,scores={die=0}] run tellraw @a [{"selector": "@s","color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, " ", {"selector": "@a[tag=killer]","color": "white"}, {"storage": "ult:temp", "nbt": "Death2", "color": "gray", "interpret": true}, {"text": ". ","color": "gray"},{"text": "[Details]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": [{"selector": "@a[tag=killer]"},{"text": " was at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "health"},"color": "dark_red"},{"text": " HP.\n","color": "dark_red"},{"selector": "@a[tag=killer]","color": "white"},{"text": " reached ","color": "gray"},{"score": {"name": "@r[tag=killer]","objective": "score"},"color": "green"},{"text": " out of ","color": "gray"},{"score": {"name": "#temp","objective": "pn"},"color": "dark_green"},{"text": " kills needed to win.","color": "gray"}]}}]

tag @a remove random
tag @r[tag=alive,scores={die=0}] add random

execute unless entity @a[tag=killer] run scoreboard players add @a[tag=random] score 1
execute unless entity @a[tag=killer] if entity @a[tag=random] run tellraw @a [{"selector": "@s","color": "red"}, " ", {"storage": "ult:temp", "nbt": "Death1", "color": "gray", "interpret": true}, {"text": ", and is tethered to ","color": "gray"},{"selector": "@a[tag=random]","color": "white"},{"text": ". ","color": "gray"},{"text": "[Details]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": [{"selector": "@a[tag=random]"},{"text": " was at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "health"},"color": "dark_red"},{"text": " HP.\n","color": "dark_red"},{"selector": "@a[tag=random]","color": "white"},{"text": " reached ","color": "gray"},{"score": {"name": "@r[tag=random]","objective": "score"},"color": "green"},{"text": " out of ","color": "gray"},{"score": {"name": "#temp","objective": "pn"},"color": "dark_green"},{"text": " kills needed to win.","color": "gray"}]}}]
execute unless entity @a[tag=killer] run tag @a[tag=random] add killer

execute unless entity @a[tag=killer] run tellraw @a [{"selector": "@s","color": "red"},{"text": " died.","color": "gray"}]

scoreboard players operation @s tether = @r[tag=killer] pn
scoreboard players set @s score 0

execute as @a[tag=killer] if score @s score >= #temp pn run function ult:victory

execute if entity @a[tag=killer] run function ult:tick/action/opt_prompt/lobby_tp

scoreboard players set @s showedkey 0
data modify storage ult:temp Key set value {dieRoyale: true}
execute if entity @a[tag=killer] if score @s showedkey matches 0 run function ult:tick/action/key_point
