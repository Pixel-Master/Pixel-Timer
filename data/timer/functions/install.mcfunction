#Setup the thing
scoreboard objectives add second dummy
scoreboard objectives add minute dummy 
scoreboard objectives add hour dummy
scoreboard objectives add tick dummy
scoreboard objectives add status dummy
scoreboard objectives add ssttings dummy
scoreboard objectives add show dummy
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
scoreboard players add #time second 0
scoreboard players add #time hour 0
scoreboard players add #time minute 0
scoreboard players add #time status 0
scoreboard players add #time show 0
scoreboard players add #showwhenpaused settings 0
tellraw @s {"text":"§lTimer §r§fis ready to start!"}