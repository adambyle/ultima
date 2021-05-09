tellraw @a [{"selector": "@s", "color": "gray"}, {"text": " lost their skill.", "color": "dark_gray"}]
scoreboard players set @s laststand.skill 0
function ult:event/laststand/skill/reset
