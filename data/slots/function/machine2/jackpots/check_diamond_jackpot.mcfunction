execute unless score #machine2slot1 Slots matches 3 run return 0
execute unless score #machine2slot2 Slots matches 3 run return 0
execute unless score #machine2slot3 Slots matches 3 run return 0

tellraw @a {"text": "!!! MEGA DIAMOND JACKPOT !!!", "color": "aqua"}

scoreboard players set #diamondmaxwin_active Slots 1
scoreboard players set #diamondmaxwin Slots 256