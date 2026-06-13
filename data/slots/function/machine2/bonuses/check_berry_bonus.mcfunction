execute unless score #machine2slot1 Slots matches 6 run return 0
execute unless score #machine2slot2 Slots matches 6 run return 0
execute unless score #machine2slot3 Slots matches 6 run return 0

tellraw @a [{"text":"BERRIES! ","color":"dark_red"},{"text":"You get 30 XP levels!","color":"gold"}]

scoreboard players set #berrybonus_active Slots 1
scoreboard players set #berrybonus Slots 1