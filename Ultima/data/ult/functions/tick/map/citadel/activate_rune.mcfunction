execute at @s run playsound item.trident.thunder master @s ~ ~ ~ 4 2

# Reset attributes
    attribute @s generic.armor base set 3
    attribute @s generic.movement_speed base set .1
    attribute @s generic.attack_speed base set 4
    attribute @s generic.attack_damage base set 1
    attribute @s generic.max_health base set 20
    execute store result score .health _var run data get entity @s Health 10

# Give health for health rune unless health rune was already applied
    execute store result score .rune _var run data get entity @s SelectedItem.tag.CitadelRune
    execute unless score @s event.rune = event.rune.health const if score .rune _var = event.rune.health const run effect give @s instant_health 1 1 true

# Get the rune value from the item NBT
    scoreboard players operation @s event.rune = event.rune.none const
    execute store result score @s event.rune run data get entity @s SelectedItem.tag.CitadelRune
    execute unless score @s event.rune matches 1.. store result score @s event.rune run data get entity @s Inventory[{Slot: -106b}].tag.CitadelRune

# Rune-specific effects
    execute if score @s event.rune = event.rune.speed const run attribute @s generic.movement_speed base set 0.13
    execute if score @s event.rune = event.rune.speed const run attribute @s generic.attack_speed base set 4.4
    execute if score @s event.rune = event.rune.health const run attribute @s generic.max_health base set 28
    execute if score @s event.rune = event.rune.attack const run attribute @s generic.attack_damage base set 3
    execute if score @s event.rune = event.rune.defense const run attribute @s generic.armor base set 9
    execute if score @s event.rune = event.rune.defense const run attribute @s generic.armor_toughness base set 4
    # Revert health to normal if attribute condition earlier succeeded
    execute unless score @s event.rune = event.rune.health const if score .health _var matches 201.. run effect give @s instant_health

# Remove the rune in question
    item replace entity @s[nbt={SelectedItem: {id: "minecraft:globe_banner_pattern"}}] weapon.mainhand with air
    item replace entity @s[nbt={Inventory: [{id: "minecraft:globe_banner_pattern", Slot: -106b}]}] weapon.offhand with air
