function slots:machine2/slot1/roll
function slots:machine2/slot2/roll
function slots:machine2/slot3/roll

execute if score #machine2slot1_timer Slots matches 1.. run scoreboard players remove #machine2slot1_timer Slots 1
execute if score #machine2slot2_timer Slots matches 1.. run scoreboard players remove #machine2slot2_timer Slots 1
execute if score #machine2slot3_timer Slots matches 1.. run scoreboard players remove #machine2slot3_timer Slots 1

execute if score #machine2_calculate_payout Slots matches 1 run function slots:machine2/calculate_payout

### DIAMONDS MAX WIN PAYOUT ###
execute if score #diamondmaxwin_active Slots matches 1 run summon item -6 -58 -4 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #diamondmaxwin_active Slots matches 1 run scoreboard players remove #diamondmaxwin Slots 1
execute if score #diamondmaxwin_active Slots matches 1 if score #diamondmaxwin Slots matches ..0 run scoreboard players set #diamondmaxwin_active Slots 0


### GOLD MAX WIN PAYOUT ###
execute if score #goldmaxwin_active Slots matches 1 run summon item -6 -58 -4 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #goldmaxwin_active Slots matches 1 run scoreboard players remove #goldmaxwin Slots 1
execute if score #goldmaxwin_active Slots matches 1 if score #goldmaxwin Slots matches ..0 run scoreboard players set #goldmaxwin_active Slots 0


### REDSTONE MAX WIN PAYOUT ###
execute if score #redstonemaxwin_active Slots matches 1 run summon item -6 -58 -4 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #redstonemaxwin_active Slots matches 1 run scoreboard players remove #redstonemaxwin Slots 1
execute if score #redstonemaxwin_active Slots matches 1 if score #redstonemaxwin Slots matches ..0 run scoreboard players set #redstonemaxwin_active Slots 0


### MELON MAX WIN PAYOUT ###
execute if score #melonmaxwin_active Slots matches 1 run summon item -6 -58 -4 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #melonmaxwin_active Slots matches 1 run scoreboard players remove #melonmaxwin Slots 1
execute if score #melonmaxwin_active Slots matches 1 if score #melonmaxwin Slots matches ..0 run scoreboard players set #melonmaxwin_active Slots 0


### BERRY BONUS PAYOUT ###
execute if score #berrybonus_active Slots matches 1 run summon minecraft:experience_orb -6 -58 -4 {Value:1500}
execute if score #berrybonus_active Slots matches 1 run scoreboard players remove #berrybonus Slots 1
execute if score #berrybonus_active Slots matches 1 if score #berrybonus Slots matches ..0 run scoreboard players set #berrybonus_active Slots 0


### DIRTY MEAT BONUS PAYOUT ###
execute if score #dirtymeatbonus_active Slots matches 1 run summon minecraft:splash_potion -6 -58 -4 {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",duration:200,amplifier:0},{id:"minecraft:hunger",duration:200,amplifier:0}]}}},CustomName:'EEYUCK!',CustomNameVisible:1b}
execute if score #dirtymeatbonus_active Slots matches 1 run playsound minecraft:entity.ghast.death master @a -6 -58 -4 5 .1
execute if score #dirtymeatbonus_active Slots matches 1 run scoreboard players remove #dirtymeatbonus Slots 1
execute if score #dirtymeatbonus_active Slots matches 1 if score #dirtymeatbonus Slots matches ..0 run scoreboard players set #dirtymeatbonus_active Slots 0

execute if score #minor_payout_active Slots matches 1 run summon item -6 -58 -4 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #minor_payout_active Slots matches 1 run scoreboard players remove #minor_payout Slots 1

# Reset
execute if score #minor_payout_active Slots matches 1 if score #minor_payout Slots matches ..0 run scoreboard players set #minor_payout_active Slots 0