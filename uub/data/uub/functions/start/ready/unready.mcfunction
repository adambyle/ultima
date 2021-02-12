scoreboard players set @s ready 0
tellraw @a [{"selector": "@s","color": "dark_red"},{"text": " is no longer ready."}]
execute unless entity @a[tag=player,scores={ready=1}] run function uub:start/ready/cancel
