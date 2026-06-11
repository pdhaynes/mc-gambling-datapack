# MAJOR WINS

### DIAMONDS MAX WIN PAYOUT ###
execute if score #diamondmaxwin_active Slots matches 1 run summon item -702 79 15 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #diamondmaxwin_active Slots matches 1 run scoreboard players remove #diamondmaxwin Slots 1

# Reset
execute if score #diamondmaxwin_active Slots matches 1 if score #diamondmaxwin Slots matches ..0 run scoreboard players set #goldmaxwin_active Slots 0


### GOLD MAX WIN PAYOUT ###
execute if score #goldmaxwin_active Slots matches 1 run summon item -702 79 15 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #goldmaxwin_active Slots matches 1 run scoreboard players remove #goldmaxwin Slots 1

# Reset
execute if score #goldmaxwin_active Slots matches 1 if score #goldmaxwin Slots matches ..0 run scoreboard players set #goldmaxwin_active Slots 0


### REDSTONE MAX WIN PAYOUT ###
execute if score #redstonemaxwin_active Slots matches 1 run summon item -702 79 15 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #redstonemaxwin_active Slots matches 1 run scoreboard players remove #redstonemaxwin Slots 1

# Reset
execute if score #redstonemaxwin_active Slots matches 1 if score #redstonemaxwin Slots matches ..0 run scoreboard players set #redstonemaxwin_active Slots 0


### MELON MAX WIN PAYOUT ###
execute if score #melonmaxwin_active Slots matches 1 run summon item -702 79 15 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #melonmaxwin_active Slots matches 1 run scoreboard players remove #melonmaxwin Slots 1

# Reset
execute if score #melonmaxwin_active Slots matches 1 if score #melonmaxwin Slots matches ..0 run scoreboard players set #melonmaxwin_active Slots 0


# MINOR WINS

## 1 DIAMOND = 4DM  (3)
## 1 GOLD = 3DM     (1)
## 1 REDSTONE = 2DM (2)
## 1 MELON = 1DM    (4)
execute if score #minor_payout_active Slots matches 1 run summon item -702 79 15 {Item:{id:"minecraft:diamond",Count:1b}}
execute if score #minor_payout_active Slots matches 1 run scoreboard players remove #minor_payout Slots 1

# Reset
execute if score #minor_payout_active Slots matches 1 if score #minor_payout Slots matches ..0 run scoreboard players set #minor_payout_active Slots 0