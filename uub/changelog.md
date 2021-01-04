# changelog

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
