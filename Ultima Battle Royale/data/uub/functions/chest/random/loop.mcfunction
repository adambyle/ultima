execute if score #arch chest_type matches 1 if predicate uub:chest/common run scoreboard players add @s chest_type 1
execute if score #arch chest_type matches 2 if predicate uub:chest/uncommon run scoreboard players add @s chest_type 1
execute if score #arch chest_type matches 3 if predicate uub:chest/rare run scoreboard players add @s chest_type 1
execute if score #arch chest_type matches 4 if predicate uub:chest/epic run scoreboard players add @s chest_type 1
execute if score #arch chest_type matches 5 if predicate uub:chest/ultimate run scoreboard players add @s chest_type 1

scoreboard players add #iter _var 1
execute if score #iter _var < #arch chest_type run function uub:chest/random/loop
