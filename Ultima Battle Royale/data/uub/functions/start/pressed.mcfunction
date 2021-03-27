function uub:data/root

tp 45 30 -12
tellraw @s[tag=spectator] {"text": "You must opt in before readying.","color": "yellow"}
execute unless score #flag map = #vote map as @s[tag=player,scores={ready=0}] run function uub:start/ready
execute if score #flag map = #vote map as @s[tag=player,scores={ready=0}] unless score #flag game_mode = #ultimate game_mode run function uub:start/vote
execute if score #flag map = #vote map as @s[tag=player,scores={ready=0}] if score #flag game_mode = #ultimate game_mode run function uub:start/ready
execute as @s[tag=player,scores={ready=1},tag=root] run function uub:start/ready/unready
