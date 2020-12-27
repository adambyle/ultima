replaceitem entity @s hotbar.0 diamond_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2}]}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]}
replaceitem entity @s armor.feet diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]}
replaceitem entity @s hotbar.1 bow{Unbreakable:1b}
replaceitem entity @s inventory.0 tipped_arrow{Potion:"harming"} 16
replaceitem entity @s hotbar.7 netherite_ingot{display:{Name:'"Throw me!"',Lore:['"Replaces your chest slot with a"','"Netherite Chestplate temporarily."']}}
replaceitem entity @s hotbar.8 potion{Potion:"water",CustomPotionEffects:[{Id:25b,Duration:50,Amplifier:3}],display:{Name:'{"text": "Potion of Levitation","italic": false}'}}

effect give @s instant_health 1 3 true

tag @s remove used_netherite
