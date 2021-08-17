# Scoreboard

Scoreboard objectives in Ultima are not namespaced. Do not mix the Ultima data pack with any other data packs.

## List of objectives

Below is a list of objectives, their criterion, and their purpose.

Declaration|Criterion|Description
-|-|-
`_var`|`dummy`|Stores temporary values, for use within a single function only.
`action`|`trigger`|Player chat actions.
`afk`|`dummy`|Player AFK timer.
`altitude`|`dummy`|Equal to the player's Y position.
`chest`|`dummy`|Categorizes barrel rarities.
`const`|`dummy`|Constant flags.
`control`|`dummy`|Used for passing values between functions, still minorly temporary.
`crouch`|`custom:sneak_time`
`crouch_mode`|`dummy`|Used to detect the moment a player crouches.
`damage_taken`|`custom:damage_taken`
`damage_dealt`|`custom:damage_dealt`
`death`|`deathCount`
`death_cause`|`dummy`|Flag for the cause of the player's death.
`event`|`dummy`|Timers and flags for game mechanics.
`event.debris`|`mined:ancient_debris`|Used in the Ancient Mines map.
`event.rabbit`|`killed:rabbit`|Used in the Wasteland map.
`event.rune`|`dummy`|Used in the Citadel map to track activated rune.
`event.salmon`|`killed:salmon`|Used in the Marooned map.
`event.skill`|`dummy`|Used in the Last Stand map to track activated skill.
`event.skill_inc`|`dummy`|Used in the Last Stand map to track skill progression.
`flag`|`dummy`|Game setting flag.
`health`|`health`
`health_display`|`dummy`|Display value for player health.
`hotbar_map`|`dummy`|The map whose hotbar the player is adjusting.
`jump`|`custom:jump`
`kill`|`playerKillCount`
`menu`|`dummy`|Player menu interface tracker.
`online`|`dummy`|Used to keep track of online players.
`pn`|`dummy`|Unique player id, only for living players.
`respawn`|`dummy`|Time until player respawn.
`queue`|`dummy`|Spot in line to enter the game; `0` is the front of the line.
`rotation`|`dummy`|Equal to the player's horizontal rotation.
`score`|`dummy`|Player score.
`tether`|`dummy`|Equal to the player id of the player who killed you.
`vote`|`dummy`|Tracks the map votes for each player.
`wins`|`dummy`|Tracks number of games won for each player.

## `flag` switches

`flag` is an objective that tracks the game settings. A game setting takes the form `.setting`, where `setting` is a name describing the scoreholder's purpose. An example switch is `.map flag`. Here is a list of switches:

Switch|Purpose
-|-
`debug_mode`|Toggled on for development purposes only.
`game_state`|Determines whether the game is active.
`map`|Current map being played on.
`map_menu`|Map choice menu interface tracker.
`map_mode`|Determines whether the map is random in some way, voted, or being manually selected.
`game_mode`|The active game mode.

## `const` values

This is a list of easy access constant flags that act as a kind of enumerator to enchance code readability. A scoreholder of `const` takes the form `setting.name`, where `setting` is a objective or a `flag` switch of the form `flag.switch`, where `switch` is the switch's name; the scoreholder is the "type" of sorts of the constant flag, and `name` is the shorthand of the value.

### `action`

    0: none
    1: change_modes
    2: opt_out
    3: tp_lobby
    4: unready

### `crouch_mode`

    0: not_crouching
    1: crouch_pressed
    2: crouch_held

### `death_cause`

    0: normal
    1: abyss_fall
    2: abyss_fished
    3: shot
    4: harming_potion
    5: shot_hard
    6: exploded
    7: fire
    8: lava
    9: shot_aerial
    10: rocket
    11: hill_pitfall
    12: hill_pitfall_king
    13: hill_shot
    14: glitch

### `event.rune`

    0: none
    1: health
    2: speed
    3: attack
    4: defense

### `event.skill`

    0: none
    1: combonatrix
    2: flurry_rush
    3: backstabbing
    4: hot_pursuit

### `flag.debug_mode`

    0: off
    1: on

### `flag.game_state`

    0: inactive
    1: active
    2: transition

### `flag.map`

    -1: none
    0: manor
    1: woodlands
    2: dungeon
    3: abyss
    4: citadel
    5: wasteland
    6: town_square
    7: last_stand
    8: permafrost
    9: shroom
    10: hellscape
    11: frontier
    12: facility
    13: meadow
    14: leagues
    48: reflection
    49: dracula
    50: avanto
    51: boxing
    52: ancient
    53: marooned
    54: hill
    55: bathhouse

### `flag.map_menu`

    0: main
    1: default
    2: featured

### `flag.map_mode`

    0: selected
    1: random
    2: cycle
    3: vote

### `flag.game_mode`

    0: duels
    1: royale
    2: brawl

### `menu`

    0: main
    10: hotbar_default
    11: hotbar_featured
    12: hotbar_workspace
    20: spectate
    30: vote
    40: statistics
    41: statistics_default
    42: statistics_featured
    43: statistics_display
    50: chat
