scoreboard players add randmap q 1
execute if score randmap q matches 5.. run scoreboard players set randmap q 1
scoreboard players operation map q = randmap q
