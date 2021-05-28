execute at @s run playsound item.armor.equip_netherite master @s
replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
scoreboard players set @s event 200
clear @s netherite_ingot
