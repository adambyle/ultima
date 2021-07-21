# changelog

---

## Release v2.0.0 -- *FILL IN*

**General**:

- Code completely refactored for a less laggy and less buggy experience.
- Data pack updated to 1.17 format
  - Some commands were changed (notably with the `replaceitem` to `item` change)
  - Armor stands and area effect clouds replaced with area effect clouds and markers (new 1.17 entity), respectively.
  - Item modifiers used instead of the shulker box loot table exploit method.
- Removed parkour.
- All references to Ultimate mode/"Classic Game" were removed permanently.
  - Ultimate mode may be made into its own spin-off game instead. It does not fit the theme or purpose of Ultima.
- Tutorials/explanations of the game modes and maps were added to lecterns in the lobby.
- Removed "key points".
- Player statistics can be viewed in the ender chest.

**Maps**:

- Ancient Mines: Fireballs can be launched from the offhand.
- Bathhouse: NEW MAP by Jonathan Deiss!
- Dracula's Castle: Added a way to get to the central tower from underneath via twisting vines.
- Dungeon: Potion of Healing now appears almost immediately after game start, and time between refills decreased to 15s from 30s.
- The Hill: NEW MAP by Jonathan Deiss!

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
- Last Stand: *Flurry Rush* and *Hot Pursuit* no longer have trade-offs, to match the other two skills.
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
