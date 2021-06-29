scoreboard players operation @s event.skill = @e[sort=nearest, limit=1, tag=last_stand_skill] event.skill
execute if score @s event.skill matches 1 run tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " learned ", "color": "dark_gray"}, {"text": "Flurry Rush", "color": "dark_blue"}, {"text": ".", "color": "dark_gray"}]
execute if score @s event.skill matches 2 run tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " learned ", "color": "dark_gray"}, {"text": "Hot Pursuit", "color": "dark_blue"}, {"text": ".", "color": "dark_gray"}]
execute if score @s event.skill matches 3 run tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " learned ", "color": "dark_gray"}, {"text": "Combonatrix", "color": "dark_blue"}, {"text": ".", "color": "dark_gray"}]
execute if score @s event.skill matches 4 run tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " learned ", "color": "dark_gray"}, {"text": "Backstabbing", "color": "dark_blue"}, {"text": ".", "color": "dark_gray"}]

function ult:tick/active/map/last_stand/skill/reset

execute if score @s event.skill matches 2 run attribute @s generic.movement_speed base set 0.13
