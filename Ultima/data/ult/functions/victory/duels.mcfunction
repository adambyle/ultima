# Queue the next player
    execute if score .total_players control matches 3.. as @a[tag=player, scores={queue=1}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 2
    execute if score .total_players control matches 3.. run tellraw @a[tag=chat.g.e] [{"text": "G: ", "color": "dark_gray"}, {"text": "Next fighter: ", "color": "#577590"}, {"selector": "@a[tag=player, scores={queue=1}]", "color": "white"}]
