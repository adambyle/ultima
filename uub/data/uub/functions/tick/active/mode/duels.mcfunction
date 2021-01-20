# Test for trigger actions
execute if score #timeout game_mode matches 0 run scoreboard players set @a game_mode 0
execute as @a[scores={action=1,game_mode=0},tag=player] if score #timeout game_mode matches 0 run function uub:tick/action/change_modes
execute as @a[scores={action=1,game_mode=0},tag=player] if score #timeout game_mode matches 1.. run function uub:tick/action/confirm_change_modes
