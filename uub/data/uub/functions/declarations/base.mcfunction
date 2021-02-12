# Minecraft declarations
#declare tag/entity_type minecraft:impact_projectiles

# Game declarations
#declare team boss Sole boss player
#declare team fighters Players fighting against the boss
#declare team lobby Players in the lobby

#declare bossbar uub:game_start Time until the game starts
#declare bossbar uub:boss Health of the boss

#declare entity beegyfleeg Server operator

#declare objective _var Standard temporary variable holder (not for game settings, use #flag)
#declare objective game_id Numberic ID for this game sesion
#declare objective game_mode Flag holder for game mode
#declare objective game_state Flag holder for game state
#declare objective health Player health
#declare objective pseudo_health Player health in Boss Rush
#declare objective pn Player numeric id (only for living players)
#declare objective score The player score in Royale and Brawl
#declare objective map Map ID, including votes
#declare objective altitude The Y position of the player
#declare objective rot.horizontal Horizontal rotation of players and armor stands
#declare objective rot.vertical Veritcal rotation of players
#declare objective bool.die Test to see if this player has died
#declare objective bool.kill Test to see if this player has killed
#declare objective tether Player id of the player who killed you
#declare objective ready Equal to 1 if players are ready
#declare objective queue Point in waiting list to join game
#declare objective action Trigger action
#declare objective event Event counters for maps and modes
#declare objective dmg Damage taken trigger
#declare objective menu Menu id for map selection and ender chest interface
#declare objective menu.map Map id for menu interface

scoreboard objectives add _var dummy
scoreboard objectives add game_id dummy
scoreboard objectives add game_mode dummy
scoreboard objectives add game_state dummy
scoreboard objectives add health health {"text": "HP","color": "red"}
scoreboard objectives add pseudo_health dummy
scoreboard objectives add display_health dummy {"text": "HP","color": "red"}
scoreboard objectives add pn dummy
scoreboard objectives add score dummy
scoreboard objectives add map dummy
scoreboard objectives add altitude dummy
scoreboard objectives add rot.horizontal dummy
scoreboard objectives add rot.vertical dummy
scoreboard objectives add bool.die deathCount
scoreboard objectives add bool.kill playerKillCount
scoreboard objectives add tether dummy
scoreboard objectives add queue dummy
scoreboard objectives add menu dummy
scoreboard objectives add ready dummy
scoreboard objectives add action trigger
scoreboard objectives add event dummy
scoreboard objectives add dmg minecraft.custom:minecraft.damage_taken

scoreboard objectives add y.ready dummy

scoreboard objectives add z.manor.sword dummy
scoreboard objectives add z.manor.axe dummy
scoreboard objectives add z.manor.bow dummy
scoreboard objectives add z.manor.crossbow dummy
scoreboard objectives add z.manor.shield dummy
scoreboard objectives add z.manor.potion dummy
scoreboard objectives add z.manor.arrows dummy

scoreboard objectives add z.woods.sword dummy
scoreboard objectives add z.woods.bow dummy
scoreboard objectives add z.woods.gapple dummy
scoreboard objectives add z.woods.arrows dummy

#declare score_holder #flag Determines how the scoreboard objective holds and modifies data
#declare score_holder #server Variables pertaining to the entire server
#declare score_holder #temp Stores temporary variables for scoreboard objectives
#declare score_holder #timeout Stores timeout variables

scoreboard players set #select map 0
scoreboard players set #random map 1
scoreboard players set #cycle map 2
scoreboard players set #vote map 3

scoreboard players set #duels game_mode 0
scoreboard players set #royale game_mode 1
scoreboard players set #brawl game_mode 2
scoreboard players set #boss game_mode 4
scoreboard players set #ultimate game_mode 3

scoreboard players set #main menu 0
scoreboard players set #stats menu 1
scoreboard players set #hotbar menu 2
scoreboard players set #vote menu 3
scoreboard players set #stats.maps menu 10
scoreboard players set #stats.modes menu 11
scoreboard players set #stats.reset menu 12

scoreboard players set #map menu 0
scoreboard players set #map.default menu 1
scoreboard players set #map.featured menu 2

scoreboard players set #max_default map 5
scoreboard players set #max_fandom map 15

#flag game_state : 0 inactive, 1 active, 2 transition

# Player tags
#declare tag player Players that are playing this game
#declare tag alive Players that are alive
#declare tag spectator Players that are not participating
#declare tag low_health Players on low health
#declare tag root The player executing the function
#declare tag killer Player that is responsible for getting the kill
#declare tag respawn Players to respawn due to a player's death
#declare tag afk Players that are currently away from keyboard

# Entity tags
#declare tag text_display Armor stands that are used to display text
#declare tag text_display.map_name Map name display in lobby
#declare tag text_display.map_author Map author display in lobby
#declare tag text_display.mode_name Gamemode name
#declare tag static_item Items that are not meant to be killed
#declare tag tp_marker Positions for player teleportation
#declare tag loot_table_handler Pig that handles loot tables
#declare tag vote_station Location for player voting

#declare storage uub:map_data Names and numbers for the current map
#declare storage uub:hotbar Hotbar item configuration

#alias vector lobby 45 30 -12
#alias vector start 45 31 -3
#alias vector game_mode_switcher 43 31 -9
#alias vector map_switcher 43 31 -12
#alias vector sign 45 35 -23
#alias entity dead @a[tag=player,tag=!alive]
#alias entity root_player @r[tag=root]
