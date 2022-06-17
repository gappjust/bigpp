
tag @s[name=Astrune] add op
tag @s[name=Astrune] add astrune
tag @s[name=Astrune] add id.ast

scoreboard players set @s[name=Astrune] id.ast 1

execute unless entity @s[tag=id.ast] run scoreboard players operation @s id.ast = #astrune id.ast
execute unless entity @s[tag=id.ast] run scoreboard players add #astrune id.ast 1

tag @s add id.ast
