execute unless entity @a[tag=killer] run tag @a[tag=alive] add killer
execute as @a[tag=killer,scores={death=1..}] run function ult:death/proc

execute unless entity @a[tag=alive] run tellraw @a {"text": "Tie!", "color": "gold"}
execute unless entity @a[tag=alive] as @a[gamemode=!spectator, scores={death=1..}] run function ult:death/proc
execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=killer]", "color": "green"},{"text": " wins! ", "color": "green"},{"text": "[Details]", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": [{"selector": "@a[tag=alive]"},{"text": " was at ", "color": "gray"},{"score": {"name": "@r[tag=alive]", "objective": "health"}, "color": "dark_red"},{"text": " HP.", "color": "dark_red"}]}}]
tellraw @a[tag=player] [{"text": "If you want to change gamemodes, ", "color": "blue"},{"text": "click here", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger action set 1"}}, "."]

scoreboard players set @a death 0
scoreboard players set @a kill 0

function ult:victory

scoreboard players set @s showedkey 0
data modify storage ult:temp Key set value {dieDuels: true}
execute if score @s showedkey matches 0 run function ult:tick/action/key_point
