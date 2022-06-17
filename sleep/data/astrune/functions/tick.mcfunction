
execute as @a[predicate=astrune:player/tick] run function astrune:player/tick

execute if score #enable_astrune_data_packs n matches 1 run function #astrune:tick
