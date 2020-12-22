execute if score map q matches 1 run tp @s[scores={pn=1}] 33 25 3 -45 0
execute if score map q matches 1 run tp @s[scores={pn=2}] 57 25 27 135 0
execute if score map q matches 1 run tp @s[scores={pn=3}] 57 25 3 45 0
execute if score map q matches 1 run tp @s[scores={pn=4}] 33 25 27 -135 0
execute if score map q matches 1 run tp @s[gamemode=spectator] 45 32 15
execute if score map q matches 1 run tp @s[gamemode=spectator] 45 32 15 facing entity @r[tag=alive]

execute if score map q matches 2 run tp @s[scores={pn=1}] 35. 22 37. -45 0
execute if score map q matches 2 run tp @s[scores={pn=2}] 56. 22 58. 135 0
execute if score map q matches 2 run tp @s[scores={pn=3}] 35. 22 58. -135 0
execute if score map q matches 2 run tp @s[scores={pn=4}] 56. 22 37. 45 0
execute if score map q matches 2 run tp @s[gamemode=spectator] 45 32 47
execute if score map q matches 2 run tp @s[gamemode=spectator] 45 32 47 facing entity @r[tag=alive]

execute if score map q matches 3 run tp @s[scores={pn=1}] 33 26 67 -45 0
execute if score map q matches 3 run tp @s[scores={pn=2}] 57 26 91 135 0
execute if score map q matches 3 run tp @s[scores={pn=3}] 57 26 67 45 0
execute if score map q matches 3 run tp @s[scores={pn=4}] 33 26 91 -135 0
execute if score map q matches 3 run tp @s[gamemode=spectator] 45 26 79
execute if score map q matches 3 run tp @s[gamemode=spectator] 45 26 79 facing entity @r[tag=alive]

scoreboard players set @s qdeath 0
