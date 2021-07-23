execute unless data entity @s SelectedItem{id: "minecraft:crossbow"} run clear @s crossbow
item replace entity @s weapon.mainhand with crossbow{Charged: true, ChargedProjectiles: [{id: "minecraft:arrow", Count: 1b}], Unbreakable: true}
