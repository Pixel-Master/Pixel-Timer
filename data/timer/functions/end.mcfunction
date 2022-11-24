tellraw @a ["",{"text":"\n\n§3§lPixel Timer", "clickEvent":{"action":"open_url","value":"https://github.com/Pixel-Master/Pixel-Timer"}}, {"text":"§l§4finished!\n\n§l§2Time needed: §f"},{"score":{"name":"#time","objective":"hour"}},{"text":":"},{"score":{"name":"#time","objective":"minute"}},{"text":":"},{"score":{"name":"#time","objective":"second"}},{"text":"\n"}]

scoreboard players set #time status 3
execute if score #place settings matches 2 run bossbar set pixeltimer color green
playsound minecraft:entity.ender_dragon.death ambient @a
