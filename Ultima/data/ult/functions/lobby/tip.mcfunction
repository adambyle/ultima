scoreboard players set .tip var 0
execute if predicate ult:coin_flip run scoreboard players add .tip var 1
execute if predicate ult:coin_flip run scoreboard players add .tip var 2
execute if predicate ult:coin_flip run scoreboard players add .tip var 4
execute if predicate ult:coin_flip run scoreboard players add .tip var 8
execute if predicate ult:coin_flip run scoreboard players add .tip var 16
execute if predicate ult:coin_flip run scoreboard players add .tip var 32


execute if score .tip var matches 0 run data modify block ~ ~ ~ Text2 set value '"Set preferred"'
execute if score .tip var matches 0 run data modify block ~ ~ ~ Text3 set value '"pronouns in the"'
execute if score .tip var matches 0 run data modify block ~ ~ ~ Text4 set value '"the Ender Chest."'

execute if score .tip var matches 1 run data modify block ~ ~ ~ Text2 set value '"Organize your"'
execute if score .tip var matches 1 run data modify block ~ ~ ~ Text3 set value '"hotbar in the"'
execute if score .tip var matches 1 run data modify block ~ ~ ~ Text4 set value '"Ender Chest."'

execute if score .tip var matches 2 run data modify block ~ ~ ~ Text2 set value '"In Brawl, a"'
execute if score .tip var matches 2 run data modify block ~ ~ ~ Text3 set value '"spawn-kill is"'
execute if score .tip var matches 2 run data modify block ~ ~ ~ Text4 set value '"only 1 point."'

execute if score .tip var matches 3 run data modify block ~ ~ ~ Text2 set value '"Reduce chat"'
execute if score .tip var matches 3 run data modify block ~ ~ ~ Text3 set value '"clutter in the"'
execute if score .tip var matches 3 run data modify block ~ ~ ~ Text4 set value '"Ender Chest."'

execute if score .tip var matches 4 run data modify block ~ ~ ~ Text2 set value '"Check up on"'
execute if score .tip var matches 4 run data modify block ~ ~ ~ Text3 set value '"your stats in"'
execute if score .tip var matches 4 run data modify block ~ ~ ~ Text4 set value '"the Ender Chest."'

execute if score .tip var matches 5 run data modify block ~ ~ ~ Text2 set value '"Pay attention"'
execute if score .tip var matches 5 run data modify block ~ ~ ~ Text3 set value '"to the map\'s"'
execute if score .tip var matches 5 run data modify block ~ ~ ~ Text4 set value '"attack speed."'

execute if score .tip var matches 6 run data modify block ~ ~ ~ Text2 set value '"You can choose"'
execute if score .tip var matches 6 run data modify block ~ ~ ~ Text3 set value '"to randomize or"'
execute if score .tip var matches 6 run data modify block ~ ~ ~ Text4 set value '"vote for maps."'

execute if score .tip var matches 7 run data modify block ~ ~ ~ Text2 set value '"The biggest"'
execute if score .tip var matches 7 run data modify block ~ ~ ~ Text3 set value '"threat in the"'
execute if score .tip var matches 7 run data modify block ~ ~ ~ Text4 set value '"game will glow."'

execute if score .tip var matches 8 run data modify block ~ ~ ~ Text2 set value '"Report issues"'
execute if score .tip var matches 8 run data modify block ~ ~ ~ Text3 set value '"on Github!"'
execute if score .tip var matches 8 run data modify block ~ ~ ~ Text4 set value '""'

execute if score .tip var matches 9 run data modify block ~ ~ ~ Text2 set value '"The Abyss deals"'
execute if score .tip var matches 9 run data modify block ~ ~ ~ Text3 set value '"instant death to"'
execute if score .tip var matches 9 run data modify block ~ ~ ~ Text4 set value '"its victims."'

execute if score .tip var matches 10 run data modify block ~ ~ ~ Text2 set value '"Don\'t forget"'
execute if score .tip var matches 10 run data modify block ~ ~ ~ Text3 set value '"about the bow"'
execute if score .tip var matches 10 run data modify block ~ ~ ~ Text4 set value '"in Manor."'

execute if score .tip var matches 11 run data modify block ~ ~ ~ Text2 set value '"Restock arrows"'
execute if score .tip var matches 11 run data modify block ~ ~ ~ Text3 set value '"in the Woodlands"'
execute if score .tip var matches 11 run data modify block ~ ~ ~ Text4 set value '"treehouse."'

execute if score .tip var matches 12 run data modify block ~ ~ ~ Text2 set value '"Woodlands\' tall"'
execute if score .tip var matches 12 run data modify block ~ ~ ~ Text3 set value '"grass shields you"'
execute if score .tip var matches 12 run data modify block ~ ~ ~ Text4 set value '"from the sword."'

execute if score .tip var matches 13 run data modify block ~ ~ ~ Text2 set value '"Heal potions on"'
execute if score .tip var matches 13 run data modify block ~ ~ ~ Text3 set value '"the bottom floor"'
execute if score .tip var matches 13 run data modify block ~ ~ ~ Text4 set value '"in Dungeon."'

execute if score .tip var matches 14 run data modify block ~ ~ ~ Text2 set value '"You can only"'
execute if score .tip var matches 14 run data modify block ~ ~ ~ Text3 set value '"add one boost in"'
execute if score .tip var matches 14 run data modify block ~ ~ ~ Text4 set value '"Dungeon."'

execute if score .tip var matches 15 run data modify block ~ ~ ~ Text2 set value '"The Levitation"'
execute if score .tip var matches 15 run data modify block ~ ~ ~ Text3 set value '"potion in Abyss"'
execute if score .tip var matches 15 run data modify block ~ ~ ~ Text4 set value '"affects all near."'

execute if score .tip var matches 16 run data modify block ~ ~ ~ Text2 set value '"Netherite stops"'
execute if score .tip var matches 16 run data modify block ~ ~ ~ Text3 set value '"knockback; stay"'
execute if score .tip var matches 16 run data modify block ~ ~ ~ Text4 set value '"out of the Abyss."'

execute if score .tip var matches 17 run data modify block ~ ~ ~ Text2 set value '"Non-spawn-kills"'
execute if score .tip var matches 17 run data modify block ~ ~ ~ Text3 set value '"in Brawl are 2"'
execute if score .tip var matches 17 run data modify block ~ ~ ~ Text4 set value '"points each."'

execute if score .tip var matches 18 run data modify block ~ ~ ~ Text2 set value '"Prepare to fight"'
execute if score .tip var matches 18 run data modify block ~ ~ ~ Text3 set value '"every person to"'
execute if score .tip var matches 18 run data modify block ~ ~ ~ Text4 set value '"win in Royale."'

execute if score .tip var matches 19 run data modify block ~ ~ ~ Text2 set value '"You can only apply"'
execute if score .tip var matches 19 run data modify block ~ ~ ~ Text3 set value '"one Citadel rune"'
execute if score .tip var matches 19 run data modify block ~ ~ ~ Text4 set value '"at a time."'

execute if score .tip var matches 20 run data modify block ~ ~ ~ Text2 set value '"Watch and listen"'
execute if score .tip var matches 20 run data modify block ~ ~ ~ Text3 set value '"for runes at the"'
execute if score .tip var matches 20 run data modify block ~ ~ ~ Text4 set value '"center of Citadel."'

execute if score .tip var matches 21 run data modify block ~ ~ ~ Text2 set value '"Crouching"'
execute if score .tip var matches 21 run data modify block ~ ~ ~ Text3 set value '"activates most"'
execute if score .tip var matches 21 run data modify block ~ ~ ~ Text4 set value '"items."'

execute if score .tip var matches 22 run data modify block ~ ~ ~ Text2 set value '"Some items work"'
execute if score .tip var matches 22 run data modify block ~ ~ ~ Text3 set value '"in the offhand."'
execute if score .tip var matches 22 run data modify block ~ ~ ~ Text4 set value '"See Ender Chest."'

execute if score .tip var matches 23 run data modify block ~ ~ ~ Text2 set value '"Items bounce"'
execute if score .tip var matches 23 run data modify block ~ ~ ~ Text3 set value '"off the ceiling."'
execute if score .tip var matches 23 run data modify block ~ ~ ~ Text4 set value '"(Even pearls!)"'

execute if score .tip var matches 24 run data modify block ~ ~ ~ Text2 set value '"The ender pearls"'
execute if score .tip var matches 24 run data modify block ~ ~ ~ Text3 set value '"in Citadel are"'
execute if score .tip var matches 24 run data modify block ~ ~ ~ Text4 set value '"limitless."'

execute if score .tip var matches 25 run data modify block ~ ~ ~ Text2 set value '"The crossbow"'
execute if score .tip var matches 25 run data modify block ~ ~ ~ Text3 set value '"is instant-reload"'
execute if score .tip var matches 25 run data modify block ~ ~ ~ Text4 set value '"in Citadel."'

execute if score .tip var matches 26 run data modify block ~ ~ ~ Text2 set value '"Enter and exit the"'
execute if score .tip var matches 26 run data modify block ~ ~ ~ Text3 set value '"mine tunnels in"'
execute if score .tip var matches 26 run data modify block ~ ~ ~ Text4 set value '"Wasteland."'

execute if score .tip var matches 27 run data modify block ~ ~ ~ Text2 set value '"Hunt the animals"'
execute if score .tip var matches 27 run data modify block ~ ~ ~ Text3 set value '"in Wasteland"'
execute if score .tip var matches 27 run data modify block ~ ~ ~ Text4 set value '"and Marooned."'

execute if score .tip var matches 28 run data modify block ~ ~ ~ Text2 set value '"The Smoke Bomb"'
execute if score .tip var matches 28 run data modify block ~ ~ ~ Text3 set value '"in Wasteland does"'
execute if score .tip var matches 28 run data modify block ~ ~ ~ Text4 set value '"area damage."'

execute if score .tip var matches 29 run data modify block ~ ~ ~ Text2 set value '"Make hasty escapes"'
execute if score .tip var matches 29 run data modify block ~ ~ ~ Text3 set value '"in Wasteland with"'
execute if score .tip var matches 29 run data modify block ~ ~ ~ Text4 set value '"Smoke Bomb."'

execute if score .tip var matches 30 run data modify block ~ ~ ~ Text2 set value '"Wasteland\'s"'
execute if score .tip var matches 30 run data modify block ~ ~ ~ Text3 set value '"crossbow fires"'
execute if score .tip var matches 30 run data modify block ~ ~ ~ Text4 set value '"powerful bolts."'

execute if score .tip var matches 31 run data modify block ~ ~ ~ Text2 set value '"Visit the Town"'
execute if score .tip var matches 31 run data modify block ~ ~ ~ Text3 set value '"Square\'s"'
execute if score .tip var matches 31 run data modify block ~ ~ ~ Text4 set value '"villagers."'

execute if score .tip var matches 32 run data modify block ~ ~ ~ Text2 set value '"Damage oppoents"'
execute if score .tip var matches 32 run data modify block ~ ~ ~ Text3 set value '"for more Town"'
execute if score .tip var matches 32 run data modify block ~ ~ ~ Text4 set value '"Square emeralds."'

execute if score .tip var matches 33 run data modify block ~ ~ ~ Text2 set value '"Powerful arcane"'
execute if score .tip var matches 33 run data modify block ~ ~ ~ Text3 set value '"skills in Last"'
execute if score .tip var matches 33 run data modify block ~ ~ ~ Text4 set value '"Stand: top floor."'

execute if score .tip var matches 34 run data modify block ~ ~ ~ Text2 set value '"Unbind Last Stand"'
execute if score .tip var matches 34 run data modify block ~ ~ ~ Text3 set value '"skills by blowing"'
execute if score .tip var matches 34 run data modify block ~ ~ ~ Text4 set value '"up their altars."'

execute if score .tip var matches 35 run data modify block ~ ~ ~ Text2 set value '"Land fast hits"'
execute if score .tip var matches 35 run data modify block ~ ~ ~ Text3 set value '"with Last Stand\'s"'
execute if score .tip var matches 35 run data modify block ~ ~ ~ Text4 set value '"Combonatrix."'

execute if score .tip var matches 36 run data modify block ~ ~ ~ Text2 set value '"Outmaneuver foes"'
execute if score .tip var matches 36 run data modify block ~ ~ ~ Text3 set value '"with Last Stand\'s"'
execute if score .tip var matches 36 run data modify block ~ ~ ~ Text4 set value '"Flurry Rush."'

execute if score .tip var matches 37 run data modify block ~ ~ ~ Text2 set value '"Ambush opponents"'
execute if score .tip var matches 37 run data modify block ~ ~ ~ Text3 set value '"with Last Stand\'s"'
execute if score .tip var matches 37 run data modify block ~ ~ ~ Text4 set value '"Backstabbing."'

execute if score .tip var matches 38 run data modify block ~ ~ ~ Text2 set value '"Crouch by Last"'
execute if score .tip var matches 38 run data modify block ~ ~ ~ Text3 set value '"Stand\'s altars to"'
execute if score .tip var matches 38 run data modify block ~ ~ ~ Text4 set value '"absorb the skill."'

execute if score .tip var matches 39 run data modify block ~ ~ ~ Text2 set value '"Mine for diamonds"'
execute if score .tip var matches 39 run data modify block ~ ~ ~ Text3 set value '"for special boots"'
execute if score .tip var matches 39 run data modify block ~ ~ ~ Text4 set value '"in Permafrost."'

execute if score .tip var matches 40 run data modify block ~ ~ ~ Text2 set value '"Mining in"'
execute if score .tip var matches 40 run data modify block ~ ~ ~ Text3 set value '"Permafrost heals"'
execute if score .tip var matches 40 run data modify block ~ ~ ~ Text4 set value '"you."'

execute if score .tip var matches 41 run data modify block ~ ~ ~ Text2 set value '"Avoid frigid water"'
execute if score .tip var matches 41 run data modify block ~ ~ ~ Text3 set value '"in Parmafrost."'
execute if score .tip var matches 41 run data modify block ~ ~ ~ Text4 set value '"(Cure with milk!)"'

execute if score .tip var matches 42 run data modify block ~ ~ ~ Text2 set value '"Start snowball"'
execute if score .tip var matches 42 run data modify block ~ ~ ~ Text3 set value '"fights in"'
execute if score .tip var matches 42 run data modify block ~ ~ ~ Text4 set value '"Permafrost."'

execute if score .tip var matches 43 run data modify block ~ ~ ~ Text2 set value '"Shroom\'s weapon"'
execute if score .tip var matches 43 run data modify block ~ ~ ~ Text3 set value '"upgrades don\'t"'
execute if score .tip var matches 43 run data modify block ~ ~ ~ Text4 set value '"work together."'

execute if score .tip var matches 44 run data modify block ~ ~ ~ Text2 set value '"Shroom\'s armor"'
execute if score .tip var matches 44 run data modify block ~ ~ ~ Text3 set value '"upgrades don\'t"'
execute if score .tip var matches 44 run data modify block ~ ~ ~ Text4 set value '"work together."'

execute if score .tip var matches 45 run data modify block ~ ~ ~ Text2 set value '"Crouch/jump"'
execute if score .tip var matches 45 run data modify block ~ ~ ~ Text3 set value '"on/under clay in"'
execute if score .tip var matches 45 run data modify block ~ ~ ~ Text4 set value '"the Reflection."'

execute if score .tip var matches 46 run data modify block ~ ~ ~ Text2 set value '"Fireworks spawn"'
execute if score .tip var matches 46 run data modify block ~ ~ ~ Text3 set value '"on the other side"'
execute if score .tip var matches 46 run data modify block ~ ~ ~ Text4 set value '"of the Reflection."'

execute if score .tip var matches 47 run data modify block ~ ~ ~ Text2 set value '"Dracula\'s Trident"'
execute if score .tip var matches 47 run data modify block ~ ~ ~ Text3 set value '"summons lightning"'
execute if score .tip var matches 47 run data modify block ~ ~ ~ Text4 set value '"when thrown."'

execute if score .tip var matches 48 run data modify block ~ ~ ~ Text2 set value '"Capture the"'
execute if score .tip var matches 48 run data modify block ~ ~ ~ Text3 set value '"Trident at"'
execute if score .tip var matches 48 run data modify block ~ ~ ~ Text4 set value '"Dracula\'s Castle."'

execute if score .tip var matches 49 run data modify block ~ ~ ~ Text2 set value '"Avoid high"'
execute if score .tip var matches 49 run data modify block ~ ~ ~ Text3 set value '"altitudes in"'
execute if score .tip var matches 49 run data modify block ~ ~ ~ Text4 set value '"Avanto."'

execute if score .tip var matches 50 run data modify block ~ ~ ~ Text2 set value '"Remove Strength"'
execute if score .tip var matches 50 run data modify block ~ ~ ~ Text3 set value '"with Boxing Ring\'s"'
execute if score .tip var matches 50 run data modify block ~ ~ ~ Text4 set value '"Powerball."'

execute if score .tip var matches 51 run data modify block ~ ~ ~ Text2 set value '"No weapons in"'
execute if score .tip var matches 51 run data modify block ~ ~ ~ Text3 set value '"Boxing Ring but"'
execute if score .tip var matches 51 run data modify block ~ ~ ~ Text4 set value '"your fists."'

execute if score .tip var matches 52 run data modify block ~ ~ ~ Text2 set value '"Mine for netherite"'
execute if score .tip var matches 52 run data modify block ~ ~ ~ Text3 set value '"in Ancient Mines."'
execute if score .tip var matches 52 run data modify block ~ ~ ~ Text4 set value '"(Look under...)"'

execute if score .tip var matches 53 run data modify block ~ ~ ~ Text2 set value '"Use Ancient Mines"'
execute if score .tip var matches 53 run data modify block ~ ~ ~ Text3 set value '"netherite by"'
execute if score .tip var matches 53 run data modify block ~ ~ ~ Text4 set value '"crouching."'

execute if score .tip var matches 54 run data modify block ~ ~ ~ Text2 set value '"You can upgrade"'
execute if score .tip var matches 54 run data modify block ~ ~ ~ Text3 set value '"your armor in"'
execute if score .tip var matches 54 run data modify block ~ ~ ~ Text4 set value '"Ancient Mines."'

execute if score .tip var matches 55 run data modify block ~ ~ ~ Text2 set value '"Your trident has"'
execute if score .tip var matches 55 run data modify block ~ ~ ~ Text3 set value '"Riptide in"'
execute if score .tip var matches 55 run data modify block ~ ~ ~ Text4 set value '"Marooned."'

execute if score .tip var matches 56 run data modify block ~ ~ ~ Text2 set value '"Stay in the"'
execute if score .tip var matches 56 run data modify block ~ ~ ~ Text3 set value '"center in The"'
execute if score .tip var matches 56 run data modify block ~ ~ ~ Text4 set value '"Hill."'

execute if score .tip var matches 57 run data modify block ~ ~ ~ Text2 set value '"Avoid the King of"'
execute if score .tip var matches 57 run data modify block ~ ~ ~ Text3 set value '"The Hill and their"'
execute if score .tip var matches 57 run data modify block ~ ~ ~ Text4 set value '"crossbow."'

execute if score .tip var matches 58 run data modify block ~ ~ ~ Text2 set value '"The golden plates"'
execute if score .tip var matches 58 run data modify block ~ ~ ~ Text3 set value '"of the Bathhouse"'
execute if score .tip var matches 58 run data modify block ~ ~ ~ Text4 set value '"provide blocks."'

execute if score .tip var matches 59 run data modify block ~ ~ ~ Text2 set value '"The Prismatica"'
execute if score .tip var matches 59 run data modify block ~ ~ ~ Text3 set value '"in Chasm fires"'
execute if score .tip var matches 59 run data modify block ~ ~ ~ Text4 set value '"fast beams."'

execute if score .tip var matches 60 run data modify block ~ ~ ~ Text2 set value '"Use your elytra"'
execute if score .tip var matches 60 run data modify block ~ ~ ~ Text3 set value '"with Launch Charms"'
execute if score .tip var matches 60 run data modify block ~ ~ ~ Text4 set value '"in Chasm."'

execute if score .tip var matches 61 run data modify block ~ ~ ~ Text2 set value '"Prismatica fires"'
execute if score .tip var matches 61 run data modify block ~ ~ ~ Text3 set value '"stronger after"'
execute if score .tip var matches 61 run data modify block ~ ~ ~ Text4 set value '"charge in Chasm."'

execute if score .tip var matches 62 run data modify block ~ ~ ~ Text2 set value '"Avoid the Lake"'
execute if score .tip var matches 62 run data modify block ~ ~ ~ Text3 set value '"of Souls in"'
execute if score .tip var matches 62 run data modify block ~ ~ ~ Text4 set value '"Chasm."'

execute if score .tip var matches 63 run data modify block ~ ~ ~ Text2 set value '"Getting a kill"'
execute if score .tip var matches 63 run data modify block ~ ~ ~ Text3 set value '"restores some or"'
execute if score .tip var matches 63 run data modify block ~ ~ ~ Text4 set value '"all of your health."'
