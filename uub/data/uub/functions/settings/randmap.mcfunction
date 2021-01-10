scoreboard objectives add v dummy

scoreboard players set manor v 1
scoreboard players set woodlands v 1
scoreboard players set dungeon v 1
scoreboard players set abyss v 1
scoreboard players set citadel v 1
scoreboard players set reflect v 1
scoreboard players set dracula v 1
scoreboard players set avanto v 1
scoreboard players set total v 1

scoreboard players set map q 0

function uub:settings/vote/tally/decrement
function uub:settings/vote/assign

kill @e[tag=v]
