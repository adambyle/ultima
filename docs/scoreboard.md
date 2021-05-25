# scoreboard

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
`half`|`dummy`|The half of the parkour course the player is on.
`health`|`health`
`health_display`|`dummy`|Display value for player health.
`hotbar_map`|`dummy`|The map whose hotbar the player is adjusting.
`kill`|`playerKillCount`
`menu`|`dummy`|Player menu interface tracker.
`online`|`dummy`|Used to keep track of online players.
`parkour`|`dummy`|The parkour map the player is on.
`pn`|`dummy`|Unique player id, only for living players.
`respawn`|`dummy`|Time until player respawn.
`queue`|`dummy`|Spot in line to enter the game; `0` is the front of the line.
`rotation`|`dummy`|Equal to the player's horizontal rotation.
`score`|`dummy`|Player score.
`tether`|`dummy`|Equal to the player id of the player who killed you.
`timer`|`dummy`|Parkour timer.
`vote`|`dummy`|Tracks the map votes for each player.
`wins`|`dummy`|Tracks number of games won for each player.

## `flag` switches

`flag` is an objective that tracks the game settings. A game setting takes the form `.setting`, where `setting` is a name describing the scoreholder's purpose. An example switch is `.map flag`. Here is a list of switches:

Switch|Purpose
-|-
`game_state`|Determines whether the game is active.
`map`|Current map being played on.
`map_menu`|Map choice menu interface tracker.
`map_mode`|Determines whether the map is random in some way, voted, or being manually selected.
`mode`|The active game mode.

## `const` values

This is a list of easy access constant flags that act as a kind of enumerator to enchance code readability. A scoreholder of `const` takes the form `setting.name`, where `setting` is a objective or a `flag` switch of the form `flag.switch`, where `switch` is the switch's name; the scoreholder is the "type" of sorts of the constant flag, and `name` is the shorthand of the value.

### `chest`

    0: common
    1: uncommon
    2: rare
    3: epic
    4: ultimate

### `crouch_mode`

    0: not_crouching
    1: crouch_pressed
    2: crouch_held

### `death_cause`

    0: normal
    1: abyss_fall
    2: abyss_fished
    3: shot
    4: harming
    5: shot_hard
    6: exploded
    7: fire
    8: lava

### `event.rune`

    0: health
    1: speed
    2: attack
    3: defense

### `event.skill`

    0: combonatrix
    1: flurry_rush
    2: backstabbing
    4: hot_pursuit

### `flag.game_state`

    0: inactive
    1: active
    2: transition

### `flag.map`

    0: manor
    1: woodlands
    2: dungeon
    3: abyss
    4: citadel
    5: wasteland
    6: town_square
    7: last_stand
    48: reflection
    49: dracula
    50: avanto
    51: boxing
    52: ancient
    53: marooned
    54: hill
    55: bathhouse
    96: ultimate

### `flag.map_menu`

    0: main
    1: default
    2: featured

### `flag.map_mode`

    0: selected
    1: random
    2: cycle
    3: vote

### `flag.mode`

    0: duels
    1: royale
    2: brawl

### `half`

    0: front
    1: back

### `menu`

    0: main
    1: hotbar_main
    2: hotbar
    3: spectator
    4: vote
    5: parkour
