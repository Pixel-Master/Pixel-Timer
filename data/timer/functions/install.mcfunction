#Setup the thing
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

scoreboard objectives add settings dummy
scoreboard players add #installed settings 0
execute if score #installed settings matches 0 run tellraw @s {"text":"§lThe Pixel Timer §r§fis ready to start!"}
execute if score #installed settings matches 1 run tellraw @s "§l§4Allready Installed!"
execute if score #installed settings matches 0 run scoreboard objectives add second dummy
execute if score #installed settings matches 0 run scoreboard objectives add minute dummy 
execute if score #installed settings matches 0 run scoreboard objectives add hour dummy
execute if score #installed settings matches 0 run scoreboard objectives add tick dummy
execute if score #installed settings matches 0 run scoreboard objectives add status dummy

execute if score #installed settings matches 0 run scoreboard players set #time second 0
execute if score #installed settings matches 0 run scoreboard players set #time hour 0
execute if score #installed settings matches 0 run scoreboard players set #time minute 0
execute if score #installed settings matches 0 run scoreboard players set #time tick 0
execute if score #installed settings matches 0 run scoreboard players set #time status 0
execute if score #installed settings matches 0 run scoreboard players set #showtimewhenpaused settings 1
execute if score #installed settings matches 0 run scoreboard players set #show settings 1
execute if score #installed settings matches 0 run scoreboard players set #place settings 1

#Bossbar
execute if score #installed settings matches 0 run bossbar add pixeltimer ""
execute if score #installed settings matches 0 run bossbar set pixeltimer style progress
execute if score #installed settings matches 0 run bossbar set pixeltimer value 100
execute if score #installed settings matches 0 run bossbar set pixeltimer visible false
execute if score #installed settings matches 0 run execute if score #show settings matches 1 run bossbar set pixeltimer visible true
execute if score #installed settings matches 0 run bossbar set pixeltimer color pink

#Prevent installing two tomes
execute if score #installed settings matches 0 run scoreboard players set #installed settings 1