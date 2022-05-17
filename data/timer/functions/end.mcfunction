tellraw @a ["",{"text":"§4§lTimer §ris §4over!\n\n§l§2Time needed: §f"},{"score":{"name":"#time","objective":"stunden"}},{"text":":"},{"score":{"name":"#time","objective":"minuten"}},{"text":":"},{"score":{"name":"#time","objective":"sekunden"}},{"text":"\n"}]
scoreboard players set #time status 3
playsound minecraft:entity.ender_dragon.death ambient @a
