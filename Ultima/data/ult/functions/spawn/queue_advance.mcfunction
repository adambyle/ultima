# Starting at queue position two, test for updates if queue is less than total players
    scoreboard players set .iter _var 2
    execute if score .iter _var <= .total_players control run function ult:spawn/queue_advance/loop
