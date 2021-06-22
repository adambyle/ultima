title @s actionbar {"text": "Upgraded your chestplate!"}
clear @s diamond_chestplate
item replace entity @s armor.chest with netherite_chestplate{Unbreakable: true, Enchantments: [{id: "minecraft:fire_protection", lvl: 2}]}
execute at @s run playsound item.armor.equip_netherite master @a
