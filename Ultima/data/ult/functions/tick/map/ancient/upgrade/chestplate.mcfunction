title @s actionbar {"text": "Upgraded your chestplate!"}
clear @s diamond_chestplate
item replace entity @s armor.chest with netherite_chestplate{Enchantments: [{id: "minecraft:fire_protection", lvl: 2s}], Unbreakable: true}
execute at @s run playsound item.armor.equip_netherite master @a[tag=watching]
