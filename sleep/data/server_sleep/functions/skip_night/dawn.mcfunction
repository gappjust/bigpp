
execute store result score #daytime n run time query daytime

execute unless score #daytime n matches 22800..23250 run time add 400
execute unless score #daytime n matches 22800..23250 run schedule function server_sleep:skip_night/dawn 1s

execute if score #daytime n matches 22800..23250 run function server_sleep:time/dawn
