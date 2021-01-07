scoreboard players set got_award n 0

execute unless score got_award n matches 1 unless score a.taken.1 n matches 1 unless score a.tried.1 n matches 1 if predicate uub:8 if score @s a.deaths = a.deaths.min n run function uub:awards/give/1
execute unless score got_award n matches 1 unless score a.taken.2 n matches 1 unless score a.tried.2 n matches 1 if predicate uub:7 if score @s a.steal = a.steal.max n run function uub:awards/give/2
execute unless score got_award n matches 1 unless score a.taken.3 n matches 1 unless score a.tried.3 n matches 1 if predicate uub:6 if score @s a.kills = a.kills.max n run function uub:awards/give/3
execute unless score got_award n matches 1 unless score a.taken.4 n matches 1 unless score a.tried.4 n matches 1 if predicate uub:5 if score @s a.not_underdog = a.not_underdog.max n run function uub:awards/give/4
execute unless score got_award n matches 1 unless score a.taken.5 n matches 1 unless score a.tried.5 n matches 1 if predicate uub:4 if score @s a.avenge = a.avenge.max n run function uub:awards/give/5
execute unless score got_award n matches 1 unless score a.taken.6 n matches 1 unless score a.tried.6 n matches 1 if predicate uub:3 if score @s a.leader_kill = a.leader_kill.max n run function uub:awards/give/6
execute unless score got_award n matches 1 unless score a.taken.7 n matches 1 unless score a.tried.7 n matches 1 if predicate uub:2 if score @s a.low_kill = a.low_kill.max n run function uub:awards/give/7
execute unless score got_award n matches 1 unless score a.taken.8 n matches 1 unless score a.tried.8 n matches 1 if score @s a.damage_taken = a.damage_taken.max n run function uub:awards/give/8

execute unless score got_award n matches 1 unless score a.taken.1 n matches 1 unless score a.tried.1 n matches 1 if predicate uub:8 unless score @s a.deaths = a.deaths.min n run scoreboard players set a.tried.1 n 1
execute unless score got_award n matches 1 unless score a.taken.2 n matches 1 unless score a.tried.2 n matches 1 if predicate uub:7 unless score @s a.steal = a.steal.max n run scoreboard players set a.tried.2 n 1
execute unless score got_award n matches 1 unless score a.taken.3 n matches 1 unless score a.tried.3 n matches 1 if predicate uub:6 unless score @s a.kills = a.kills.max n run scoreboard players set a.tried.3 n 1
execute unless score got_award n matches 1 unless score a.taken.4 n matches 1 unless score a.tried.4 n matches 1 if predicate uub:5 unless score @s a.not_underdog = a.not_underdog.max n run scoreboard players set a.tried.4 n 1
execute unless score got_award n matches 1 unless score a.taken.5 n matches 1 unless score a.tried.5 n matches 1 if predicate uub:4 unless score @s a.avenge = a.avenge.max n run scoreboard players set a.tried.5 n 1
execute unless score got_award n matches 1 unless score a.taken.6 n matches 1 unless score a.tried.6 n matches 1 if predicate uub:3 unless score @s a.leader_kill = a.leader_kill.max n run scoreboard players set a.tried.6 n 1
execute unless score got_award n matches 1 unless score a.taken.7 n matches 1 unless score a.tried.7 n matches 1 if predicate uub:2 unless score @s a.low_kill = a.low_kill.max n run scoreboard players set a.tried.7 n 1
execute unless score got_award n matches 1 unless score a.taken.8 n matches 1 unless score a.tried.8 n matches 1 unless score @s a.damage_taken > a.damage_taken.max n run scoreboard players set a.tried.8 n 1

scoreboard players set all_tried n 0
execute if score a.tried.1 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.2 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.3 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.4 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.5 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.6 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.7 n matches 1 run scoreboard players add all_tried n 1
execute if score a.tried.8 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.1 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.2 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.3 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.4 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.5 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.6 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.7 n matches 1 run scoreboard players add all_tried n 1
execute if score a.taken.8 n matches 1 run scoreboard players add all_tried n 1
execute unless score got_award n matches 1 unless score all_tried n matches 8.. run function uub:awards/give
