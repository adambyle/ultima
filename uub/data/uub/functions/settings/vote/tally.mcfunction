scoreboard objectives add v dummy

scoreboard players set manor v 0
scoreboard players set woodlands v 0
scoreboard players set dungeon v 0
scoreboard players set abyss v 0
scoreboard players set citadel v 0
scoreboard players set reflect v 0
scoreboard players set dracula v 0
scoreboard players set avanto v 0
scoreboard players set total v 0

execute as @a if score @s upvote matches 1 run scoreboard players add manor v 1
execute as @a if score @s upvote matches 2 run scoreboard players add woodlands v 1
execute as @a if score @s upvote matches 3 run scoreboard players add dungeon v 1
execute as @a if score @s upvote matches 4 run scoreboard players add abyss v 1
execute as @a if score @s upvote matches 5 run scoreboard players add citadel v 1
execute as @a if score @s upvote matches 6 run scoreboard players add reflect v 1
execute as @a if score @s upvote matches 7 run scoreboard players add dracula v 1
execute as @a if score @s upvote matches 8 run scoreboard players add avanto v 1
execute as @a if score @s upvote matches 1.. run scoreboard players add total v 1

scoreboard players set c n 2

execute as @a unless score @s downvote matches 1 run scoreboard players operation manor v *= c n
execute as @a unless score @s downvote matches 2 run scoreboard players operation woodlands v *= c n
execute as @a unless score @s downvote matches 3 run scoreboard players operation dungeon v *= c n
execute as @a unless score @s downvote matches 4 run scoreboard players operation abyss v *= c n
execute as @a unless score @s downvote matches 5 run scoreboard players operation citadel v *= c n
execute as @a unless score @s downvote matches 6 run scoreboard players operation reflect v *= c n
execute as @a unless score @s downvote matches 7 run scoreboard players operation dracula v *= c n
execute as @a unless score @s downvote matches 8 run scoreboard players operation avanto v *= c n
execute as @a run scoreboard players operation total v *= c n

function uub:settings/vote/tally/decrement
function uub:settings/vote/assign
