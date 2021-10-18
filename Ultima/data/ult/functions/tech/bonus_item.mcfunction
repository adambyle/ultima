execute if score .bonus_countdown control matches ..60 run scoreboard players remove .bonus_countdown control 1
execute if score .bonus_countdown control matches 61.. if predicate ult:coin_flip run scoreboard players remove .bonus_countdown control 1

execute if score .bonus_countdown control matches 60 run function ult:tech/bonus_item/countdown
execute if score .bonus_countdown control matches 40 run function ult:tech/bonus_item/countdown
execute if score .bonus_countdown control matches 20 run function ult:tech/bonus_item/countdown
execute if score .bonus_countdown control matches 0 run function ult:tech/bonus_item/spawn
