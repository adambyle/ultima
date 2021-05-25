# tags

Tags are used to mark and categorize entities. Some have important uses, while others are just arbitrary.

## Persistent tags

This is a list of tags that appear in more than one function file.

Tag|Purpose
-|-
`alive`|Players that have `player` and are alive in the game.
`chest` / `chest.*`|Barrel marker.
`fresh`|Players that just spawned.
`killer`|Tracks the player responsible for the kill during the death procedure.
`parkour`|Players doing parkour right now.
`participating`|Players that have at some point been a part of the current game.
`player`|Players who wish to participate in a round.
`root`|The entity that had context at the beginning of the function's execution.
`spectator`|Players who do not wish to participate in a round.
`static`|Prevents entity deletion in some contexts. Items with this are not deleted every tick like they normally would.
`text_display` / `text_display.*`|An armor stand used to display text.
`temp`/ `temp*`|A very short-lived tag that should be cleared before every use.

## Generic tags

This is a list of tags that appear in specific function files.

Tag|Purpose|Function(s)
-|-|-
`afk`|Players that the game has declared away-from-keyboard.|`tick`
`citadel_rune`|A banner pattern item in the Citadel map.|`tick/active/map/citadel/*`
`choose_map`|Random pool entity for choosing maps.|`data/*`
`vote_map`|Random pool entity for vote counting.|`data/*`
`deflected`|Projectiles that have already deflected off the ceiling.|`tick/action/projectile_deflect`
`dmg_indicator`|Armor stands to display damage amounts.|`tick/*`
`dungeon_potion`|Marks the location of brewing stands which may generate potions.|`tick/active/map/dungeon/*`
`exploded`|Fireballs which have already been added to the explosion queue.|`tick/active/map/ancient/*` / `tick/active/map/last_stand.*`
`fireball_potion`|A potion spawned from a fireball explosion.|`*`
`fireball_tracker`|A marker used to track fireballs.|`tick/active/map/ancient/*` / `tick/active/map/last_stand.*`
`last_stand_skill`|Marks lecterns for assigning skills.|`tick/active/maps/last_stand/*`
`loot_table_handler`|Tags a pig which is used as a dynamic loot table.|`settings/ender_chest/hotbar/maps/*` /  `spawn/items/*`
`menu_operator`|Players capable of operating a menu right now.|`tick`
`new_wasteland_warped`|Players who just warped.|`tick/action/map/wasteland/*`
`played_ultimate`|All players once they have joined the world at least once.|`tick/action/*`
`random`|Player to be randomly credited with a kill in Royale mode.|`death/*`
`timed`|Players doing parkour whose timers are running.|`parkour/*`
`vote_station`|Markers to teleport players when they need to vote for a map.|`*`
`wasteland_port`|Marks locations of a teleport area.|`tick/action/map/wasteland/*`
`wasteland_rabbit_spawn`|Marks locations where rabbits can spawn.|`tick/action/map/wasteland/*`
`wasteland_warped`|Players who are warping.|`tick/action/map/wasteland/*`
