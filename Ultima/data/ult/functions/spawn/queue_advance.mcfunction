scoreboard players set #iter _var 2
execute if score #iter _var <= #server pn run function ult:spawn/queue_advance/loop
