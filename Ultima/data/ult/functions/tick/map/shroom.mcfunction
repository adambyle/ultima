# Center: 13 20 47

# Summon candidates for shroom spawning
    execute if predicate ult:maps/shroom/spawn_shroom run summon marker 5 20 47 {Tags: ["shroom_spawner", "warped"]}
    execute if predicate ult:maps/shroom/spawn_shroom run summon marker 21 20 47 {Tags: ["shroom_spawner", "crimson"]}
    execute if predicate ult:maps/shroom/spawn_shroom run summon marker 13 20 39 {Tags: ["shroom_spawner", "red"]}
    execute if predicate ult:maps/shroom/spawn_shroom run summon marker 13 20 55 {Tags: ["shroom_spawner", "brown"]}

# Randomize shroom position and place
    execute as @e[tag=shroom_spawner] at @s run spreadplayers ~ ~ 0 20 under 22 false @s
    execute positioned 13 20 47 run kill @e[tag=shroom_spawner, distance=20..]
    execute as @e[tag=shroom_spawner] at @s if block ~ ~ ~ air run function ult:tick/map/shroom/spawn_shroom
    kill @e[tag=shroom_spawner]

# Give players shrooms
    execute as @a[tag=player, tag=alive, scores={event.sh.brown=1..}, tag=!collected_mushroom] run function ult:tick/map/shroom/collected
    execute as @a[tag=player, tag=alive, scores={event.sh.red=1..}, tag=!collected_mushroom] run function ult:tick/map/shroom/collected
    execute as @a[tag=player, tag=alive, scores={event.sh.crimson=1..}, tag=!collected_mushroom] run function ult:tick/map/shroom/collected
    execute as @a[tag=player, tag=alive, scores={event.sh.warped=1..}, tag=!collected_mushroom] run function ult:tick/map/shroom/collected
    give @a[tag=player, tag=alive, scores={event.sh.brown=1..}] brown_mushroom 1
    give @a[tag=player, tag=alive, scores={event.sh.red=1..}] red_mushroom 1
    give @a[tag=player, tag=alive, scores={event.sh.crimson=1..}] crimson_fungus 1
    give @a[tag=player, tag=alive, scores={event.sh.warped=1..}] warped_fungus 1

# Shroom crouch detection
    execute as @a[tag=player, tag=alive] if score @s crouch_mode = crouch_mode.crouch_pressed const run function ult:tick/map/shroom/consumption_test
