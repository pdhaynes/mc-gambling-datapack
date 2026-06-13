execute if score #machine2slot3_timer Slots matches 0 run scoreboard players set #machine2_calculate_payout Slots 1
execute unless score #machine2slot3_timer Slots matches 1.. run return 0

execute store result score #machine2slot3 Slots run random value 1..7
execute if score #machine2slot3 Slots matches 1 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:gold_ingot"}
execute if score #machine2slot3 Slots matches 2 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:redstone"}
execute if score #machine2slot3 Slots matches 3 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:diamond"}
execute if score #machine2slot3 Slots matches 4 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:melon_slice"}
execute if score #machine2slot3 Slots matches 5 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:heart_of_the_sea"}
execute if score #machine2slot3 Slots matches 6 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:sweet_berries"}
execute if score #machine2slot3 Slots matches 7 run data modify entity @e[tag=machine2slot3,limit=1] Item set value {id:"minecraft:rotten_flesh"}