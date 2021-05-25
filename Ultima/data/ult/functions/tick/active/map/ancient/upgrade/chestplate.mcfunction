title @s actionbar {"text": "Upgraded your chestplate!"}
clear @s diamond_chestplate
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable: true, Enchantments: [{id: "minecraft:fire_protection", lvl: 2}]}
execute at @s run playsound item.armor.equip_netherite master @a
