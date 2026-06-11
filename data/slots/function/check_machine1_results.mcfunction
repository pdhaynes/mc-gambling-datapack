# 3 In a Row Wins
### Diamonds
execute if score #machine1slot1 Slots matches 3 if score #machine1slot2 Slots matches 3 if score #machine1slot3 Slots matches 3 run function slots:max_diamond
### Gold
execute if score #machine1slot1 Slots matches 1 if score #machine1slot2 Slots matches 1 if score #machine1slot3 Slots matches 1 run function slots:max_gold
### Redstone 
execute if score #machine1slot1 Slots matches 2 if score #machine1slot2 Slots matches 2 if score #machine1slot3 Slots matches 2 run function slots:max_redstone
### Melon
execute if score #machine1slot1 Slots matches 4 if score #machine1slot2 Slots matches 4 if score #machine1slot3 Slots matches 4 run function slots:max_melon

function slots:machine1_calculate_minor_payout