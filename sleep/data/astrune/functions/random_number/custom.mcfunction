
function astrune:random_number/generate

scoreboard players set @s r 0

scoreboard players operation @s r = #astrune r

scoreboard players operation @s r %= @s rmax
scoreboard players add @s r 1