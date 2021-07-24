execute at @s run playsound item.armor.equip_netherite master @a[tag=watching] ~ ~ ~ 4
item replace entity @s armor.feet with netherite_boots{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.legs with netherite_leggings{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
item replace entity @s armor.head with netherite_helmet{Unbreakable: true, Enchantments: [{id: "protection", lvl: 2s}]}
scoreboard players set @s event 200
clear @s netherite_ingot
