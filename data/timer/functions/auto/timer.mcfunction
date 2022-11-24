#Actionbar Timer
#nothing
execute if score #place settings matches 1 if score #show settings matches 1 if score #time status matches 0 run title @a actionbar ["",{"text":"The Timer","color":"red"},{"text":" is "},{"text":"ready","color":"red"},{"text":"!"}]
#timer
execute if score #place settings matches 1 if score #show settings matches 1 if score #time status matches 1 run title @a actionbar ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text":""}]
#timer over
execute if score #place settings matches 1 if score #show settings matches 1 if score #time status matches 3 if score #showtimewhenpaused settings matches 0 run title @a actionbar "§l§2The Timer §fis §4over!"
#timer paused
execute if score #place settings matches 1 if score #show settings matches 1 if score #time status matches 2 if score #showtimewhenpaused settings matches 0 run title @a actionbar "§l§2The Timer §fis §2paused!"
#0:0:0 (finished)
execute if score #place settings matches 1 if score #show settings matches 1 if score #time status matches 3 if score #showtimewhenpaused settings matches 1 run title @a actionbar ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text": " §2(finished)"}]
#0:0:0 (paused)
execute if score #place settings matches 1 if score #show settings matches 1 if score #time status matches 2 if score #showtimewhenpaused settings matches 1 run title @a actionbar ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text": " §4(paused)"}]

#Bossbar Timer
#nothing
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 0 run bossbar set pixeltimer color pink
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 0 run bossbar set pixeltimer name ["",{"text":"The Timer","color":"red"},{"text":" is "},{"text":"ready","color":"red"},{"text":"!"}]
#visible
execute if score #place settings matches 2 run bossbar set pixeltimer players @a
#timer
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 1 run bossbar set pixeltimer name ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text":""}]
#timer over
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 3 if score #showtimewhenpaused settings matches 0 run bossbar set pixeltimer name "§l§2The Timer §fis §2over!"
#timer paused
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 2 if score #showtimewhenpaused settings matches 0 run bossbar set pixeltimer name "§l§2The Timer §fis §4paused!"
#0:0:0 (finished)
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 3 if score #showtimewhenpaused settings matches 1 run bossbar set pixeltimer name ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text": " §2(finished)"}]
#0:0:0 (paused)
execute if score #place settings matches 2 if score #show settings matches 1 if score #time status matches 2 if score #showtimewhenpaused settings matches 1 run bossbar set pixeltimer name ["",{"text":"§f§l","bold":true},{"score":{"name":"#time","objective":"hour"}},{"text":"§r:§l§4"},{"score":{"name":"#time","objective":"minute"}},{"text":"§r:§l"},{"score":{"name":"#time","objective":"second"}},{"text": " §4(paused)"}]

# Timer Core
execute if score #time second matches 60 run scoreboard players add #time minute 1
execute if score #time second matches 60 run scoreboard players remove #time second 60
execute if score #time minute matches 60 run scoreboard players add #time hour 1
execute if score #time minute matches 60 run scoreboard players remove #time minute 60
execute if score #time tick matches 20 run scoreboard players add #time second 1
execute if score #time tick matches 20 run scoreboard players remove #time tick 20
execute if score #time status matches 1 run scoreboard players add #time tick 1
