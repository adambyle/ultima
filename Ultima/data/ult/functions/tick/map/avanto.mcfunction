# High altitude players will freeze to death
    scoreboard players add @a[tag=alive, scores={altitude=30..}] event 1
    scoreboard players remove @a[tag=alive, scores={altitude=..29, event=1..}] event 1
    title @a[tag=alive, scores={altitude=30.., event=100}] actionbar {"text": "You are going to freeze to death if you stay up here much longer!", "color": "#F8961E", "italic": true}
    effect give @a[scores={event=200..}, nbt=!{ActiveEffects: [{Id: 20}]}] wither 2
