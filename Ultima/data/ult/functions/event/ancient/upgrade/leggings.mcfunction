title @s actionbar {"text": "Upgraded your leggings!"}
clear @s diamond_leggings
replaceitem entity @s armor.legs netherite_leggings{Unbreakable: true, Enchantments: [{id: "minecraft:fire_protection", lvl: 2}]}
execute at @s run playsound item.armor.equip_netherite master @a
