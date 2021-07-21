# Declare scoreboard objectives
    scoreboard objectives add _var dummy
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
    scoreboard objectives add event.rabbit killed:rabbit
    scoreboard objectives add event.rune dummy
    scoreboard objectives add event.salmon killed:salmon
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
    scoreboard objectives modify wins displayname {"text": "Wins", "color": "dark_green"}
    scoreboard objectives modify health_display displayname {"text": "HP", "color": "dark_red"}
    scoreboard objectives modify health_display rendertype hearts
    scoreboard objectives modify score displayname {"text": "Score", "color": "blue"}

# Set defaults for brand new worlds
    execute unless score .game_state flag matches 0.. run scoreboard players set .game_state flag 0
    execute unless score .map flag matches 0.. run scoreboard players set .map flag 0
    execute unless score .map_menu flag matches 0.. run scoreboard players set .map_menu flag 0
    execute unless score .map_mode flag matches 0.. run scoreboard players set .map_mode flag 0
    execute unless score .game_mode flag matches 0.. run scoreboard players set .game_mode flag 0

# Set constant enumerators
    # For `action`
    scoreboard players set action.change_modes const 0
    scoreboard players set action.opt_out const 1
    scoreboard players set action.tp_lobby const 2
    scoreboard players set action.unready const 3
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
    # For `.debug_mode flag`
    scoreboard players set flag.debug_mode.off const 0
    scoreboard players set flag.debug_mode.on const 1
    # For `.game_state flag`
    scoreboard players set flag.game_state.inactive const 0
    scoreboard players set flag.game_state.active const 1
    scoreboard players set flag.game_state.transition const 2
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
    scoreboard players set flag.map.hellscape const 10
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
    scoreboard players operation flag.map.start_default const = flag.map.manor const
    scoreboard players operation flag.map.end_default const = flag.map.last_stand const
    scoreboard players operation flag.map.start_featured const = flag.map.reflection const
    scoreboard players operation flag.map.end_featured const = flag.map.bathhouse const
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
    # For `menu`
    scoreboard players set menu.main const 0
    scoreboard players set menu.hotbar_default const 10
    scoreboard players set menu.hotbar_featured const 11
    scoreboard players set menu.hotbar_workspace const 12
    scoreboard players set menu.spectate const 20
    scoreboard players set menu.vote const 30

# Prepare teams
    # For players in lobby
    team add lobby
    team modify lobby friendlyFire false
    # For colored respawn marker villager outlines
    team add respawn_marker
    team modify respawn_marker color dark_red

# Load chunks
    forceload remove all
    forceload add 0 -30 230 200

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
