tp @a[tag=dead_boss,gamemode=!spectator] @e[tag=boss_death,limit=1]
execute as @e[tag=boss_death] at @s run tp @s ~ ~0.02 ~
execute at @a[tag=dead_boss,gamemode=!spectator] run particle poof ~ ~1 ~ 0 0.2 0 0.2 1

scoreboard players remove #timeout game_state 1
execute if score #timeout game_state matches 0 as @a[tag=!dead_boss,gamemode=adventure] at @s run playsound entity.player.levelup master @s
execute if score #timeout game_state matches 0 at @a[tag=dead_boss] run particle poof ~ ~1 ~ 0 0.2 0 0.4 50
execute if score #timeout game_state matches 0 run gamemode spectator @a[tag=dead_boss]
