clear @a glass_bottle
execute as @a unless score @s gid = gid q run function uub:tick/invalid
execute as @a[team=play,tag=alive] run function uub:items/lost

execute as @a[scores={qdeath=2}] run function uub:tp
scoreboard players set @a[scores={qdeath=2}] qdeath 0
execute as @a[scores={qdeath=1},tag=alive,team=play] if score game q matches 1 run function uub:death

execute if score mode q matches 1 as @a[team=play,tag=!alive] run function uub:tick/tether

scoreboard players set i n 0
execute as @a[team=play] run scoreboard players add i n 1
execute unless score i n = pn q run tellraw @a {"text": "The game was forced to reset as a player left the server!","color": "red"}
execute unless score i n = pn q run function uub:load/reload

execute if score mode q matches 1 as @a[team=play,tag=alive] at @s run function uub:tick/special_effects/tether_sparkle
execute if score mode q matches 3 as @a[team=play,tag=alive] at @s run function uub:tick/special_effects/revenge_sparkle

scoreboard players add @a rot 10
execute as @a[scores={rot=360..}] run scoreboard players remove @s rot 360

execute as @a[scores={hp=..6},tag=!low] run function uub:death/low
tag @a[scores={hp=12..},tag=low] remove low

scoreboard players remove @a[scores={timer=1..},team=play] timer 1
execute as @a[scores={timer=0},team=play] run function uub:respawn

execute if score map q matches 4 run scoreboard players remove @a[scores={event_timer=1..},team=play] event_timer 1
execute if score map q matches 4 as @a[scores={event_timer=0},team=play] run function uub:event/abyss_timeout

execute if score map q matches 3 run effect clear @a[scores={dmg=1..}] invisibility
execute if score map q matches 3 run effect clear @a[scores={dmg=1..}] speed
execute if score map q matches 3 run effect clear @a[scores={dmg=1..}] resistance
execute if score map q matches 3 as @a[nbt={ActiveEffects:[{Id:14b}]}] run clear @s #uub:dungeon_armor
execute if score map q matches 3 as @a[nbt=!{ActiveEffects:[{Id:14b}]},nbt=!{Inventory:[{id:"minecraft:iron_chestplate"}]},team=play,tag=alive] run function uub:items/refill/dungeon_armor

execute positioned 46 27 42 if entity @a[team=play,tag=alive,distance=..2] unless score arrow_refill n matches 1 run function uub:event/woodlands_arrows
execute positioned 46 27 42 if entity @a[team=play,tag=alive,distance=..2] run scoreboard players set arrow_refill n 1
execute positioned 46 27 42 unless entity @a[team=play,tag=alive,distance=..2] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute positioned 46 27 42 unless entity @a[team=play,tag=alive,distance=..6] run schedule clear uub:event/woodlands_arrows
execute positioned 46 27 42 unless entity @a[team=play,tag=alive,distance=..6] run scoreboard players set arrow_refill n 0

execute unless score game q matches 2 if score map q matches 4 as @a[team=play,tag=alive,nbt=!{Inventory:[{id:"minecraft:netherite_ingot"}]},tag=!used_netherite] run function uub:event/abyss_netherite

scoreboard players operation @a kills -= goal q
effect clear @a[scores={kills=-2..},nbt={ActiveEffects:[{Id:14b}]}] glowing
execute if score mode q matches 3 run effect give @a[scores={kills=-2..},nbt=!{ActiveEffects:[{Id:14b}]}] glowing 1 0 true
scoreboard players operation @a kills += goal q

execute as @e[type=#arrows] at @s unless score @s pn matches 1.. run scoreboard players operation @s pn = @p[team=play,tag=alive] pn
execute as @e[type=trident] at @s unless score @s pn matches 1.. run scoreboard players operation @s pn = @p[team=play,tag=alive] pn
execute as @e[type=potion] at @s unless score @s pn matches 1.. run scoreboard players operation @s pn = @p[team=play,tag=alive] pn

scoreboard players set @a n 0
execute as @a[team=play,tag=alive] at @s if entity @e[type=!player,scores={pn=1..},sort=nearest,distance=..6,limit=1] run scoreboard players set @s n 1
execute as @a[team=play,tag=alive] at @s run scoreboard players operation @s dmg_source = @e[type=!player,sort=nearest,distance=..6,limit=1,scores={pn=1..}] pn
execute as @a[scores={took_dmg=1..},nbt=!{ActiveEffects:[{Id:19b}]},nbt=!{ActiveEffects:[{Id:20b}]}] run function uub:death/dmg_source
scoreboard players set @a dmg 0
scoreboard players set @a took_dmg 0
scoreboard players set @a[scores={n=0}] dmg_source 0
scoreboard players reset @a[team=spect] kills

execute as @e store result score @s n run data get entity @s Pos[1]
effect clear @a[scores={n=35..}] levitation
execute as @e[type=!player,scores={n=35..37},tag=!ricochet] run function uub:event/ricochet

execute if score map q matches 5 as @a[nbt=!{Inventory:[{id:"minecraft:ender_pearl"}]},team=play,tag=alive] run function uub:items/refill/citadel_pearl
execute as @a store result score @s n run data get entity @s Health
execute if score map q matches 5 positioned 77 23 15 run scoreboard players remove event_timer n 1
execute if score map q matches 5 positioned 77 23 15 if score event_timer n matches ..0 run function uub:event/citadel_rune
execute if score map q matches 5 as @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern"}}] at @s unless entity @a[team=play,tag=alive,distance=..4] unless block ~ ~-1 ~ diamond_block run kill @s
execute if score map q matches 5 positioned 70 28 8 run effect give @a[team=play,tag=alive,distance=..3,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 1
execute if score map q matches 5 positioned 84 28 22 run effect give @a[team=play,tag=alive,distance=..3,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 0
execute if score map q matches 5 positioned 70 28 22 run effect give @a[team=play,tag=alive,distance=..3,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 1
execute if score map q matches 5 positioned 84 28 8 run effect give @a[team=play,tag=alive,distance=..3,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 3 1
execute if score map q matches 5 positioned 78 23 1 as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text": "Delta Δ","italic": false}'}}}},distance=..1] run function uub:event/citadel_rune_consume
execute if score map q matches 5 positioned 76 23 29 as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text": "Sigma Σ","italic": false}'}}}},distance=..1] run function uub:event/citadel_rune_consume
execute if score map q matches 5 positioned 91 23 16 as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text": "Gamma Γ","italic": false}'}}}},distance=..1] run function uub:event/citadel_rune_consume
execute if score map q matches 5 positioned 63 23 14 as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text": "Phi Ψ","italic": false}'}}}},distance=..1] run function uub:event/citadel_rune_consume

execute if score map q matches 14 run data modify entity @e[type=trident,limit=1] Glowing set value 2b
execute if score map q matches 14 as @e[type=trident] run data modify entity @s Fire set value -1b
execute if score map q matches 14 as @e[type=trident,tag=noage] run data modify entity @s life set value 0s
execute if score map q matches 14 as @e[type=trident,nbt={life:300s}] run data modify entity @s life set value 1199
execute if score map q matches 14 as @e[type=trident,tag=channeled] at @s run give @p[team=play,tag=alive,distance=..1.5] trident{display:{Name:'"Dracula\'s Staff"'},Enchantments:[{id:"channeling",lvl:1}],Unbreakable:1b,AttributeModifiers:[{Amount:6,AttributeName:"minecraft:generic.attack_damage",Operation:0,Slot:"mainhand",UUID:[I;1062209350,1020756639,1047263184,1183598122],Name:"beeg"}]}
execute if score map q matches 14 as @e[type=trident,tag=channeled] at @s if entity @p[team=play,tag=alive,distance=..1.5] run kill @s
execute if score map q matches 14 as @e[type=trident,nbt={DealtDamage:1b},tag=!channeled] at @s run summon lightning_bolt
execute if score map q matches 14 as @e[type=trident,nbt={DealtDamage:1b},tag=!channeled] if predicate uub:3 run function uub:event/dracula_remove_trident
execute if score map q matches 14 as @e[type=trident,nbt={DealtDamage:1b},tag=!channeled] run tag @s add channeled
execute if score map q matches 14 unless entity @e[type=trident] unless entity @a[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players remove event_timer n 1
execute if score map q matches 14 if score event_timer n matches ..0 run function uub:event/dracula_trident
execute if score map q matches 14 if score thunder event_timer matches 1.. if predicate uub:4 run scoreboard players remove thunder event_timer 1
execute if score map q matches 14 if score thunder event_timer matches ..0 run summon lightning_bolt 150 53 6
execute if score map q matches 14 if score thunder event_timer matches ..0 run scoreboard players set thunder event_timer 40

execute if score map q matches 15 as @a store result score @s n run data get entity @s Pos[1]
execute if score map q matches 15 run tellraw @a[scores={event_timer=100..},tag=!high] ["",{"text": "It's frigid up here! Get down before you freeze to death.","color": "aqua","italic": true}]
execute if score map q matches 15 run tag @a remove high
execute if score map q matches 15 run execute as @a[scores={event_timer=..-1},team=play,tag=alive] run scoreboard players add @s event_timer 1
execute if score map q matches 15 run execute as @a[scores={n=30..,event_timer=0..99},team=play,tag=alive] run scoreboard players add @s event_timer 1
execute if score map q matches 15 run execute as @a[scores={n=..29,event_timer=1..},team=play,tag=alive] run scoreboard players remove @s event_timer 1
execute if score map q matches 15 run tag @a[scores={event_timer=100..},tag=!high,team=play,tag=alive] add high
execute if score map q matches 15 run tag @a[scores={event_timer=..99},tag=high,team=play,tag=alive] remove high
execute if score map q matches 15 run effect give @a[tag=high,nbt=!{ActiveEffects:[{Id:20b}]},team=play,tag=alive] wither 2 0 true
execute if score map q matches 15 unless score event_timer n matches 1.. run effect give @a[scores={n=30..,event_timer=0..},team=play,tag=alive] blindness 3 0 true
execute if score map q matches 15 run scoreboard players remove event_timer n 1

tag @a remove team_play
tag @a remove team_spect
tag @a[team=play] add team_play
tag @a[team=spect] add team_spect

execute as @a[team=play,nbt=!{EnderItems:[{id:"minecraft:lime_terracotta"}]},tag=menu.main] run trigger action set 5
execute as @a[team=spect,nbt=!{EnderItems:[{id:"minecraft:blue_terracotta"}]},tag=menu.main] run trigger action set 6

execute as @a[team=play,nbt=!{EnderItems:[{id:"minecraft:lime_terracotta"}]},tag=menu.main] run function uub:settings/main_menu
execute as @a[team=spect,nbt=!{EnderItems:[{id:"minecraft:blue_terracotta"}]},tag=menu.main] run function uub:settings/main_menu

execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p[team=spect] run gamemode spectator
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p[team=spect] run function uub:tp
execute positioned 45 31 -3 if block ~ ~ ~ polished_blackstone_pressure_plate[powered=true] as @p[team=spect] run setblock ~ ~ ~ polished_blackstone_pressure_plate[powered=false]

execute as @a[team=play,tag=alive] run function uub:tick/afk_test

execute as @a[team=spect,gamemode=adventure] at @s if entity @a[team=play,tag=alive,distance=..6] run function uub:tick/action/tplobby
