scoreboard players set @s ready 0
tellraw @a [{"selector": "@s"},{"text": " is no longer ready.","color": "dark_red"}]
execute unless entity @a[tag=player,scores={ready=1}] run function uub:start/ready/cancel
