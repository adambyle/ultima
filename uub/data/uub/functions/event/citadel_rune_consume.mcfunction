playsound entity.player.levelup master @a ~ ~ ~ 0.8 0.5
particle composter ~ ~ ~ 0.3 0.3 0.3 0.5 20
attribute @p generic.movement_speed modifier remove 4fb0fab4-429d-4170-96ca-71b1cb95416d
attribute @p generic.attack_damage modifier remove b82177e2-ce24-43af-bd44-9536415f25eb
attribute @p generic.armor modifier remove d540d8d4-2b26-4d51-8424-5651dff35387
attribute @p generic.max_health modifier remove 4f7f1be4-2ff1-4f96-b42f-96b8553c28b2
execute if entity @s[nbt={Item:{tag:{display:{Name:'{"text": "Delta Δ","italic": false}'}}}}] run attribute @p generic.movement_speed modifier add 4fb0fab4-429d-4170-96ca-71b1cb95416d "Rune attribute" 0.04 add
execute if entity @s[nbt={Item:{tag:{display:{Name:'{"text": "Sigma Σ","italic": false}'}}}}] run attribute @p generic.attack_damage modifier add b82177e2-ce24-43af-bd44-9536415f25eb "Rune attribute" 2 add
execute if entity @s[nbt={Item:{tag:{display:{Name:'{"text": "Gamma Γ","italic": false}'}}}}] run attribute @p generic.armor modifier add d540d8d4-2b26-4d51-8424-5651dff35387 "Rune attribute" 7 add
execute if entity @s[nbt={Item:{tag:{display:{Name:'{"text": "Phi Ψ","italic": false}'}}}}] run attribute @p generic.max_health modifier add 4f7f1be4-2ff1-4f96-b42f-96b8553c28b2 "Rune attribute" 8 add
execute if entity @s[nbt={Item:{tag:{display:{Name:'{"text": "Phi Ψ","italic": false}'}}}}] run effect give @p instant_health 1 1 true
kill @s
