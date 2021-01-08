replaceitem entity @s armor.head leather_helmet{Unbreakable:1b,display:{color:16777215}}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b,display:{color:16777215}}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b,display:{color:16777215}}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1b,display:{color:16777215}}
replaceitem entity @s hotbar.0 stone_sword{Unbreakable:1b}
replaceitem entity @s hotbar.1 bow{Unbreakable:1b,Enchantments:[{id:"punch",lvl:1}]}
replaceitem entity @s inventory.0 tipped_arrow{Potion:"minecraft:strong_slowness"} 16
replaceitem entity @s hotbar.8 potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:8b,Duration:200,Amplifier:4b}],display:{Name:'{"text": "Potion of Leaping","italic": false}'}}
attribute @s generic.armor base set 8
execute if score map q matches 15 run scoreboard players set @s event_timer -200
