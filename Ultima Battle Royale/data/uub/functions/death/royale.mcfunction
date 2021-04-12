scoreboard players set #temp pn 0
execute as @a[tag=player] run scoreboard players add #temp pn 1
scoreboard players remove #temp pn 1

execute if entity @a[tag=killer,scores={die=1..}] run function uub:death/simul
scoreboard players add @a[tag=killer,scores={die=0}] score 1
execute if entity @a[tag=killer,scores={die=0}] run tellraw @a [{"selector": "@s","color": "red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killer]","color": "white"},{"text": ". ","color": "gray"},{"text": "[Details]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": [{"selector": "@a[tag=killer]"},{"text": " was at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "health"},"color": "dark_red"},{"text": " HP.\n","color": "dark_red"},{"selector": "@a[tag=killer]","color": "white"},{"text": " reached ","color": "gray"},{"score": {"name": "@r[tag=killer]","objective": "score"},"color": "green"},{"text": " out of ","color": "gray"},{"score": {"name": "#temp","objective": "pn"},"color": "dark_green"},{"text": " kills needed to win.","color": "gray"}]}}]

tag @a remove random
tag @r[tag=alive,scores={die=0}] add random

execute unless entity @a[tag=killer] run scoreboard players add @a[tag=random] score 1
execute unless entity @a[tag=killer] if entity @a[tag=random] run tellraw @a [{"selector": "@s","color": "red"},{"text": " died, and is tethered to ","color": "gray"},{"selector": "@a[tag=random]","color": "white"},{"text": ". ","color": "gray"},{"text": "[Details]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": [{"selector": "@a[tag=random]"},{"text": " was at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "health"},"color": "dark_red"},{"text": " HP.\n","color": "dark_red"},{"selector": "@a[tag=random]","color": "white"},{"text": " reached ","color": "gray"},{"score": {"name": "@r[tag=random]","objective": "score"},"color": "green"},{"text": " out of ","color": "gray"},{"score": {"name": "#temp","objective": "pn"},"color": "dark_green"},{"text": " kills needed to win.","color": "gray"}]}}]
execute unless entity @a[tag=killer] run tag @a[tag=random] add killer

execute unless entity @a[tag=killer] run tellraw @a [{"selector": "@s","color": "red"},{"text": " died.","color": "gray"}]

scoreboard players operation @s tether = @r[tag=killer] pn
scoreboard players set @s score 0

execute as @a[tag=killer] if score @s score >= #temp pn run function uub:victory
