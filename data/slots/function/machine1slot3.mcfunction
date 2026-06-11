execute store result score #machine1slot3 Slots run random value 1..7
execute if score #machine1slot3 Slots matches 1 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:gold_ingot"}
execute if score #machine1slot3 Slots matches 2 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:redstone"}
execute if score #machine1slot3 Slots matches 3 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:diamond"}
execute if score #machine1slot3 Slots matches 4 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:melon_slice"}
execute if score #machine1slot3 Slots matches 5 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:pumpkin_pie"}
execute if score #machine1slot3 Slots matches 6 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:sweet_berries"}
execute if score #machine1slot3 Slots matches 7 run data modify entity @e[tag=machine1slot3,limit=1] Item set value {id:"minecraft:spider_eye"}