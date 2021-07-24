# Find an open voting station and teleport there
    execute as @e[tag=vote_station] store result score @s control at @s if entity @a[distance=..2]
    execute if entity @e[tag=vote_station, scores={control=0}] run function ult:settings/player/vote
    execute unless entity @e[tag=vote_station, scores={control=0}] run tellraw @s [{"text": "S: ", "color": "dark_gray"}, {"text": "There are no open voting stations! Please wait for your friends to vote.", "color": "#F8961E"}]
    tp @s @e[limit=1, tag=vote_station, scores={control=0}]
