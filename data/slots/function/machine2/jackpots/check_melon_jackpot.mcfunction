execute unless score #machine2slot1 Slots matches 4 run return 0
execute unless score #machine2slot2 Slots matches 4 run return 0
execute unless score #machine2slot3 Slots matches 4 run return 0

tellraw @a {"text": "! MELON JACKPOT !", "color": "dark_red"}

scoreboard players set #melonmaxwin_active Slots 1
scoreboard players set #melonmaxwin Slots 32