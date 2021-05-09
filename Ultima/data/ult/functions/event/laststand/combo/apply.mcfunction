scoreboard players add @s laststand.level 1
scoreboard players set @s event 40

execute if score @s laststand.level matches 1 run attribute @s generic.attack_speed base set 4.2
execute if score @s laststand.level matches 2 run attribute @s generic.attack_speed base set 4.4
execute if score @s laststand.level matches 3 run attribute @s generic.attack_speed base set 4.6
execute if score @s laststand.level matches 4 run attribute @s generic.attack_speed base set 4.8
execute if score @s laststand.level matches 5 run attribute @s generic.attack_speed base set 5.0
execute if score @s laststand.level matches 6.. run attribute @s generic.attack_speed base set 5.2

execute if score @s laststand.level matches 1 run attribute @s generic.attack_damage base set 1.4
execute if score @s laststand.level matches 2 run attribute @s generic.attack_damage base set 1.8
execute if score @s laststand.level matches 3 run attribute @s generic.attack_damage base set 2.2
execute if score @s laststand.level matches 4 run attribute @s generic.attack_damage base set 2.6
execute if score @s laststand.level matches 5 run attribute @s generic.attack_damage base set 3.0
execute if score @s laststand.level matches 6.. run attribute @s generic.attack_damage base set 3.4
