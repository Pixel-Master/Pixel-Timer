scoreboard players set #time status 2
tellraw @a ["",{"text":"§3§lPixel Timer","clickEvent":{"action":"open_url","value":"https://github.com/Pixel-Master/Pixel-Timer"}},{"text": " §r§cpaused!"}]

execute if score #place settings matches 2 run bossbar set pixeltimer color red
