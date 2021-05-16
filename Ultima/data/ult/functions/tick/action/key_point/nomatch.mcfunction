data modify storage ult:temp Player.Keys append from storage ult:temp Key

execute at @s run playsound ui.stonecutter.select_recipe master @s

tellraw @s {"text": "\nhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\n", "color": "red", "obfuscated": true, "bold": true}

execute if data storage ult:temp Key._ run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playGame run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing a game of Ultima", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playDuels run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing in Duels mode", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playRoyale run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing in Royale mode", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playBrawl run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing in Brawl mode", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playManor run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Manor map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playWoodlands run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Woodlands map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playDungeon run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Dungeon map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playAbyss run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Abyss map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playCitadel run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Citadel map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playWasteland run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Wasteland map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playTownSquare run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Town Square map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playLastStand run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Last Stand map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playPermafrost run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Permafrost map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playShroom run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Shroom map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playHellscape run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Hellscape map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playFrontier run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Frontier map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playReflection run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Reflection map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playDracula run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Dracula's Castle map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playAvanto run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Avanto map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playBoxing run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Boxing Ring map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playAncient run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Ancient Mines map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.playMarooned run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Playing the Marooned map", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.dieDuels run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Dying in Duels mode", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.dieBrawlNormal run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Dying in Brawl mode", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.dieBrawlAlone run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Self-Destruct", "color": "yellow", "bold": false}, "\n"]
execute if data storage ult:temp Key.dieRoyale run tellraw @s [{"text": "Key point! ", "color": "gold", "bold": true}, {"text": "Dying in Royale mode", "color": "yellow", "bold": false}, "\n"]

execute if data storage ult:temp Key._ run tellraw @s ""
execute if data storage ult:temp Key.playGame run tellraw @s "Ultima is a PvP game. The object is to eliminate all of your opponents. You will learn more about the specific game mode you've chosen the next time you play."
execute if data storage ult:temp Key.playDuels run tellraw @s "In Duels mode, you face another player one-on-one. With more than two people, you take turns fighting. Winner stays!"
execute if data storage ult:temp Key.playRoyale run tellraw @s "In Royale mode, the last man standing wins. You have to kill every other player in a row to win. If you die, all the players you've killed so far get to respawn!"
execute if data storage ult:temp Key.playBrawl run tellraw @s "In Brawl mode, up to four players are always in the arena at once! Try to come out on top in this frenzy for points. Avenging your death and not targeting players who just spawned will earn you the most points."
execute if data storage ult:temp Key.playManor run tellraw @s "The Manor map tests your skills in generic 1.9 combat. Bring everything you know about basic PvP to the table."
execute if data storage ult:temp Key.playWoodlands run tellraw @s "The Woodlands map rewards careful aim and 1.9-style combos. You can increase your supply of arrows in the treehouse."
execute if data storage ult:temp Key.playDungeon run tellraw @s "The Dungeon map provides you with an arsenal of useful potions. The Resilience potion makes you quick and gives you higher defense, and the Frenzying potion makes you hit faster and gives you a short amount of increased strength. Healing potions appear in the downstairs brewing stands occasionally."
execute if data storage ult:temp Key.playAbyss run tellraw @s "The Abyss map features a deep hole in the center of the map. Knocking players in is an instant kill. Crouch while holding the Netherite Ingot to equip the armor temporarily for increased knockback resistance. Hits are instant, similarly to 1.8 combat."
execute if data storage ult:temp Key.playCitadel run tellraw @s "The Citadel map, the Aspian base, features instant crossbows, unlimited ender pearls, and special Runes that appear in the center of the map. Crouch while holding a Rune to gain its power. You can only use one Rune power at a time, so using a new one will remove your previous power."
execute if data storage ult:temp Key.playWasteland run tellraw @s "The Wasteland map features instant attacks, like in 1.8. You can crouch with the Smoke Bomb to make a quick escape and damage nearby players, and you can hunt for rabbits and crouch to eat their Meat, to gain a small health and speed boost."
execute if data storage ult:temp Key.playTownSquare run tellraw @s "The Town Square map features five Villagers who sell you various goods. Some Villagers are pretty well hidden. You earn emeralds over time, but you earn way more by hitting opponents with melee attacks."
execute if data storage ult:temp Key.playLastStand run tellraw @s "The Last Stand map, with the Interloper hideout, features gear from hell and cannonballs to wreck the place. Around the top of the map are four forbidden skills. Learn about each through gameplay. Each has an upside and a downside."
execute if data storage ult:temp Key.playPermafrost run tellraw @s ""
execute if data storage ult:temp Key.playShroom run tellraw @s ""
execute if data storage ult:temp Key.playHellscape run tellraw @s ""
execute if data storage ult:temp Key.playFrontier run tellraw @s ""
execute if data storage ult:temp Key.playReflection run tellraw @s "The Reflection map has two halves that you can travel between with the buttons scattered across the map. You have unlimited firework rockets to kill other players, and you are more speedy while holding the crossbow. Fireworks are also reflected across the glass border, so you can shoot players on the other side if you aim in the opposite direction."
execute if data storage ult:temp Key.playDracula run tellraw @s "The Dracula's Castle map features Dracula's fabled trident, which is summoned in the center occasionally. It strikes its target with lightning, but is not very strong as a melee weapon."
execute if data storage ult:temp Key.playAvanto run tellraw @s "The Avanto map features a remote camp inside a snowy mountain. The land has been previously infested with Spiders and Strays, so watch out for Cobwebs and Slowness arrows. Don't stay too high up on the map either, or you will freeze to death."
execute if data storage ult:temp Key.playBoxing run tellraw @s "The Boxing Ring map keeps things simple: punch the other players to win. You have a short Strength potion. Throw the Powerball at your opponents to remove their Strength effect and slow them down."
execute if data storage ult:temp Key.playAncient run tellraw @s "The Ancient Mines map has Ancient Debris scattered around the map. Mine them to get Netherite. With an Ingot in your offhand, crouch holding your selected tool to upgrade it. Hold nothing to upgrade a piece of your armor. Upgraded gear also comes with special enchantments."
execute if data storage ult:temp Key.playMarooned run tellraw @s "The Marooned map features a sometimes wet, sometimes dry world within the belly of a whale. Armed with Riptide tridents, swords, and explosive crossbows, you must constantly switch between land and sea combat. The magical Dolphin's Charm gives you special powers when holding it."
execute if data storage ult:temp Key.dieDuels run tellraw @s "You lost this match. If it's just you and your friend, you will play another match right away. Otherwise you will have to wait for your turn again. Winner stays, remember!"
execute if data storage ult:temp Key.dieBrawlNormal run tellraw @s "You lost a point. However, if you can get back at the player who killed you, you will earn 3 points! You will respawn as soon as their is room in the arena, which is right away if you're playing with less than 5 players."
execute if data storage ult:temp Key.dieBrawlAlone run tellraw @s "Because you killed yourself, no one player got points. However, to compensate, you still lost a point, and each other player gets a point. Although, even if they passed the goal, they still have to kill someone to win."
execute if data storage ult:temp Key.dieRoyale run tellraw @s "Have you ever played Ultimate Tag? This is like that. Once your killer dies, you will respawn."

tellraw @s {"text": "\nhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\n", "color": "red", "obfuscated": true, "bold": true}

scoreboard players set @s showedkey 1
