scoreboard players set #time status 0
scoreboard players set #time second 0
scoreboard players set #time minute 0
scoreboard players set #time hour 0
scoreboard players set #time tick 0
scoreboard players set #time show 0
title @a clear
tellraw @s ["",{"text":"§3§lPixel Timer","clickEvent":{"action":"open_url","value":"https://github.com/Pixel-Master/Pixel-Timer"}},{"text": " §rwas succesfull §8reseted!"}]
