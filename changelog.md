# changelog

---

## Release v3.0.1 -- *----- ---, 2023*

**General**:

- Data pack updated to 1.19 format.
- Changed default AFK time to 15s (from 10).
- Check for game tips in the lobby.

**Maps**:

- Abyss: Bow is now strengthened with Power I.
- Town Square: Iron axes are moved automatically to the right hotbar slot.
- Permafrost: Armor strengthened to Protection III (was Protection II).
- Shroom: A notice about the mushrooms' functions appears when trying to combine incompatible enchantments.
- Shroom: The frequency of mushroom spawning has been balanced between varieties.
- Chasm: The frozen Lake of Souls slows players who cross it.
- Chasm: Likelihood of Prismatica hitting has been increased.
- Chasm: Players only get 3 Launch Charms (from 4).

**Bug Fixes**:

- FIXED: Queue system is dysfunctional for more than 4 players in Brawl mode.
- FIXED: Player cannot choose to join an ongoing game when logging into the server.
- FIXED: The "auto-ready" function does not work.
- FIXED: Possibility of initiating a launch in Chasm without depleting a Launch Charm.
- FIXED: There's no delay in between voting and the game starting with Continuous Play enabled.
- FIXED: Players can hear netherite upgrades in Abyss from anywhere in the map.
- FIXED: Chasm's Prismatica has no effect on flying players.

---

## Release v3.0.0 -- *February 4, 2022*

**General**:

- Data pack updated to 1.18 format.
- Death detection is now done with advancements for a less laggy experience and more accurate death detection.

**Maps**:

- Chasm: NEW MAP by Reed Aldridge!
- Last Stand: Players now get 16 arrows (was 32).
- Shroom: NEW DEFAULT MAP!

**Bug Fixes**:

- FIXED: Some items cannot be used from the offhand when it comes to crouch-activation, unlike other items.
- FIXED: Players cannot change their perferred pronouns.
- FIXED: Players cannot use the chat channel settings.
- FIXED: In some cases, spectators do not move maps when appropriate, but are left in the map of the last match.
- FIXED: Bug with Citadel hotbar settings.
- FIXED: Players joining in between games causes issues.
- FIXED: Players opting out while voting causes issues.

---

## Release v2.1.2 -- *August 26, 2021*

**General**:

- Changed default AFK time to 10s (from 5).

**Bug Fixes**:

- FIXED: Iron Axe from the Weaponsmith in Town Square is breakable.
- FIXED: Permafrost map has a missing wall.
- FIXED: Vote Map does not work.
- FIXED: Players are not warned when they are about to be opted out for being AFK.

---

## Release v2.1.1 -- *August 25, 2021*

**Maps**:

- Permafrost: NEW DEFAULT MAP!

**Bug Fixes**:

- FIXED: The death message is odd when players die in Duels mode.
- FIXED: Only the winner of a duel gets to vote.
- FIXED: The game start timer does not go down, even when the game is able to begin (i.e. when a fourth player hasn't readied yet).

## Release v2.1.0 -- *August 17, 2021*

---

**General**:

- New chat settings:
  - Players can choose their preferred pronouns.
  - Chat output has been divided into channels.
  - Players can reduce or omit certain channels to reduce chat clutter.
- New "Continuous Play" game option:
  - A new game starts immediately after the previous one.
  - This feature was ported from Duels to other game modes.
- Vote Map is now compatible with Continuous Play, and, by extension, Duels mode.
- Extra players are no longer opted out in Royale mode, and will instead just sit out that one game (but remain opted in for next game).

**Maps**:

- Dungeon: Potion of Resilience now gives Resistance IV (was Resistance III)
- Marooned: Sword is now Sharpness V (was Sharpness IV)

**Bug Fixes**:

- FIXED: Obnoxious noises in the Marooned map.
- FIXED: Last Stand's Backstabbing skill's strength criterion is broken.
- FIXED: The game thinks the player died to fire unusually often.
- FIXED: The game runs too many commands per tick when retrieiving large samples of statistics.
- FIXED: Players upgrading/equipping tools/armor can be heard from anywhere in the arena.
- FIXED: The Performance statistics panel cannot be seen on larger GUIs.
- FIXED: The villagers in Last Stand can be killed, forcing users to redownload the map.

---

## Release v2.0.0 -- *July 31, 2021*

**General**:

- Code completely refactored for a less laggy and less buggy experience.
- Data pack updated to 1.17 format.
  - Some commands were changed (notably with the `replaceitem` to `item` change)
  - Armor stands and area effect clouds replaced with area effect clouds and markers (new 1.17 entity), respectively.
  - Item modifiers used instead of the shulker box loot table exploit method.
- Removed parkour.
- All references to Ultimate mode/"Classic Game" were removed permanently.
  - Ultimate mode may be made into its own spin-off game instead, but it does not fit the theme or purpose of the main installation of Ultima.
- Tutorials/explanations of the game modes and maps were added to lecterns in the lobby.
- Removed "key points".
- Player statistics can be viewed in the ender chest.
- Brawl mode revenge kills are now worth 2 (was 3).
- Projectiles no longer reflect if they have a downward trajectory; now players can shoot their bow correctly in Avanto while being above the map ceiling.
- Better spectator settings interface.

**Maps**:

- Ancient Mines: Fireballs can be launched from the offhand.
- Bathhouse: NEW MAP by Jonathan Deiss!
- Citadel: Players no longer have invisible extra health after switching out the Health Rune for something else. Previously, players would have to be hit once for their health to update to normal after being above the max.
- Citadel: Runes can no longer be thrown out of your inventory without them disappearing.
- Dracula's Castle: Added a way to get to the central tower from underneath via twisting vines.
- Dungeon: Potion of Healing now appears almost immediately after game start, and time between refills decreased to 15s from 30s.
- The Hill: NEW MAP by Jonathan Deiss!
- Town Square: Iron Axe now costs 10 emeralds (was 12) and is now unenchanted (was Sharpness I). Splash Potion of Harming now costs 12 emeralds.
- Wasteland: Another smoke bomb rework: smoke bombs first try to find a landing zone with no nearby players, and if that fails, then a random landing zone (except the nearest) is selected.

**Bug fixes**:

- Bug fixes were not kept track of, as many bugs, including ones that were not previously known, were patched during refactorization. Overall, fewer issues.

---

## Release v1.1.2 -- *May 27, 2021*

**Maps**:

- Reflection: Teleportation has been switched to crouching/jumping, instead of pressing buttons.
- Reflection: Players now spawn on random sides of the mirror.
- Wasteland: Smoke Bomb now summons a splash potion instead of doing direct damage, lowering the damage done and allowing for credited kills.

**Bug fixes**:

- FIXED: Wasteland has unusual default hotbar settings.
- FIXED: Newly joined players can neither opt in nor out, and are locked out of games along with other functionalities.
- FIXED: No maps generate when loading the world for the first time.

---

## Release v1.1.1 -- *May 22, 2021*

**Maps**:

- Marooned: Salmon gives Absorption II (4 hearts), was Absorption I (2 hearts).
- Wasteland: Smoke Bomb now never teleports to the nearest warp point.

**Bug fixes**:

- FIXED: When a player joins the world, player attributes are reverted (affects instant-attack maps and Citadel's runes, among other things).
- FIXED: Players who are force-opted out while in a voting station are locked in the station until they relog.
- FIXED: Wins do not actually reset properly.

---

## Release v1.1.0 -- *May 21, 2021*

**General**:

- Number of votes and who voted for what can be seen at the start of each game.

**Maps**:

- Abyss: Potion of Levitation is now a Splash Potion.
- Dungeon: Potion of Resilience: Resistance lowered from level IV to level III.
- Last Stand: Flurry Rush and Hot Pursuit no longer have trade-offs, to match the other two skills.
- Marooned: NEW MAP by Reed Aldridge!

**Bug fixes**:

- FIXED: Last Stand cannonballs will sometimes explode in the lobby.
- FIXED: Players who are opted in and in the lobby cannot use the pressure plate to spectate the game.

---

## Release v1.0.2 -- *May 16, 2021*

**General**:

- Wins are reset when a new player joins.

**Bug fixes**:

- FIXED: Players' projectiles still linger after they have died.
- FIXED: Once enough players have voted to start a game, the chat says the most recent voter has "changed their vote".
- FIXED: "Game Start" spectator setting does not apply to those who aren't one of the four starting players in Brawl mode.
- FIXED: Last Stand has no map description.
- FIXED: Tridents are not recognized as projectiles in the code.
- FIXED: The game ends due to "someone leaving the server" when a user joins the server mid-game.

---

## Release v1.0.1 -- *May 13, 2021*

**General**:

- Health display reworked, fixing multiple bugs.

**Maps**:

- Citadel: Applying the Health Rune while it is already applied no longer restores 8 HP.

**Bug fixes**:

- FIXED: Health display is set to 0 at the beginnings of some games.
- FIXED: Sidebar health display during Duels mode shows the values of all players to ever have joined the world.

---

## Release v1.0.0 -- *May 8, 2021*

**General**:

- Game released.
