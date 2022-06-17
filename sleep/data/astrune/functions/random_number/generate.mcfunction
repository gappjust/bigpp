
kill @e[type=area_effect_cloud,tag=astrune]
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["astrune"]}
execute store result score #astrune r run data get entity @e[type=minecraft:area_effect_cloud,limit=1,sort=random,tag=astrune] UUID[1] 1
