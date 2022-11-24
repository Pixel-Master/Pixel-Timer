tellraw @s {"text":"§lThe Pixel Timer §rdisplays the time in §2the Bossbar§r!"}
scoreboard players set #place settings 2
bossbar set pixeltimer visible true
execute if score #time status matches 1 if score #show settings matches 1 run bossbar set pixeltimer color blue
