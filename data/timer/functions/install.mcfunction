#Setup the thing
scoreboard objectives add second dummy
scoreboard objectives add minute dummy 
scoreboard objectives add hour dummy
scoreboard objectives add tick dummy
scoreboard objectives add status dummy
scoreboard objectives add settings dummy
scoreboard objectives add show dummy
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
scoreboard players add #time second 0
scoreboard players add #time hour 0
scoreboard players add #time minute 0
scoreboard players add #time tick 0
scoreboard players add #time status 0
scoreboard players add #showtimewhenpaused settings 0
scoreboard players set #show settings 1
scoreboard players set #place settings 1
tellraw @s {"text":"§lThe Pixel Timer §r§fis ready to start!"}
#Bossbar
bossbar add pixeltimer ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text":""}]
bossbar set pixeltimer color blue
bossbar set pixeltimer players @a
bossbar set pixeltimer style progress
bossbar set pixeltimer value 100
bossbar set pixeltimer visible false