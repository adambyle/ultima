title @s actionbar {"text": "Upgraded your helmet!"}
clear @s diamond_helmet
item replace entity @s armor.head with netherite_helmet{Unbreakable: true, Enchantments: [{id: "minecraft:fire_protection", lvl: 2s}]}
execute at @s run playsound item.armor.equip_netherite master @a
