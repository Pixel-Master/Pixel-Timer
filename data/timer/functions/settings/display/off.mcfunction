scoreboard players set #show settings 0
tellraw @s {"text":"§lThe Pixel Timer §ris now §4hidden!"}
execute if score #place settings matches 2 run bossbar set pixeltimer visible false
