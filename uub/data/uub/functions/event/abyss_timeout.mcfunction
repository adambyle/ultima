tag @s add used_netherite
replaceitem entity @s armor.chest diamond_chestplate{Enchantments:[{id:"protection",lvl:4}],Unbreakable:1b}
replaceitem entity @s armor.legs diamond_leggings{Enchantments:[{id:"protection",lvl:4}],Unbreakable:1b}
execute at @s run playsound item.armor.equip_diamond master @s
scoreboard players set @s event_timer -1
