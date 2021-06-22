execute at @s run playsound item.armor.equip_netherite master @s
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
item replace entity @s armor.head with netherite_helmet{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
scoreboard players set @s event 200
clear @s netherite_ingot
