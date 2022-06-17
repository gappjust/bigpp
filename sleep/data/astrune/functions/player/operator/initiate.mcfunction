
tellraw @s[tag=!op] ["",{"text":"Astrune> ","color":"#4d00db"},{"text":"You are now registered as an operator","color":"gray"}]
tellraw @s[tag=op] ["",{"text":"Astrune> ","color":"#4d00db"},{"text":"You are already registered as an operator","color":"gray"}]

execute as @s[tag=!op] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.5 0

tag @s add op
