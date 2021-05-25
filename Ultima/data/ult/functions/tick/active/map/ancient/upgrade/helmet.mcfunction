title @s actionbar {"text": "Upgraded your helmet!"}
clear @s diamond_helmet
replaceitem entity @s armor.head netherite_helmet{Unbreakable: true, Enchantments: [{id: "minecraft:fire_protection", lvl: 2}]}
execute at @s run playsound item.armor.equip_netherite master @a
