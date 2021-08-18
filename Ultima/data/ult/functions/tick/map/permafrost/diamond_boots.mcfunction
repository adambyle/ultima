clear @s diamond
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 4 0.75
item replace entity @s armor.feet with diamond_boots{Enchantments: [{id: "minecraft:feather_falling", lvl: 1s}], Unbreakable: true}
title @s actionbar "Got diamond boots!"
