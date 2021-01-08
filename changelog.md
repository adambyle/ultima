# changelog

## January 8, 2021

**Additions:**
* Players spectating a game have a link in chat to go to the lobby
* Players that opt out of a game go to the lobby by default
    * In the lobby, players can interact with the ender chest, but not the game settings
    * Stepping on the pressure plate at this point will make you a spectator again
* Three new guests maps, featuring Tucker Lawson, Brayden Smith, and Reed Aldridge
* Players that stand still (without moving their camera or body) for ten seconds are automatically opted out for being AFK

**Changes:**
* Players do not keep their items after death, and instead get a complete item reset on death (this makes no functional difference)
* Players that are not opted in cannot start the game countdown
* Firework rockets now ricochet off the ceiling

**Bug fixes:**
* When both players kill each other at the same time in Duels mode, the game is softlocked
* Map-based events do not reset on a new round in Duels mode
* Ricocheted projectiles have integer motion values, decreasing accuracy
* In the "Abyss" map, on item refills, players get additional arrows (it should replace the ones that were already there)
* Players that opt in or out do not have their choices saved if the world is reloaded before the game starts

## January 7, 2021

**Additions:**
* Awards
    * 8 categorical triumphs that are assigned to three randomly chosen players
    * Due to the way it is currently coded, players rarely get Awards (this will be changed)
* Special death messages that describe other events that influenced the death (paired with Awards)
* New map: "Citadel"

**Changes:**
* Players that leave the game by opting out cannot join back
* If a player leaves the game by opting out, it is assumed they lost the game (the statistics are incremented accordingly)
* Players that have left a game by opting out cannot rejoin the same game by opting in
* Projectiles that go out of the upper boundary bounce back at equal speed
    * It used to be that they kept flying, this made ender pearls problematic
    * Arrows deal more damage if deflected
* Arrows in the "Abyss" map are no longer tipped with Harming I
* The goal in Brawl mode is static, always 5 (used to depend on player number)
* When the game resets (i.e. after a game) the server reloads, to automatically add in new code
* Removed the in-chat stats interface

**Bug fixes:**
* "X hit you" and "X is at Y HP" notifications occur at inappropriate times
* In duels mode, cycle map does not work correctly
* The Splash Potion of Harming that players spawn with in the "Dungeon" map cannot be cleared during item refill
* Splash Potions of Healing that players collect in the "Dungeon" map are cleared on item refill
* Statistics for the "Manor" map and Classic mode are not calculated and displayed correctly (but are recorded just fine)
* If a player opts out during the ready sequence, and all opted-in players are ready, the game does not start, and the timer must be waited out
* The game is considered "played" right after the start button is pressed, this should be determined after the game ends
* If a player runs the ready sequence outside of the pressure plate (through function manipulation) it creates pressure plates and buttons in odd places
* If the game prompts you to start the game in another gamemode, following through causes the game to start in an unusual way, often omitting players and messing up statistics
* Opting into a game does not give you your items and does not add you to the leaderboard

## January 4, 2021 (Second push)

**Additions:**
* When a player dies or opts out, any splash potions or arrows in the air belonging to them are destroyed
* You are notified who hit you when the attacker is either six blocks or more away or invisible
* When you hit someone six blocks or more away, you are told their health
* Map selection interface in a chest

**Changes:**
* Removed map button that cycled through the options
    * This does not have anything to do with the "Cycle Map" map selection

## January 4, 2021

**Additions:**
* If a player dies in Brawl mode with no credited player, every player gets a point
* Fishing rod in the "Abyss" map
* A new lobby
    * Removed toggle opt button as a pressure plate
    * Removed start button (new ready button)
    * Ender Chest interface, including very detailed statistics and the toggle-opt button, and a non-functional hotbar settings button
* Players that press the ready button prepare the game's start
    * A fifteen second timer begins running when the first player readies
    * The game doesn't start if not enough players ready
    * At the end of the timer, if any opted in player is not ready, they are opted out

**Changes:**
* Each player past the fourth in Brawl mode increases the goal by one point (with 3/4 players, the goal is 5; in 5 players it's 6, etc.)
* Diamond Armor in the "Abyss" map is now Protection II (Netherite armor item is still Protection IV)
* Arrow cooldown in the "Woodlands" map is four times faster (5s -> 1.5s)
* Removed the chat-message statistics in favor of the ender chest interface
* Players that opt out of a game are assumed to have lost the game
* Players that opt in mid game cannot increase their play or win stats
* Players that opt out of a game cannot rejoin until next game

**Bug fixes:**
* In Brawl mode, death messages were only announced to the player who killed and the player who died
* Players who were not playing and players who were could combat in the lobby
* If a player opted in on Classic mode or Brawl mode and there was an open spot, they did not join


## January 2, 2021

**Additions:**
* Special death messages for each gamemode

**Changes:**
* Your "games played" stat is updated eat the end of each game (was the beginning)
* The Netherite Ingot on the "Abyss" map gives you both a Chestplate and Leggings, and it lasts for 15s (was just Chestplate for 10s)
* Healing potion appears every 15s in the "Dungeon" map (was 45s after the first fill, which was after 15s)
* Players' health is now refilled on item refill in the "Abyss" map (to match every other map)

**Bug fixes:**
* Game was not counting deaths and kills correctly
* Game awarded 2 points for killing a player that just respawned (should be 1, which is what was shown in chat)
* Game could tether you to yourself if you shot yourself with an arrow (or via another bug, see below)
* Getting a kill in Duels mode would not be registered and would carry over into subsequent games in a different mode to be registered when a player was killed
* Players can use a Smithing Table in the "Abyss" map to upgrade to a Netherite Sword
* Players were given their Shield back repetively when invisible in the "Dungeon" map (players should not be given a Shield until they are visible again)
* Players were given an extra Splash Potion of Harming on item refill in the "Dungeon" map (one should only be given if the player did not already have one)
* Game would not start if the "Abyss" map was manually selected (it would work fine if chosen through the Cycle Map setting)
* Reducing a game to two players by opting out in Classic or Brawl mode did not cut the game short (games should be cut short if not enough players remain if a player opts out)
* Opting in does not automatically queue you for respawn if in Brawl mode
* Joining the server in the middle of a game causes you to repeatedly teleport to the same position above the current map, not allowing you to move
* Leading players do not glow in Brawl mode

## December 22, 2020

**Additions:**
* Game released
