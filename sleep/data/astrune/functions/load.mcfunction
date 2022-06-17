
kill @e[type=armor_stand,tag=astspawn]
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["astspawn"]}

function astrune:constants/add

execute unless score #astrune n matches 1 run function astrune:initiate

execute if score #enable_astrune_data_packs n matches 1 run function #astrune:load

execute if score #reload_message n matches 1 run tellraw @a ["",{"text":"Reload complete."}]