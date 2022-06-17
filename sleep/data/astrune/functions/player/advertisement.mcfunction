
tellraw @s ["",{"text":"Astrune> ","color":"#4d00db"},{"text":"This world is run by a data pack made by Astrune. For help, questions, or if you're interested, join the ","color":"gray"},{"text":"Discord","color":"#7289DA","bold":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/FBDfbyY"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to join Astrune's discord","color":"gray"}]}}]

tellraw @s ["",{"text":"Astrune> ","color":"#4d00db"},{"text":"If you are an operator, click ","color":"gray"},{"text":"HERE","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function astrune:player/operator/initiate"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to register as an operator","color":"gray"}]}}]

advancement grant @s only astrune:player/advertisement

scoreboard players reset @s n