scoreboard players set score_max n 0
execute as @a[team=play] if score @s kills > score_max n run scoreboard players operation score_max n = @s kills
scoreboard players add @a[tag=killtag] a.kills 1
execute if score @r[tag=killtag] kills = score_max n if score @s kills matches 3.. run tellraw @a [{"selector": "@r[tag=killtag]","color": "blue"},{"text": " took down the leader.","color": "gray"}]
execute if entity @a[tag=killtag,scores={hp=..5}] run tellraw @a [{"selector": "@r[tag=killtag]","color": "blue"},{"text": " barely made it out alive.","color": "gray"}]
execute if score @s kills matches ..1 if entity @a[tag=killtag,scores={kills=2..}] run tellraw @a [{"selector": "@r[tag=killtag]","color": "blue"},{"text": " could not spare the underdog.","color": "gray"}]
execute if score @r[tag=killtag] tether = @s[tag=!fresh] pn run tellraw @a [{"selector": "@r[tag=killtag]","color": "blue"},{"text": " avenged their death.","color": "gray"}]
execute as @a[team=play,tag=alive] if score @s pn = @r[tag=player] last_attacker unless entity @s[tag=killtag] run tellraw @a [{"selector": "@r[tag=killtag]","color": "blue"},{"text": " stole ","color": "gray"},{"selector": "@s","extra": ["'s"],"color": "white"},{"text": " kill.","color": "gray"}]
