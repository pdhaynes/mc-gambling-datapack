execute unless score #machine2slot1 Slots matches 2 run return 0
execute unless score #machine2slot2 Slots matches 2 run return 0
execute unless score #machine2slot3 Slots matches 2 run return 0

tellraw @a {"text": "!! REDSTONE JACKPOT !!", "color": "red"}

scoreboard players set #redstonemaxwin_active Slots 1
scoreboard players set #redstonemaxwin Slots 64