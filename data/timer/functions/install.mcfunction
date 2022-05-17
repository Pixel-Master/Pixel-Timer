#setup the thing
scoreboard objectives add sekunden dummy
scoreboard objectives add minuten dummy 
scoreboard objectives add stunden dummy
scoreboard objectives add tick dummy
scoreboard objectives add status dummy
scoreboard objectives add show dummy
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
tellraw @s {"text":"§lTimer §r§fis ready to start!"}
scoreboard players add #time sekunden 0
scoreboard players add #time stunden 0
scoreboard players add #time minuten 0
scoreboard players add #time status 0
scoreboard players add #time show 0
