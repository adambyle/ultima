clear @s netherite_ingot 1

title @s actionbar {"text": "Upgraded your leggings!"}
clear @s diamond_leggings
replaceitem entity @s armor.legs netherite_leggings{Unbreakable: true}
execute at @s run playsound item.armor.equip_netherite master @a
