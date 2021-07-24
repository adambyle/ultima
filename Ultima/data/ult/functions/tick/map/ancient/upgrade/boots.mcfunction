title @s actionbar {"text": "Upgraded your boots!"}
clear @s diamond_boots
item replace entity @s armor.feet with netherite_boots{Unbreakable: true, Enchantments: [{id: "minecraft:fire_protection", lvl: 2s}]}
execute at @s run playsound item.armor.equip_netherite master @a[tag=watching]
