function ult:data/root

tp 45 30 -12
execute as @s[tag=spectator] run function ult:settings/opt/in
execute unless score #flag map = #vote map as @s[tag=player,scores={ready=0}] run function ult:start/ready
execute if score #flag map = #vote map as @s[tag=player] unless score .game_mode flag = #ultimate game_mode run function ult:start/vote
execute if score #flag map = #vote map as @s[tag=player,scores={ready=0}] if score .game_mode flag = #ultimate game_mode run function ult:start/ready
