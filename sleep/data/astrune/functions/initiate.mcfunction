
function astrune:datapack/default

scoreboard players add #astrune id.ast 0
execute if score #astrune id.ast matches 0..1 run scoreboard players set #astrune id.ast 2

scoreboard players add #total deaths.ast 0
scoreboard players add #total player_kills.ast 0
scoreboard players add #total trades.ast 0
scoreboard players operation Total deaths.ast = #total deaths.ast
scoreboard players operation Total player_kills.ast = #total player_kills.ast
scoreboard players operation Total trades.ast = #total trades.ast

tellraw @a ["",{"text":"Astrune> ","color":"#4d00db"},{"text":"Thank you for installing my data packs!","color":"gray"}]

scoreboard players set #reload_message n 1
scoreboard players set #astrune n 1
scoreboard players set #enable_astrune_data_packs n 1