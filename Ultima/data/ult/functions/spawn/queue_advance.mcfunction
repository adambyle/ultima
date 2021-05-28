scoreboard players set #iter _var 2
execute if score #iter _var <= .total_players control run function ult:spawn/queue_advance/loop
