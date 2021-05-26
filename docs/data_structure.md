## NBT Data Structure

The NBT field `ult:players` contains all essential player data for settings, records, and statistics. The NBT is organized as follows:

    ult:players {
        Global { NBT data shared between all players
            Parkour { Parkour record times
                manor { for Manor map
                    Full { for full course
                        string Name : JSON text name of record holder,
                        int Time : ticks to complete this portion,
                        int[] UUID : UUID of record holder
                    },
                    Half { for half course
                        ... see above
                    }
                },
                woodlands { for Woodlands map
                    ... see above
                }
            }
        },
        Players[] { a player's data
            byte afkTime : enumerator for AFK settings,
            byte autoReady : enumerator for auto-ready settings,
            Hotbar { hotbar settings data
                manor {
                    int sword : slot id enumerator,
                    int axe : slot id enumerator,
                    ... see hotbar settings file
                },
                woodlands {
                    ... see hotbar settings file
                },
                ... for each map id
            },
            Keys[] { a key
                byte <name of key> : always 1b, present in Array if captured
            },
            Parkour { parkour data
                manor {
                    int Full : ticks to complete full course,
                    int Half : ticks to complete half course
                },
                woodlands {
                    ... see above
                }
            },
            double[] Pos : last record location of player,
            byte skipVote : enumerator for auto-vote settings,
            Spectate { spectator settings
                byte joinWorld : boolean; spectate when join world,
                byte startGame : boolean; spectate when start game,
                byte optOut : boolean; spectate when opting out,
                byte death : boolean; spectate when dying
            },
            int[] UUID : UUID of player
        },
        int[] Votes : the ids of the maps a player can choose from when voting
    }

## Enumerators

There are a few `byte` enumerators within this structure.

### `Players[].afkTime`

    0: 5 seconds
    1: 10 seconds
    2: 15 seconds
    3: never AFK

### `Players[].autoReady`

    0: never
    1: when not AFK
    2: always

### `Players[].Hotbar.<map>.<item>`

    -1: offhand
    0-8: slot hotbar.0-8
    10-12: slot container.0-2

### `Players[].skipVote`

    0: never
    1: when AFK
    2: always
