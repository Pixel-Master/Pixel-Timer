#status 0=nothing 1=running 2=paused 3=stopped
scoreboard players set #time status 1
scoreboard players set #show settings 1
execute if score #place settings matches 2 run bossbar set pixeltimer visible true
execute if score #place settings matches 2 run bossbar set pixeltimer color blue
title @a title "§3§lTimer §2started!"
tellraw @a ["",{"text":"§3§lPixel Timer","clickEvent":{"action":"open_url","value":"https://github.com/Pixel-Master/Pixel-Timer"}},{"text": " §2started!"}]
playsound minecraft:entity.ender_dragon.growl ambient @a
