execute unless entity @a[tag=killer] run tag @a[tag=alive] add killer
execute as @a[tag=killer,scores={die=1..}] run function uub:death/proc

execute unless entity @a[tag=alive] run tellraw @a {"text": "Tie!","color": "gold"}
execute if entity @a[tag=alive] run tellraw @a [{"selector": "@a[tag=killer]","color": "green"},{"text": " wins! ","color": "green"},{"text": "[Details]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": [{"selector": "@a[tag=alive]"},{"text": " was at ","color": "gray"},{"score": {"name": "@r[tag=alive]","objective": "health"},"color": "dark_red"},{"text": " HP.","color": "dark_red"}]}}]
tellraw @a[tag=player] [{"text": "If you want to change gamemodes, ","color": "blue"},{"text": "click here","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger action set 1"}},"."]

scoreboard players set @a die 0
scoreboard players set @a kill 0

function uub:victory
function uub:spawn/assign_queue
