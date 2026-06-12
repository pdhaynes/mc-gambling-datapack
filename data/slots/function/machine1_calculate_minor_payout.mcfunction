# Slot 1
execute if score #machine1slot1 Slots matches 3 run scoreboard players add #minor_payout Slots 1
execute if score #machine1slot1 Slots matches 3 run tellraw Sirkillurass "machine1slot1 contains Diamond" 
# Slot 2
execute if score #machine1slot2 Slots matches 3 run scoreboard players add #minor_payout Slots 1
execute if score #machine1slot2 Slots matches 3 run tellraw Sirkillurass "machine1slot2 contains Diamond" 

# Slot 3
execute if score #machine1slot3 Slots matches 3 run scoreboard players add #minor_payout Slots 1
execute if score #machine1slot3 Slots matches 3 run tellraw Sirkillurass "machine1slot3 contains Diamond" 

# Let em know
execute if score #minor_payout Slots matches 1.. run scoreboard players set #minor_payout_active Slots 1
execute if score #minor_payout Slots matches 1.. run tellraw @a { "text": "Minor Payout achieved", "color": "green" }
