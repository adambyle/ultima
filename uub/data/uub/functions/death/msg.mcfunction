execute if entity @a[tag=killtag] if score mode q matches ..2 run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"}]
execute if entity @a[tag=killtag] if score mode q matches 3 run tellraw @a[tag=!killtag] [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"}]
execute if entity @a[tag=killtag] if score mode q matches 3 if score @r[tag=killtag] tether = @s pn run tellraw @a[tag=killtag] [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"},{"text": " (+2)","color": "dark_gray"}]
execute if entity @a[tag=killtag] if score mode q matches 3 if entity @s[tag=!fresh] run tellraw @a[tag=killtag] [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"},{"text": " (+1)","color": "dark_gray"}]
execute if entity @a[tag=killtag] if score mode q matches 3 if entity @s[tag=fresh] run tellraw @a[tag=killtag] [{"selector": "@s","color": "dark_red"},{"text": " was killed by ","color": "gray"},{"selector": "@a[tag=killtag]","color": "blue"},{"text": ", who was at ","color": "gray"},{"score": {"name": "@r[tag=killtag]","objective": "hp"},"color": "dark_red"},{"text": " HP.","color": "gray"},{"text": " (+0)","color": "dark_gray"}]

execute unless entity @a[tag=killtag] run tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " died, and ","color": "gray"},{"selector": "@a[tag=random]","color": "white"},{"text": " was randomly credited.","color": "gray"}]
