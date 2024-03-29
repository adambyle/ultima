# Declare scoreboard objectives
    scoreboard objectives add var dummy
    scoreboard objectives add action trigger
    scoreboard objectives add afk dummy
    scoreboard objectives add altitude dummy
    scoreboard objectives add const dummy
    scoreboard objectives add control dummy
    scoreboard objectives add crouch custom:sneak_time
    scoreboard objectives add crouch_mode dummy
    scoreboard objectives add damage_taken custom:damage_taken
    scoreboard objectives add damage_dealt custom:damage_dealt
    scoreboard objectives add death deathCount
    scoreboard objectives add death_cause dummy
    scoreboard objectives add event dummy
    scoreboard objectives add event.debris mined:ancient_debris
    scoreboard objectives add event.diamond mined:diamond_ore
    scoreboard objectives add event.prism dummy
    scoreboard objectives add event.rabbit killed:rabbit
    scoreboard objectives add event.rune dummy
    scoreboard objectives add event.salmon killed:salmon
    scoreboard objectives add event.sh.red mined:red_mushroom
    scoreboard objectives add event.sh.brown mined:brown_mushroom
    scoreboard objectives add event.sh.crimson mined:crimson_fungus
    scoreboard objectives add event.sh.warped mined:warped_fungus
    scoreboard objectives add event.skill dummy
    scoreboard objectives add event.skill_inc dummy
    scoreboard objectives add flag dummy
    scoreboard objectives add health health
    scoreboard objectives add health_display dummy
    scoreboard objectives add hotbar_map dummy
    scoreboard objectives add jump custom:jump
    scoreboard objectives add kill playerKillCount
    scoreboard objectives add menu dummy
    scoreboard objectives add online dummy
    scoreboard objectives add pn dummy
    scoreboard objectives add respawn dummy
    scoreboard objectives add queue dummy
    scoreboard objectives add rotation dummy
    scoreboard objectives add score dummy
    scoreboard objectives add tether dummy
    scoreboard objectives add vote dummy
    scoreboard objectives add wins dummy

# Modify scoreboard renders
    scoreboard objectives modify wins displayname {"text": "Wins", "color": "#90BE6D"}
    scoreboard objectives modify health_display displayname {"text": "HP", "color": "#F94144"}
    scoreboard objectives modify health_display rendertype hearts
    scoreboard objectives modify score displayname {"text": "Score", "color": "#43AA8B"}

# Set constant enumerators
    # For all booleans
    scoreboard players set bool.false const 0
    scoreboard players set bool.true const 1
    # For `action`
    scoreboard players set action.none const 0
    scoreboard players set action.change_modes const 1
    scoreboard players set action.opt_out const 2
    scoreboard players set action.tp_lobby const 3
    scoreboard players set action.unready const 4
    scoreboard players set action.change_vote const 5
    scoreboard players set action.reset const 8
    # For `crouch_mode`
    scoreboard players set crouch_mode.not_crouching const 0
    scoreboard players set crouch_mode.crouch_pressed const 1
    scoreboard players set crouch_mode.crouch_held const 2
    # For `death_cause`
    scoreboard players set death_cause.normal const 0
    scoreboard players set death_cause.abyss_fall const 1
    scoreboard players set death_cause.abyss_fished const 2
    scoreboard players set death_cause.shot const 3
    scoreboard players set death_cause.harming_potion const 4
    scoreboard players set death_cause.shot_hard const 5
    scoreboard players set death_cause.exploded const 6
    scoreboard players set death_cause.fire const 7
    scoreboard players set death_cause.lava const 8
    scoreboard players set death_cause.shot_aerial const 9
    scoreboard players set death_cause.rocket const 10
    scoreboard players set death_cause.hill_pitfall const 11
    scoreboard players set death_cause.hill_pitfall_king const 12
    scoreboard players set death_cause.hill_shot const 13
    scoreboard players set death_cause.glitch const 14
    scoreboard players set death_cause.froze const 15
    scoreboard players set death_cause.snowballed const 16
    scoreboard players set death_cause.laser const 17
    # For `event.rune`
    scoreboard players set event.rune.none const 0
    scoreboard players set event.rune.health const 1
    scoreboard players set event.rune.speed const 2
    scoreboard players set event.rune.attack const 3
    scoreboard players set event.rune.defense const 4
    # For `event.skill`
    scoreboard players set event.skill.none const 0
    scoreboard players set event.skill.combonatrix const 1
    scoreboard players set event.skill.flurry_rush const 2
    scoreboard players set event.skill.backstabbing const 3
    scoreboard players set event.skill.hot_pursuit const 4
    # For `.game_state flag`
    scoreboard players set flag.game_state.inactive const 0
    scoreboard players set flag.game_state.active const 1
    scoreboard players set flag.game_state.transition const 2
    scoreboard players set flag.game_state.voting const 3
    # For `.map flag` and `hotbar_map`
    scoreboard players set flag.map.none const -1
    scoreboard players set flag.map.manor const 0
    scoreboard players set flag.map.woodlands const 1
    scoreboard players set flag.map.dungeon const 2
    scoreboard players set flag.map.abyss const 3
    scoreboard players set flag.map.citadel const 4
    scoreboard players set flag.map.wasteland const 5
    scoreboard players set flag.map.town_square const 6
    scoreboard players set flag.map.last_stand const 7
    scoreboard players set flag.map.permafrost const 8
    scoreboard players set flag.map.shroom const 9
    scoreboard players set flag.map.haven const 10
    scoreboard players set flag.map.frontier const 11
    scoreboard players set flag.map.facility const 12
    scoreboard players set flag.map.meadow const 13
    scoreboard players set flag.map.leagues const 14
    scoreboard players set flag.map.reflection const 48
    scoreboard players set flag.map.dracula const 49
    scoreboard players set flag.map.avanto const 50
    scoreboard players set flag.map.boxing const 51
    scoreboard players set flag.map.ancient const 52
    scoreboard players set flag.map.marooned const 53
    scoreboard players set flag.map.hill const 54
    scoreboard players set flag.map.bathhouse const 55
    scoreboard players set flag.map.chasm const 56
    scoreboard players operation flag.map.start_default const = flag.map.manor const
    scoreboard players operation flag.map.end_default const = flag.map.shroom const
    scoreboard players operation flag.map.start_featured const = flag.map.reflection const
    scoreboard players operation flag.map.end_featured const = flag.map.chasm const
    # For `.map_menu flag`
    scoreboard players set flag.map_menu.main const 0
    scoreboard players set flag.map_menu.default const 1
    scoreboard players set flag.map_menu.featured const 2
    # For `.map_mode flag`
    scoreboard players set flag.map_mode.selected const 0
    scoreboard players set flag.map_mode.random const 1
    scoreboard players set flag.map_mode.cycle const 2
    scoreboard players set flag.map_mode.vote const 3
    # For `.game_mode flag`
    scoreboard players set flag.game_mode.duels const 0
    scoreboard players set flag.game_mode.royale const 1
    scoreboard players set flag.game_mode.brawl const 2
    scoreboard players set flag.game_mode.guerilla const 3
    # For `menu`
    scoreboard players set menu.main const 0
    scoreboard players set menu.hotbar_default const 10
    scoreboard players set menu.hotbar_featured const 11
    scoreboard players set menu.hotbar_workspace const 12
    scoreboard players set menu.spectate const 20
    scoreboard players set menu.vote const 30
    scoreboard players set menu.statistics const 40
    scoreboard players set menu.statistics_default const 41
    scoreboard players set menu.statistics_featured const 42
    scoreboard players set menu.statistics_display const 43
    scoreboard players set menu.chat const 50

# Set defaults for brand new worlds
    execute unless score .game_state flag matches 0.. run scoreboard players operation .game_state flag = flag.game_state.inactive const
    execute unless score .map flag matches 0.. run scoreboard players operation .map flag = flag.map.manor const
    execute unless score .map_menu flag matches 0.. run scoreboard players operation .map_menu flag = flag.map_menu.main const
    execute unless score .map_mode flag matches 0.. run scoreboard players operation .map_mode flag = flag.map_mode.selected const
    execute unless score .game_mode flag matches 0.. run scoreboard players operation .game_mode flag = flag.game_mode.brawl const
    execute unless score .continuous flag matches 0.. run setblock 42 31 -3 lever[powered=false, face=wall, facing=north]
    execute unless score .continuous flag matches 0.. run scoreboard players operation .continuous flag = bool.false const
    execute unless score .bonus_item flag matches 0.. run scoreboard players operation .bonus_item flag = bool.false const

# Prepare teams
    # For players in lobby
    team add lobby
    team modify lobby friendlyFire false
    # For colored respawn marker villager outlines
    team add respawn_marker
    team modify respawn_marker color dark_aqua

# Load chunks
    forceload remove all
    forceload add -128 -128 127 127
    forceload add 128 -128 383 127
    forceload add -128 128 127 383
    forceload add 128 128 383 383

# Prepare bossbar
    bossbar add ult:game_start ""
    bossbar set ult:game_start style progress

# Prepare data storage
    #declare storage ult:data
    #declare storage ult:players
    #declare storage ult:temp
    item replace block 0 0 0 container.0 with stone

# Prepare the world if nobody is online yet
    execute unless entity @a run function ult:load/first

# Colors used in chat output:
    # CHANNEL NAME: dark_gray
    # GENERAL TEXT: gray
    # PLAYER NAMES: white
    # DEATH: #F94144
    # FAILURE: #F3722C
    # WARNING: #F8961E
    # NOTICE: #F9C74F
    # SUCCESS: #43AA8B
    # VICTORY: #90BE6D
    # IMPORTANT: #577590

# Text channels:
    # D: Debug
    # G: Game
    # L: Lobby
    # S: Settings
