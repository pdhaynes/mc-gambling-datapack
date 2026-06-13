execute if score #machine2slot1 Slots matches 7 run scoreboard players set #dirtymeat_exists Slots 1
execute if score #machine2slot2 Slots matches 7 run scoreboard players set #dirtymeat_exists Slots 1
execute if score #machine2slot3 Slots matches 7 run scoreboard players set #dirtymeat_exists Slots 1

execute unless score #machine2slot1 Slots matches 7 run return 0
execute unless score #machine2slot2 Slots matches 7 run return 0
execute unless score #machine2slot3 Slots matches 7 run return 0

tellraw @a {"text": "EEYUCK!", "color":"red"}

scoreboard players set #dirtymeatbonus_active Slots 1
scoreboard players set #dirtymeatbonus Slots 1