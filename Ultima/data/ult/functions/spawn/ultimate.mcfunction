loot replace entity @s hotbar.0 loot ult:ultimate/sword
loot replace entity @s hotbar.1 loot ult:ultimate/axe
loot replace entity @s hotbar.2 loot ult:ultimate/pickaxe
loot replace entity @s weapon.offhand loot ult:ultimate/shield
loot replace entity @s hotbar.8 loot ult:ultimate/food

effect give @s saturation 1 20 true
effect give @s hunger 3 199 true

execute at @s as @e[tag=chest.spawn, limit=2, sort=nearest] at @s run function ult:chest/common
