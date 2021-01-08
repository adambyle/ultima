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

execute if score map q matches 4 run tp @s[scores={pn=1}] 34 25 100 -45 0
execute if score map q matches 4 run tp @s[scores={pn=2}] 56 25 122 135 0
execute if score map q matches 4 run tp @s[scores={pn=3}] 56 25 100 45 0
execute if score map q matches 4 run tp @s[scores={pn=4}] 34 25 122 -135 0
execute if score map q matches 4 run tp @s[gamemode=spectator] 45 28 111
execute if score map q matches 4 run tp @s[gamemode=spectator] 45 28 111 facing entity @r[tag=alive]

execute if score map q matches 5 run tp @s[scores={pn=1}] 65 21 3 -45 0
execute if score map q matches 5 run tp @s[scores={pn=2}] 89 21 27 135 0
execute if score map q matches 5 run tp @s[scores={pn=3}] 89 21 3 45 0
execute if score map q matches 5 run tp @s[scores={pn=4}] 65 21 27 -135 0
execute if score map q matches 5 run tp @s[gamemode=spectator] 75 32 15
execute if score map q matches 5 run tp @s[gamemode=spectator] 75 32 15 facing entity @r[tag=alive]

execute if score map q matches 13 run tp @s[scores={pn=1}] 95 29 1 -45 0
execute if score map q matches 13 run tp @s[scores={pn=2}] 125 29 31 135 0
execute if score map q matches 13 run tp @s[scores={pn=3}] 125 29 1 45 0
execute if score map q matches 13 run tp @s[scores={pn=4}] 95 29 31 -135 0
execute if score map q matches 13 run tp @s[gamemode=spectator] 110 30 16
execute if score map q matches 13 run tp @s[gamemode=spectator] 110 30 16 facing entity @r[tag=alive]
execute if score map q matches 13 run effect give @s[gamemode=spectator] night_vision 99999 0 true

execute if score map q matches 14 run tp @s[scores={pn=1}] 141 28 16 -45 0
execute if score map q matches 14 run tp @s[scores={pn=2}] 160 28 40 135 0
execute if score map q matches 14 run tp @s[scores={pn=3}] 160 28 16 45 0
execute if score map q matches 14 run tp @s[scores={pn=4}] 141 28 40 -135 0
execute if score map q matches 14 run tp @s[gamemode=spectator] 151.0 32 27.0
execute if score map q matches 14 run tp @s[gamemode=spectator] 151.0 32 27.0 facing entity @r[tag=alive]

execute if score map q matches 15 run tp @s[scores={pn=1}] 100 30 40 -45 0
execute if score map q matches 15 run tp @s[scores={pn=2}] 126 30 66 135 0
execute if score map q matches 15 run tp @s[scores={pn=3}] 126 30 40 45 0
execute if score map q matches 15 run tp @s[scores={pn=4}] 100 30 66 -135 0
execute if score map q matches 15 run tp @s[gamemode=spectator] 113 17 53
execute if score map q matches 15 run tp @s[gamemode=spectator] 113 17 53 facing entity @r[tag=alive]

scoreboard players set @s qdeath 0
