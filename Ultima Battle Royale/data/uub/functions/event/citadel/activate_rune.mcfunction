execute at @s run playsound item.trident.thunder master @s ~ ~ ~ 32 2

attribute @s generic.armor base set 3
attribute @s generic.movement_speed base set .1
attribute @s generic.attack_speed base set 4
attribute @s generic.attack_damage base set 1
attribute @s generic.max_health base set 20

execute store result score @s citadel_rune run data get entity @s SelectedItem.tag.citadel_rune
execute if score @s citadel_rune matches 1 run attribute @s generic.movement_speed base set 0.14
execute if score @s citadel_rune matches 1 run attribute @s generic.attack_speed base set 5.5
execute if score @s citadel_rune matches 2 run attribute @s generic.max_health base set 26
execute if score @s citadel_rune matches 2 run effect give @s instant_health 1 1 true
execute if score @s citadel_rune matches 3 run attribute @s generic.attack_damage base set 3
execute if score @s citadel_rune matches 4 run attribute @s generic.armor base set 9
execute if score @s citadel_rune matches 4 run attribute @s generic.armor_toughness base set 4

replaceitem entity @s weapon.mainhand air
