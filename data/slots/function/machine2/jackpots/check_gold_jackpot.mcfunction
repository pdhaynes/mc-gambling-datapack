execute unless score #machine2slot1 Slots matches 1 run return 0
execute unless score #machine2slot2 Slots matches 1 run return 0
execute unless score #machine2slot3 Slots matches 1 run return 0

tellraw @a {"text": "!!! GOLD JACKPOT !!!", "color": "yellow"}

scoreboard players set #goldmaxwin_active Slots 1
scoreboard players set #goldmaxwin Slots 128