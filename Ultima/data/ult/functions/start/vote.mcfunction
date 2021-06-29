function ult:settings/ender_chest/vote
execute as @e[tag=vote_station] store result score @s control at @s if entity @a[distance=..2]
tp @s @e[tag=vote_station, limit=1, scores={control=0}]
