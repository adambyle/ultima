execute if score manor v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","manor"]}
execute if score woodlands v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","woodlands"]}
execute if score dungeon v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","dungeon"]}
execute if score abyss v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","abyss"]}
execute if score citadel v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","citadel"]}
execute if score reflect v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","reflect"]}
execute if score dracula v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","dracula"]}
execute if score avanto v matches 1.. run summon armor_stand 0 0 0 {Tags:["v","avanto"]}

scoreboard players remove manor v 1
scoreboard players remove woodlands v 1
scoreboard players remove dungeon v 1
scoreboard players remove abyss v 1
scoreboard players remove citadel v 1
scoreboard players remove reflect v 1
scoreboard players remove dracula v 1
scoreboard players remove avanto v 1
scoreboard players remove total v 1

execute if score total v matches 1.. run function uub:settings/vote/tally/decrement
