
execute as @s at @s store result score @s death_x.ast run data get entity @s Pos[0] 1
execute as @s at @s store result score @s death_y.ast run data get entity @s Pos[1] 1
execute as @s at @s store result score @s death_z.ast run data get entity @s Pos[2] 1
scoreboard players set @s death_d.ast 2
scoreboard players set @s[nbt={Dimension:"minecraft:the_nether"}] death_d.ast -1
scoreboard players set @s[nbt={Dimension:"minecraft:overworld"}] death_d.ast 0
scoreboard players set @s[nbt={Dimension:"minecraft:the_end"}] death_d.ast 1

scoreboard players add @s deaths.ast 1
scoreboard players add #total deaths.ast 1
scoreboard players operation Total deaths.ast = #total deaths.ast

advancement grant @s only astrune:player/death

scoreboard players operation #average deaths.ast = #total deaths.ast
scoreboard players operation #average deaths.ast /= #players.death.ast n
scoreboard players operation Average deaths.ast = #average deaths.ast

function #astrune:player/death

scoreboard players remove @s death.ast 1
scoreboard players reset @s[scores={death.ast=0}] death.ast
