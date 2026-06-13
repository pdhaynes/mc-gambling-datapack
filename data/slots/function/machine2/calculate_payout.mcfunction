execute if score #machine2_calculate_payout Slots matches 1 run scoreboard players set #machine2_calculate_payout Slots 0
#execute if score #machine2slot3_timer Slots matches 0 run playsound minecraft:block.note_block.trumpet_weathered master @a -6 -58 -4 5 .1
execute if score #machine2slot3_timer Slots matches 0 run scoreboard players set #machine2slot3_timer Slots -1

execute run function slots:machine2/jackpots/check_diamond_jackpot
execute run function slots:machine2/jackpots/check_gold_jackpot
execute run function slots:machine2/jackpots/check_redstone_jackpot
execute run function slots:machine2/jackpots/check_melon_jackpot
execute run function slots:machine2/bonuses/check_berry_bonus
execute run function slots:machine2/bonuses/check_dirty_meat_bonus

# If dirty meat appears in spin, cancels out all minor wins also plays a sound
#playsound minecraft:block.note_block.trumpet_weathered master @a ~ ~ ~ 5 .1
#execute if score #machine2slot1 Slots matches 7 run scoreboard players set #minor_payout Slots 0
#execute if score #machine2slot2 Slots matches 7 run scoreboard players set #minor_payout Slots 0
#execute if score #machine2slot3 Slots matches 7 run scoreboard players set #minor_payout Slots 0 

execute if score #diamondmaxwin_active Slots matches 1 run return 0
execute if score #goldmaxwin_active Slots matches 1 run return 0
execute if score #redstonemaxwin_active Slots matches 1 run return 0
execute if score #melonmaxwin_active Slots matches 1 run return 0

## TWO IN A ROW
#tellraw @a "Begin calculate two in a row"
# Diamonds two in a row 
execute if score #machine2slot1 Slots matches 3 if score #machine2slot2 Slots matches 3 run scoreboard players add #minor_payout Slots 10
execute if score #machine2slot2 Slots matches 3 if score #machine2slot3 Slots matches 3 run scoreboard players add #minor_payout Slots 10

# Gold two in a row
execute if score #machine2slot1 Slots matches 1 if score #machine2slot2 Slots matches 1 run scoreboard players add #minor_payout Slots 7
execute if score #machine2slot2 Slots matches 1 if score #machine2slot3 Slots matches 1 run scoreboard players add #minor_payout Slots 7

# Redstone two in a row
execute if score #machine2slot1 Slots matches 2 if score #machine2slot2 Slots matches 2 run scoreboard players add #minor_payout Slots 5
execute if score #machine2slot2 Slots matches 2 if score #machine2slot3 Slots matches 2 run scoreboard players add #minor_payout Slots 5
# data modify storage slots:data last_symbol set value "Redstone"

# Melon two of a kind
execute if score #machine2slot1 Slots matches 4 if score #machine2slot2 Slots matches 4 run scoreboard players add #minor_payout Slots 3
execute if score #machine2slot2 Slots matches 4 if score #machine2slot3 Slots matches 4 run scoreboard players add #minor_payout Slots 3

## Check if Dirty Meat stole the payout
execute if score #dirtymeat_exists Slots matches 1 if score #minor_payout Slots matches 1.. run tellraw @a [{"text":"Dirty meat stole your payout! Payout: ","color":"red"},{"score":{"name":"#minor_payout","objective":"Slots"},"color":"gold"}]
execute if score #dirtymeat_exists Slots matches 1 run scoreboard players set #minor_payout Slots 0

execute if score #minor_payout Slots matches 1.. run scoreboard players set #minor_payout_active Slots 1
execute if score #minor_payout_active Slots matches 1 run tellraw @a [{"text":"Two in a row! Payout: ","color":"green"},{"score":{"name":"#minor_payout","objective":"Slots"},"color":"gold"}]
execute if score #minor_payout_active Slots matches 1 run playsound minecraft:block.note_block.harp master @a -6 -58 -4 5 2

## ONE OF A KIND
# Only checks if a two of a kind wasnt hit
execute if score #minor_payout_active Slots matches 1 run return 0
# tellraw @a "Begin calculate one of a kind"

execute if score #machine2slot1 Slots matches 3 run scoreboard players add #minor_payout Slots 1
execute if score #machine2slot2 Slots matches 3 run scoreboard players add #minor_payout Slots 1
execute if score #machine2slot3 Slots matches 3 run scoreboard players add #minor_payout Slots 1

## Check if Dirty Meat stole the payout
execute if score #dirtymeat_exists Slots matches 1 if score #minor_payout Slots matches 1.. run tellraw @a [{"text":"Dirty meat stole your payout! Payout: ","color":"red"},{"score":{"name":"#minor_payout","objective":"Slots"},"color":"gold"}]
execute if score #dirtymeat_exists Slots matches 1 run scoreboard players set #minor_payout Slots 0
execute if score #dirtymeat_exists Slots matches 1 run scoreboard players set #dirtymeat_exists Slots 0

execute if score #minor_payout Slots matches 1.. run scoreboard players set #minor_payout_active Slots 1
execute if score #minor_payout_active Slots matches 1 run tellraw @a {"text":"One diamond!", "color":"green"}
execute if score #minor_payout_active Slots matches 1 run playsound minecraft:block.note_block.harp master @a -6 -58 -4 5 2
