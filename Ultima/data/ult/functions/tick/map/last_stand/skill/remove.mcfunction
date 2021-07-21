tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " lost their skill.", "color": "dark_gray"}]
scoreboard players operation @s event.skill = event.skill.none const
function ult:tick/map/last_stand/skill/reset
