# Give weakness to wet players
    execute as @a[tag=player, tag=alive] at @s if block ~ ~ ~ water run effect give @s weakness 4

# Give oak planks to players on gold blocks
    execute as @a[tag=player, tag=alive, nbt={OnGround: true}] at @s if block ~ ~-1 ~ gold_block run scoreboard players remove @s event 1
    scoreboard players set @a[tag=player, tag=alive, nbt={OnGround: false}] event 7
    execute as @a[tag=player, tag=alive] at @s unless block ~ ~-1 ~ gold_block run scoreboard players set @s event 7
    execute as @a[tag=player, tag=alive, scores={event=..0}] run function ult:tick/map/bathhouse/give_block
