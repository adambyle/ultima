# Entity Tags

Tags are used to mark and categorize entities. Some have important uses, while others are just arbitrary.

## Persistent tags

This is a list of tags that are important to the functionality of all of Ultima.

Tag|Purpose
-|-
`alive`|Players that have `player` and are alive in the game.
`fresh`|Players that just spawned.
`killer`|Tracks the player responsible for the kill during the death procedure.
`participating`|Players that have at some point been a part of the current game.
`player`|Players who wish to participate in a round.
`ready`|Players who are ready to start the game.
`root`|The entity that had context at the beginning of the function's execution.
`spectator`|Players who do not wish to participate in a round.
`static`|Prevents entity deletion in some contexts. Items with this are not deleted every tick like they normally would.
`text_display` / `text_display.*`|An armor stand used to display text.
`temp`/ `temp*`|A very short-lived tag that should be cleared before every use.
