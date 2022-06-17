
function astrune:random_number/0-1

execute if score #astrune r matches 0 run function server_sleep:skip_night/day
execute if score #astrune r matches 1 run function server_sleep:skip_night/dawn