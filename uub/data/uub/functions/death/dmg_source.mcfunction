tag @e remove candidate
tag @a remove player
tag @s add player
execute unless entity @e[type=!player,scores={pn=1..},sort=nearest,distance=..6,limit=1] as @a[team=play,tag=alive] if score @s pn = @r[tag=player] dmg_source run tag @s add candidate
execute unless entity @e[tag=candidate] run tag @a[scores={dmg=1..},sort=nearest,team=play,tag=alive,limit=1] add candidate
execute unless score @s hp matches 0 at @s if entity @e[tag=candidate,distance=6..] run title @s actionbar [{"selector": "@e[tag=candidate]","color": "red","bold": true},{"text": " hit you.","color": "gray","bold": true}]
execute unless score @s hp matches 0 at @s if entity @e[tag=candidate,nbt={ActiveEffects:[{Id:14b}]}] run title @s[tag=alive] actionbar [{"selector": "@e[tag=candidate]","color": "red","bold": true},{"text": " hit you.","color": "gray","bold": true}]
execute unless score @s hp matches 0 at @s if entity @e[tag=candidate,distance=6..] run title @a[tag=candidate] actionbar [{"selector": "@s","color": "blue","bold": true},{"text": " is at ","color": "gray","bold": true},{"score": {"name": "@s","objective": "hp"},"color": "red","bold": true},{"text": " HP.","color": "gray","bold": true}]
scoreboard players operation @s last_attacker = @r[tag=candidate] pn
