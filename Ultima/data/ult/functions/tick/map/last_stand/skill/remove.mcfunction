tellraw @a [{"text": "G: ", "color": "dark_gray"}, {"selector": "@s", "color": "white"}, {"text": " lost their skill.", "color": "gray"}]
scoreboard players operation @s event.skill = event.skill.none const
function ult:tick/map/last_stand/skill/reset
