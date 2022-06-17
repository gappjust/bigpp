
execute store result score #daytime n run time query daytime

execute unless score #daytime n matches 0..450 run time add 400
execute unless score #daytime n matches 0..450 run schedule function server_sleep:skip_night/day 1s

execute if score #daytime n matches 0..450 run function server_sleep:time/day
