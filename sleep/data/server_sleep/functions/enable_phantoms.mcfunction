
scoreboard players reset #overworld_players n
execute as @a[nbt={Dimension:"minecraft:overworld"}] run scoreboard players add #overworld_players n 1

scoreboard players reset #resting_players n
execute as @a[scores={time_since_rest=0}] run scoreboard players add #resting_players n 1

execute if score #sleep_requirement_type n matches 0 run function calculate:required_sleeping_players/percentage
execute if score #sleep_requirement_type n matches 1 run function calculate:required_sleeping_players/flat_amount
execute if score #sleep_requirement_type n matches 2 run function calculate:required_sleeping_players/minimum
execute if score #sleep_requirement_type n matches 3 run function calculate:required_sleeping_players/maximum


execute unless score #skipping_night n matches 1 if score #sleep_message n matches 1 run tellraw @a ["",{"selector":"@s","color":"gray","italic":"true"},{"text":" is sleeping","color":"gray","italic":"true"}]

execute unless score #skipping_night n matches 1 if score #sleep_message n matches 1 if score #resting_players n matches 1.. if score #resting_players n < #required_sleeping_players n run tellraw @a ["",{"text":"Players sleeping: ","color":"blue","italic":"true"},{"score":{"name":"#resting_players","objective":"n"},"color":"yellow","italic":"true"},{"text":" (need ","color":"gray","italic":"true"},{"score":{"name":"#required_sleeping_players","objective":"n"},"color":"gray","italic":"true"},{"text":" to skip night)","color":"gray","italic":"true"}]

execute if score #player_sleep_message n matches 1 unless score #skipping_night n matches 1 if score #sleep_message n matches 1 if score #overworld_players n matches 2..5 if score #resting_players n < #required_sleeping_players n run tellraw @a ["",{"text":"Players that need to sleep: ","color":"blue","italic":"true"},{"selector":"@a[scores={time_since_rest=1..},nbt={Dimension:\"minecraft:overworld\"}]","italic":"true"}]

execute unless score #skipping_night n matches 1 if score #sleep_message n matches 1 if score #resting_players n >= #required_sleeping_players n if score #overworld_players n matches 2.. run tellraw @a ["",{"text":"Skipping night...","color":"blue","italic":"true"}]
execute unless score #skipping_night n matches 1 if score #resting_players n >= #required_sleeping_players n if score #overworld_players n matches 2.. if score #skip_night_type n matches 0 run schedule function server_sleep:skip_night/day 1s
execute unless score #skipping_night n matches 1 if score #resting_players n >= #required_sleeping_players n if score #overworld_players n matches 2.. if score #skip_night_type n matches 1 run schedule function server_sleep:skip_night/dawn 1s
execute unless score #skipping_night n matches 1 if score #resting_players n >= #required_sleeping_players n if score #overworld_players n matches 2.. if score #skip_night_type n matches 2 run schedule function server_sleep:skip_night/day_or_dawn 1s

execute unless score #skipping_night n matches 1 if score #resting_players n >= #required_sleeping_players n if score #overworld_players n matches 2.. run scoreboard players set #skipping_night n 1

scoreboard players reset #overworld_players n
scoreboard players reset #resting_players n
scoreboard players reset #required_sleeping_players n

advancement revoke @s only server_sleep:sleep_in_bed