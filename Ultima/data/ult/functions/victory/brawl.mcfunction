# Since the code operates on living players to determine who wins, the most recent killer is the only "living" player
    tag @a[tag=!killer] remove alive
    function ult:victory
