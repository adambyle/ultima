scoreboard players set #iter _var 2
execute if score #iter _var <= #server pn run function uub:spawn/queue_advance/loop
