# 3 In a Row Wins
### Diamonds
#execute run tellraw Sirkillurass "Starting 3 In A Row Check"
execute if score #machine1slot1 Slots matches 3 if score #machine1slot2 Slots matches 3 if score #machine1slot3 Slots matches 3 run function slots:max_diamond
#execute run tellraw Sirkillurass "Finished Diamond check"

### Gold
execute if score #machine1slot1 Slots matches 1 if score #machine1slot2 Slots matches 1 if score #machine1slot3 Slots matches 1 run function slots:max_gold
#execute run tellraw Sirkillurass "Finished Gold check"

### Redstone 
execute if score #machine1slot1 Slots matches 2 if score #machine1slot2 Slots matches 2 if score #machine1slot3 Slots matches 2 run function slots:max_redstone
#execute run tellraw Sirkillurass "Finished Redstone check"

### Melon
execute if score #machine1slot1 Slots matches 4 if score #machine1slot2 Slots matches 4 if score #machine1slot3 Slots matches 4 run function slots:max_melon
#execute run tellraw Sirkillurass "Finished Melon check"

function slots:machine1_calculate_minor_payout