execute at @s run playsound item.armor.equip_diamond master @s
item replace entity @s armor.feet with diamond_boots{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2}]}
item replace entity @s armor.legs with diamond_leggings{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2}]}
item replace entity @s armor.chest with diamond_chestplate{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2}]}
item replace entity @s armor.head with diamond_helmet{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2}]}
scoreboard players set @s event -1
