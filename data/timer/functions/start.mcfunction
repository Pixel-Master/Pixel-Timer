#status 0=nothing 1=running 2=paused 3=stopped
scoreboard players set #time status 1
scoreboard players set #time show 1
title @a title "§l§4Timer §rstarted!"
tellraw @a {"text":"§3§lPixel Timer §2started!"}
playsound minecraft:entity.ender_dragon.growl ambient @a
