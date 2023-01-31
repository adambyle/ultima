#execute if block 2 22 17 air run setblock 2 22 17 stone
#execute if block 18 23 16 air run setblock 18 23 16 stone
#execute if block 18 27 16 air run setblock 18 27 16 stone
#execute if block 5 33 5 air run setblock 5 33 5 stone
#execute if block 25 30 3 air run setblock 25 30 3 stone
#execute if block 23 30 14 air run setblock 23 30 14 stone
#execute if block 27 32 24 air run setblock 27 32 24 stone
#execute if block 0 31 18 air run setblock 0 31 18 stone

# Tally diamonds
    execute as @a[scores={event.diamond=1..}] run function ult:tick/map/permafrost/mine_diamonds
    execute as @a[tag=player, tag=alive] store result score @s var run clear @s diamond 0
    execute as @a[scores={var=4..}, tag=player, tag=alive] run function ult:tick/map/permafrost/diamond_boots

# Spawn new diamonds
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 2 22 17 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 18 23 16 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 18 27 16 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 5 33 5 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 25 30 3 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 23 30 14 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 27 32 24 diamond_ore
    execute if predicate ult:maps/permafrost/generate_diamond run setblock 0 31 18 diamond_ore

# Deal with fishing rod bobbers
    scoreboard players add @e[type=fishing_bobber] event 1
    kill @e[type=fishing_bobber, scores={event=100..}]

# Deal with snowballs
    execute as @e[type=snowball, tag=!converted] at @s run function ult:tick/map/permafrost/snowball

# Cold water
    scoreboard players set @a[tag=player, tag=alive, scores={event=..-1}] event 0
    execute as @a[tag=player, tag=alive] at @s if block ~ ~ ~ water run scoreboard players add @s event 4
    execute as @a[tag=player, tag=alive, scores={event=1..}] at @s unless block ~ ~ ~ water run scoreboard players remove @s event 1
    execute as @a[tag=player, tag=alive, nbt=!{ActiveEffects: [{Id: 20}]}] at @s if block ~ ~ ~ water run effect give @s wither 99999 1 true
    effect clear @a[tag=player, tag=alive, scores={event=0}] wither
