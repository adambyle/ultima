scoreboard objectives add n dummy
scoreboard objectives add q dummy
scoreboard objectives add gid dummy

scoreboard players add gid q 1
scoreboard players operation @a gid = gid q

scoreboard players set game q 0

team add spect {"text": "Spectating","color": "blue"}

team add play {"text": "Playing","color": "green"}
