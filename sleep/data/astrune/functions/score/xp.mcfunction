
scoreboard objectives add ln1 dummy
scoreboard objectives add ln2 dummy
scoreboard objectives add ln3 dummy

scoreboard players set @s ln1 0
scoreboard players set @s ln2 0
scoreboard players set @s ln1 0

execute if entity @s[level=0..16] run scoreboard players operation @s ln1 = @s level.ast
execute if entity @s[level=0..16] run scoreboard players operation @s ln1 *= @s ln1
execute if entity @s[level=0..16] run scoreboard players operation @s ln3 += @s ln1
execute if entity @s[level=0..16] run scoreboard players operation @s ln1 = @s level.ast
execute if entity @s[level=0..16] run scoreboard players operation @s ln1 *= #6 n
execute if entity @s[level=0..16] run scoreboard players operation @s ln3 += @s ln1

execute if entity @s[level=17..31] run scoreboard players operation @s ln1 = @s level.ast
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 *= @s ln1
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 *= #5 n
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 *= #5 n
execute if entity @s[level=17..31] run scoreboard players operation @s ln3 += @s ln1
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 = @s level.ast
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 *= #5 n
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 *= #9 n
execute if entity @s[level=17..31] run scoreboard players operation @s ln1 *= #9 n
execute if entity @s[level=17..31] run scoreboard players operation @s ln3 -= @s ln1
execute if entity @s[level=17..31] run scoreboard players add @s ln3 3600

execute if entity @s[level=32..] run scoreboard players operation @s ln1 = @s level.ast
execute if entity @s[level=32..] run scoreboard players operation @s ln1 *= @s ln1
execute if entity @s[level=32..] run scoreboard players operation @s ln1 *= #5 n
execute if entity @s[level=32..] run scoreboard players operation @s ln1 *= #9 n
execute if entity @s[level=32..] run scoreboard players operation @s ln3 += @s ln1
execute if entity @s[level=32..] run scoreboard players operation @s ln1 = @s level.ast
execute if entity @s[level=32..] run scoreboard players operation @s ln1 *= #5 n
execute if entity @s[level=32..] run scoreboard players operation @s ln1 *= #325 n
execute if entity @s[level=32..] run scoreboard players operation @s ln3 -= @s ln1
execute if entity @s[level=32..] run scoreboard players add @s ln3 22200

execute if entity @s[level=17..] run scoreboard players operation @s ln3 /= #10 n

execute store result score @s ln2 run xp query @s points

scoreboard players operation @s ln3 += @s ln2

scoreboard players operation @s xp = @s ln3

tag @s remove xp_1
tag @s remove xp_2
tag @s remove xp_4
tag @s remove xp_8
tag @s remove xp_16
tag @s remove xp_32
tag @s remove xp_64
tag @s remove xp_128
tag @s remove xp_256
tag @s remove xp_512
tag @s remove xp_1024
tag @s remove xp_2048
tag @s remove xp_4096
tag @s remove xp_8192
tag @s remove xp_16384
tag @s remove xp_32768
tag @s remove xp_65536
tag @s remove xp_131072
tag @s remove xp_262144
tag @s remove xp_524288
tag @s remove xp_1048576
tag @s remove xp_2097152

execute if entity @s[scores={ln3=2097152..}] run tag @s add xp_2097152
execute if entity @s[scores={ln3=2097152..}] run scoreboard players remove @s ln3 2097152

execute if entity @s[scores={ln3=1048576..}] run tag @s add xp_1048576
execute if entity @s[scores={ln3=1048576..}] run scoreboard players remove @s ln3 1048576

execute if entity @s[scores={ln3=524288..}] run tag @s add xp_524288
execute if entity @s[scores={ln3=524288..}] run scoreboard players remove @s ln3 524288

execute if entity @s[scores={ln3=262144..}] run tag @s add xp_262144
execute if entity @s[scores={ln3=262144..}] run scoreboard players remove @s ln3 262144

execute if entity @s[scores={ln3=131072..}] run tag @s add xp_131072
execute if entity @s[scores={ln3=131072..}] run scoreboard players remove @s ln3 131072

execute if entity @s[scores={ln3=65536..}] run tag @s add xp_65536
execute if entity @s[scores={ln3=65536..}] run scoreboard players remove @s ln3 65536

execute if entity @s[scores={ln3=32768..}] run tag @s add xp_32768
execute if entity @s[scores={ln3=32768..}] run scoreboard players remove @s ln3 32768

execute if entity @s[scores={ln3=16384..}] run tag @s add xp_16384
execute if entity @s[scores={ln3=16384..}] run scoreboard players remove @s ln3 16384

execute if entity @s[scores={ln3=8192..}] run tag @s add xp_8192
execute if entity @s[scores={ln3=8192..}] run scoreboard players remove @s ln3 8192

execute if entity @s[scores={ln3=4096..}] run tag @s add xp_4096
execute if entity @s[scores={ln3=4096..}] run scoreboard players remove @s ln3 4096

execute if entity @s[scores={ln3=2048..}] run tag @s add xp_2048
execute if entity @s[scores={ln3=2048..}] run scoreboard players remove @s ln3 2048

execute if entity @s[scores={ln3=1024..}] run tag @s add xp_1024
execute if entity @s[scores={ln3=1024..}] run scoreboard players remove @s ln3 1024

execute if entity @s[scores={ln3=512..}] run tag @s add xp_512
execute if entity @s[scores={ln3=512..}] run scoreboard players remove @s ln3 512

execute if entity @s[scores={ln3=256..}] run tag @s add xp_256
execute if entity @s[scores={ln3=256..}] run scoreboard players remove @s ln3 256

execute if entity @s[scores={ln3=128..}] run tag @s add xp_128
execute if entity @s[scores={ln3=128..}] run scoreboard players remove @s ln3 128

execute if entity @s[scores={ln3=64..}] run tag @s add xp_64
execute if entity @s[scores={ln3=64..}] run scoreboard players remove @s ln3 64

execute if entity @s[scores={ln3=32..}] run tag @s add xp_32
execute if entity @s[scores={ln3=32..}] run scoreboard players remove @s ln3 32

execute if entity @s[scores={ln3=16..}] run tag @s add xp_16
execute if entity @s[scores={ln3=16..}] run scoreboard players remove @s ln3 16

execute if entity @s[scores={ln3=8..}] run tag @s add xp_8
execute if entity @s[scores={ln3=8..}] run scoreboard players remove @s ln3 8

execute if entity @s[scores={ln3=4..}] run tag @s add xp_4
execute if entity @s[scores={ln3=4..}] run scoreboard players remove @s ln3 4

execute if entity @s[scores={ln3=2..}] run tag @s add xp_2
execute if entity @s[scores={ln3=2..}] run scoreboard players remove @s ln3 2

execute if entity @s[scores={ln3=1..}] run tag @s add xp_1
execute if entity @s[scores={ln3=1..}] run scoreboard players remove @s ln3 1

scoreboard objectives remove ln1
scoreboard objectives remove ln2
scoreboard objectives remove ln3
