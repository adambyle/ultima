# If the boss has not been hit for a while, it can heal
execute if score @r[team=boss] dmg matches 1.. run scoreboard players set #timeout pseudo_health 150
execute if score @r[team=boss] dmg matches 0 run scoreboard players remove #timeout pseudo_health 1
execute if score #timeout pseudo_health matches ..0 run scoreboard players add @r[team=boss] pseudo_health 1
execute if score #timeout pseudo_health matches ..0 run scoreboard players set #timeout pseudo_health 2

# If the boss loses health, alter the bossbar accordingly
execute store result bossbar uub:boss value run scoreboard players operation @a[team=boss] pseudo_health -= @r[team=boss] dmg
effect give @a[team=boss,scores={dmg=1..}] instant_health 1 3 true
execute as @a[team=boss,scores={pseudo_health=..0}] run function uub:victory/fighters
execute as @a[team=boss,scores={bool.die=1..}] run function uub:victory/fighters

execute store result score #temp pseudo_health run bossbar get uub:boss max
execute if score @r[team=boss] pseudo_health > #temp pseudo_health run scoreboard players operation @r[team=boss] pseudo_health = #temp pseudo_health

# Set the health displays
scoreboard players operation @a[team=boss] display_health = @r[team=boss] pseudo_health
scoreboard players set #constant _var 10
scoreboard players operation @a[team=boss] display_health /= #constant _var
execute as @a[team=fighters] run scoreboard players operation @s display_health = @s health

# Test for boss victory
execute if entity @a[team=boss] unless entity @a[team=fighters,scores={score=1..}] run function uub:victory/boss
