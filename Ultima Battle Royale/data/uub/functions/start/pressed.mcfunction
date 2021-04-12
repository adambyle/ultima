function uub:data/root

tp 45 30 -12
execute as @s[tag=spectator] run function uub:settings/opt/in
execute unless score #flag map = #vote map as @s[tag=player,scores={ready=0}] run function uub:start/ready
execute if score #flag map = #vote map as @s[tag=player] unless score #flag game_mode = #ultimate game_mode run function uub:start/vote
execute if score #flag map = #vote map as @s[tag=player,scores={ready=0}] if score #flag game_mode = #ultimate game_mode run function uub:start/ready
