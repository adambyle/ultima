execute at @s run playsound item.armor.equip_diamond master @s
replaceitem entity @s armor.feet diamond_boots{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b,Enchantments: [{id: "protection",lvl: 2}]}
scoreboard players set @s event -1
