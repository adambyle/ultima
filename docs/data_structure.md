# NBT Data Structure

The NBT field `ult:players` contains all essential player data for settings and statistics. The NBT is organized as follows:

    ult:players {
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
                ... for each map id (camelCase)
            },
            double[] Pos : last record location of player,
            byte skipVote : enumerator for auto-vote settings,
            Spectate { spectator settings
                byte joinWorld : boolean; spectate when join world,
                byte startGame : boolean; spectate when start game,
                byte optOut : boolean; spectate when opting out,
                byte death : boolean; spectate when dying
            },
            Games[] { a game
                byte mode : enumerator for game mode,
                byte players : number of players,
                int map: map id,
                byte win: boolean; whether the player won
                int[] kills : array of death cause ids,
                int[] deaths : array of death cause ids,
                brawl { only found in brawl mode
                    int plus,
                    int minus,
                    int normkills,
                    int freshkills,
                    int freshdeaths,
                    int revenge
                },
                int[] Opponent : UUID of opponent in duels mode
            },
            Game { active game
                ... see above format
            },
            string Name : JSON text component for the player,
            StatMenu {
                byte timespan : enumerator for the timespan to report stats on,
                byte mode : game mode id,
                int map : map id (see flag.map scoreboard enumerator),
                string mapName : name of the map id
            },
            Chat {
                byte pronouns : enumerator for player's chat pronouns,
                channel {
                    byte game
                }
            },
            int[] UUID : UUID of player
        },
        int[] Votes : the ids of the maps a player can choose from when voting
    }

## Enumerators

There are a few enumerators within this structure.

### `Players[].Chat.pronouns`

    0: They/Them
    1: He/Him
    2: She/Her

### `Players[].Chat.channel.*`

    0: shown
    1: simplified
    2: hidden

### `Players[].Games[].mode`

See the `flag.game_mode` enumerator for the scoreboard.

### `Players[].StatMenu.timespan`

    0: past 20 games
    1: past 100 games
    2: past 500 games

### `Players[].StatMenu.mode`

    0: combined
    1: duels
    2: group combined
    3: royale
    4: brawl

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
