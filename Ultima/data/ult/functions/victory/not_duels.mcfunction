# The winners are determined by who is alive (allowing for ties)
    title @a reset
    title @a times 5 50 5
    execute if entity @a[tag=alive] run title @a title [{"selector": "@a[tag=alive]", "color": "green"}, {"text": " wins!", "color": "green"}]
    execute unless entity @a[tag=alive] run title @a title {"text": "Nobody wins!", "color": "red"}
    execute as @a[tag=alive] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 8
    execute as @a[tag=!alive] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 8
    schedule function ult:reset 3s
