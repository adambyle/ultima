# The winners are determined by who is alive (allowing for ties)
    title @a reset
    title @a times 5 50 5
    execute if entity @a[tag=alive] run title @a title [{"selector": "@a[tag=alive]", "color": "#90BE6D", "bold": true}, {"text": " wins!"}]
    execute if entity @a[tag=alive] run tellraw @a [{"text": "G: ", "color": "dark_gray"}, {"selector": "@a[tag=alive]", "color": "#90BE6D", "bold": true}, {"text": " wins!"}]
    execute unless entity @a[tag=alive] run title @a title {"text": "Nobody wins!", "color": "#F3722C", "bold": true}
    execute unless entity @a[tag=alive] run tellraw @a [{"text": "G: ", "color": "dark_gray"}, {"text": "Nobody wins!", "color": "#F3722C", "bold": true}]
    execute as @a[tag=alive] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 8
    execute as @a[tag=player, tag=!alive] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 8
    schedule function ult:reset 3s
