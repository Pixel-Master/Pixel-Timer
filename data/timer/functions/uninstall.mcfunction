scoreboard objectives remove second
scoreboard objectives remove tick
scoreboard objectives remove minute
scoreboard objectives remove hour
scoreboard objectives remove status
scoreboard objectives remove show
scoreboard objectives remove settings
bossbar set pixeltimer visible false
bossbar remove pixeltimer
gamerule sendCommandFeedback true
gamerule commandBlockOutput true
tellraw @s ["",{"text":"The "},{"text":"Pixel Timer","bold":true,"clickEvent":{"action":"open_url","value":"https://Pixel-Master.github.io/Pixel-TImer/"}},{"text":" is","color":"gray"},{"text":" removed","bold":true,"color":"dark_red"},{"text":" from this world, to prevent installing at rejoin remove the Datapack from this World or use","color":"gray"},{"text":" /datapack disable \"file/Pixel-Timer\"","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/datapack disable \"file/Pixel-Timer\""}},{"text":".\n\nTo install it again use ","color":"gray"},{"text":"/datapack enable \"file/Pixel-Timer\"","color":"dark_green","clickEvent":{"action":"suggest_command","value":"/datapack enable \"file/Pixel-Timer\""}},{"text":" and ","color":"gray"},{"text":"/function timer:install","color":"dark_green","clickEvent":{"action":"suggest_command","value":"/function timer:install"}},{"text":" ","color":"#CE9178"}]