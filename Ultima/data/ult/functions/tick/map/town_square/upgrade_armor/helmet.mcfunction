clear @s netherite_ingot 1

title @s actionbar {"text": "Upgraded your helmet!"}
clear @s diamond_helmet
item replace entity @s armor.head with netherite_helmet{Unbreakable: true}
execute at @s run playsound item.armor.equip_netherite master @a[tag=watching]
