execute if score #time status matches 1 run title @a actionbar ["",{"text":"§f§l","bold":"true"},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text":""}]
execute if score #time status matches 3 run title @a actionbar "§l§2The Timer §fis §4over!"
execute if score #time status matches 2 run title @a actionbar "§l§2The Timer §fis §2paused!"
execute if score #time second matches 60 run scoreboard players add #time minute 1
execute if score #time second matches 60 run scoreboard players remove #time second 60
execute if score #time minute matches 60 run scoreboard players add #time hour 1
execute if score #time minute matches 60 run scoreboard players remove #time minute 60
execute if score #time tick matches 20 run scoreboard players add #time second 1
execute if score #time tick matches 20 run scoreboard players remove #time tick 20
execute if score #time status matches 1 run scoreboard players add #time tick 1
