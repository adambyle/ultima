execute if score #arch chest = chest.common const if predicate ult:chest/common run scoreboard players add @s chest 1
execute if score #arch chest = chest.uncommon const if predicate ult:chest/uncommon run scoreboard players add @s chest 1
execute if score #arch chest = chest.rare const if predicate ult:chest/rare run scoreboard players add @s chest 1
execute if score #arch chest = chest.epic const if predicate ult:chest/epic run scoreboard players add @s chest 1
execute if score #arch chest = chest.ultimate const if predicate ult:chest/ultimate run scoreboard players add @s chest 1

scoreboard players add #iter _var 1
execute if score #iter _var < #arch chest run function ult:chest/random/loop
