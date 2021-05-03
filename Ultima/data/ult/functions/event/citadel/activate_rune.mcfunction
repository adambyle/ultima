execute at @s run playsound item.trident.thunder master @s ~ ~ ~ 32 2

attribute @s generic.armor base set 3
attribute @s generic.movement_speed base set .1
attribute @s generic.attack_speed base set 4
attribute @s generic.attack_damage base set 1
attribute @s generic.max_health base set 20

scoreboard players set @s citadel.rune 0
execute store result score @s citadel.rune run data get entity @s SelectedItem.tag.citadel_rune
execute unless score @s citadel.rune matches 1.. store result score @s citadel.rune run data get entity @s Inventory[{Slot: -106b}].tag.citadel_rune
execute if score @s citadel.rune matches 1 run attribute @s generic.movement_speed base set 0.13
execute if score @s citadel.rune matches 1 run attribute @s generic.attack_speed base set 4.4
execute if score @s citadel.rune matches 2 run attribute @s generic.max_health base set 28
execute if score @s citadel.rune matches 2 run effect give @s instant_health 1 1 true
execute if score @s citadel.rune matches 3 run attribute @s generic.attack_damage base set 3
execute if score @s citadel.rune matches 4 run attribute @s generic.armor base set 9
execute if score @s citadel.rune matches 4 run attribute @s generic.armor_toughness base set 4

replaceitem entity @s[nbt={SelectedItem: {id: "minecraft:globe_banner_pattern"}}] weapon.mainhand air
replaceitem entity @s[nbt={Inventory: [{id: "minecraft:globe_banner_pattern", Slot: -106b}]}] weapon.offhand air
