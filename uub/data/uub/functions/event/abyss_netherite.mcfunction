tag @s add used_netherite
replaceitem entity @s armor.chest netherite_chestplate{Enchantments:[{id:"protection",lvl:4}],Unbreakable:1b}
replaceitem entity @s armor.legs netherite_leggings{Enchantments:[{id:"protection",lvl:4}],Unbreakable:1b}
execute at @s run playsound item.armor.equip_netherite master @s
scoreboard players set @s event_timer 300
