clear @s netherite_ingot 1

title @s actionbar {"text": "Upgraded your helmet!"}
clear @s diamond_helmet
replaceitem entity @s armor.head netherite_helmet{Unbreakable: true}
execute at @s run playsound item.armor.equip_netherite master @a
