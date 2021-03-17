# High altitude players will freeze to death
scoreboard players add @a[tag=player, tag=alive, scores={altitude=30..}] event 1
scoreboard players remove @a[tag=player, tag=alive, scores={altitude=..29, event=1..}] event 1
tellraw @a[tag=player, tag=alive, scores={altitude=30.., event=100}] {"text": "You are going to freeze to death if you stay up here much longer!", "color": "aqua", "italic": true}
effect give @a[scores={event=200..}, nbt=!{ActiveEffects: [{Id: 20b}]}] wither 2
