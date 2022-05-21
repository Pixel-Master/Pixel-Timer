execute if score #time status matches 1 run title @a actionbar ["",{"text":"§f§l","bold":"true"},{"score":{"name":"#time","objective":"stunden"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minuten"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"sekunden"}},{"text":""}]
execute if score #time status matches 3 run title @a actionbar "§l§2The Timer §fis §4over!"
execute if score #time status matches 2 run title @a actionbar "§l§2The Timer §fis §2paused!"
execute if score #time seconds matches 60 run scoreboard players add #time minuten 1
execute if score #time seconds matches 60 run scoreboard players remove #time sekunden 60
execute if score #time minutes matches 60 run scoreboard players add #time stunden 1
execute if score #time minutes matches 60 run scoreboard players remove #time minuten 60
execute if score #time tick matches 20 run scoreboard players add #time sekunden 1
execute if score #time tick matches 20 run scoreboard players remove #time tick 20
execute if score #time status matches 1 run scoreboard players add #time tick 1
