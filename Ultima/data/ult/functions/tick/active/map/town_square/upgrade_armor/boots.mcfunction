clear @s netherite_ingot 1

title @s actionbar {"text": "Upgraded your boots!"}
clear @s diamond_boots
replaceitem entity @s armor.feet netherite_boots{Unbreakable: true}
execute at @s run playsound item.armor.equip_netherite master @a
