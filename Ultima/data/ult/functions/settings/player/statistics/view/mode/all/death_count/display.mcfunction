execute store result score .type var run data get storage ult:temp SubArray[0].id
execute store result score .count var run data get storage ult:temp SubArray[0].count

execute if score .type var matches 0 run data modify storage ult:temp Category set value '"ERROR: "'

execute if score .type var matches 1 run data modify storage ult:temp Category set value '"Slain by Player: "'
execute if score .type var matches 2 run data modify storage ult:temp Category set value '"Knocked Into Pit by Player: "'
execute if score .type var matches 3 run data modify storage ult:temp Category set value '"Fished Into Pit by Player: "'
execute if score .type var matches 4 run data modify storage ult:temp Category set value '"Shot by Player: "'
execute if score .type var matches 5 run data modify storage ult:temp Category set value '"Splashed With Potion by Player: "'
execute if score .type var matches 6 run data modify storage ult:temp Category set value '"Blown Up by Player: "'
execute if score .type var matches 7 run data modify storage ult:temp Category set value '"Slain by Player While Burning: "'
execute if score .type var matches 8 run data modify storage ult:temp Category set value '"Slain by Player While Freezing: "'

execute if score .type var matches -1 run data modify storage ult:temp Category set value '"Self-Destruct by Unknown Cause: "'
execute if score .type var matches -2 run data modify storage ult:temp Category set value '"Self-Destruct by Pitfall: "'
execute if score .type var matches -3 run data modify storage ult:temp Category set value '"Self-Destruct by Pitfall While Fishing: "'
execute if score .type var matches -4 run data modify storage ult:temp Category set value '"Self-Destruct by Shooting: "'
execute if score .type var matches -5 run data modify storage ult:temp Category set value '"Self-Destruct by Splash Potion: "'
execute if score .type var matches -6 run data modify storage ult:temp Category set value '"Self-Destruct by Explosion: "'
execute if score .type var matches -7 run data modify storage ult:temp Category set value '"Self-Destruct by Burning: "'
execute if score .type var matches -8 run data modify storage ult:temp Category set value '"Self-Destruct by Freezing: "'

scoreboard players set .const var 100
scoreboard players operation .num var = .count var
scoreboard players operation .num var *= .const var
scoreboard players operation .num var /= .deaths var
item modify entity @s enderchest.15 ult:stats/view/kd_entry

data remove storage ult:temp SubArray[0]
execute if data storage ult:temp SubArray[0] run function ult:settings/player/statistics/view/mode/all/death_count/display
