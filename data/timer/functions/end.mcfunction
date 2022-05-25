tellraw @a ["",{"text":"\n\n§3§lPixel Timer §l§4finished!\n\n§l§2Time needed: §f"},{"score":{"name":"#time","objective":"hour"}},{"text":":"},{"score":{"name":"#time","objective":"minute"}},{"text":":"},{"score":{"name":"#time","objective":"second"}},{"text":"\n"}]
scoreboard players set #time status 3
playsound minecraft:entity.ender_dragon.death ambient @a
