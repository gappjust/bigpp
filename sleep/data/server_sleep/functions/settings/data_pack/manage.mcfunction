
execute if score @s astrune matches 101 run scoreboard players add #sleep_requirement_type n 1
execute unless score #sleep_requirement_type n matches 0..3 run scoreboard players set #sleep_requirement_type n 0

execute if score @s astrune matches 102 run scoreboard players add #required_sleep_ratio n 10
execute if score @s astrune matches 103 run scoreboard players add #required_sleep_ratio n 1
execute if score @s astrune matches 104 run scoreboard players remove #required_sleep_ratio n 1
execute if score @s astrune matches 105 run scoreboard players remove #required_sleep_ratio n 10
execute if score #required_sleep_ratio n matches 101.. run scoreboard players set #required_sleep_ratio n 100
execute if score #required_sleep_ratio n matches ..-1 run scoreboard players set #required_sleep_ratio n 0

execute if score @s astrune matches 106 run scoreboard players add #required_sleep_amount n 10
execute if score @s astrune matches 107 run scoreboard players add #required_sleep_amount n 1
execute if score @s astrune matches 108 run scoreboard players remove #required_sleep_amount n 1
execute if score @s astrune matches 109 run scoreboard players remove #required_sleep_amount n 10
execute if score #required_sleep_amount n matches ..-1 run scoreboard players set #required_sleep_amount n 0

execute if score @s astrune matches 110 run scoreboard players add #skip_night_type n 1
execute unless score #skip_night_type n matches 0..2 run scoreboard players set #skip_night_type n 0

execute if score @s astrune matches 111 run scoreboard players add #sleep_message n 1
execute unless score #sleep_message n matches 0..1 run scoreboard players set #sleep_message n 0

execute if score @s astrune matches 112 run scoreboard players add #player_sleep_message n 1
execute unless score #player_sleep_message n matches 0..1 run scoreboard players set #player_sleep_message n 0

execute if score @s astrune matches 199 run function server_sleep:settings/data_pack/default

scoreboard players set @s[scores={astrune=100..199}] astrune 100

execute if score @s astrune matches 100 run tellraw @s ["",{"text":"Server Sleep settings: ","color":"#4d00db"}]
execute if score @s astrune matches 100 run tellraw @s ["",{"text":"Open your chat and click on text to toggle settings","color":"gray","italic":"true"}]
execute if score @s astrune matches 100 run execute if score #sleep_requirement_type n matches 0 run tellraw @s ["",{"text":"Required sleep value type: ","color":"gray"},{"text":"Percentage","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 101"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Requires a percentage of players in the overworld to be sleeping in order to skip night\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 run execute if score #sleep_requirement_type n matches 1 run tellraw @s ["",{"text":"Required sleep value type: ","color":"gray"},{"text":"Flat amount","color":"yellow","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 101"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Requires a certain amount of players in the overworld to be sleeping in order to skip night. If this value exceeds the total number of players in the overworld, then the data pack will skip night if all players are sleeping.\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 run execute if score #sleep_requirement_type n matches 2 run tellraw @s ["",{"text":"Required sleep value type: ","color":"gray"},{"text":"Minimum","color":"yellow","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 101"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Chooses which value is SMALLER (either the required sleep ratio or required sleep amount) and skips night if that condition is met\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 run execute if score #sleep_requirement_type n matches 3 run tellraw @s ["",{"text":"Required sleep value type: ","color":"gray"},{"text":"Maximum","color":"yellow","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 101"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Chooses which value is LARGER (either the required sleep ratio or required sleep amount) and skips night if that condition is met\n\nClick to toggle","color":"gray"}]}}}]

execute if score @s astrune matches 100 run execute unless score #sleep_requirement_type n matches 1 run tellraw @s ["",{"text":"Required sleep ratio: ","color":"gray"},{"score":{"name":"#required_sleep_ratio","objective":"n"},"color":"yellow"},{"text":"%","color":"yellow"},{"text":" +10","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 102"}},{"text":" +1","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 103"}},{"text":" -1","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 104"}},{"text":" -10","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 105"}}]
execute if score @s astrune matches 100 run execute if score #sleep_requirement_type n matches 1..3 run tellraw @s ["",{"text":"Required sleep amount: ","color":"gray"},{"score":{"name":"#required_sleep_amount","objective":"n"},"color":"yellow"},{"text":" +10","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 106"}},{"text":" +1","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 107"}},{"text":" -1","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 108"}},{"text":" -10","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 109"}}]

execute if score @s astrune matches 100 run tellraw @s ["",{"text":""}]

execute if score @s astrune matches 100 run execute if score #skip_night_type n matches 0 run tellraw @s ["",{"text":"Skip night type: ","color":"gray"},{"text":"Day","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 110"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"When night is skipped, change the time to day\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 run execute if score #skip_night_type n matches 1 run tellraw @s ["",{"text":"Skip night type: ","color":"gray"},{"text":"Dawn","color":"yellow","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 110"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"When night is skipped, change the time to dawn (so you can see the sun rise)\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 run execute if score #skip_night_type n matches 2 run tellraw @s ["",{"text":"Skip night type: ","color":"gray"},{"text":"Day or Dawn","color":"yellow","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 110"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"When night is skipped, change the time to day or dawn (equal chance of each occuring)\n\nClick to toggle","color":"gray"}]}}}]

execute if score @s astrune matches 100 run tellraw @s ["",{"text":""}]

execute if score @s astrune matches 100 unless score #sleep_message n matches 1 run tellraw @s ["",{"text":"Sleep message: ","color":"gray"},{"text":"False","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 111"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Sends a message to all players whenever anyone sleeps\n\nWorks best with smaller servers\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 if score #sleep_message n matches 1 run tellraw @s ["",{"text":"Sleep message: ","color":"gray"},{"text":"True","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 111"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Sends a message to all players whenever anyone sleeps\n\nWorks best with smaller servers\n\nClick to toggle","color":"gray"}]}}}]

execute if score @s astrune matches 100 if score #sleep_message n matches 1 unless score #player_sleep_message n matches 1 run tellraw @s ["",{"text":"Player sleep message: ","color":"gray"},{"text":"False","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 112"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Adds a message about who needs to sleep\n\nClick to toggle","color":"gray"}]}}}]
execute if score @s astrune matches 100 if score #sleep_message n matches 1 if score #player_sleep_message n matches 1 run tellraw @s ["",{"text":"Player sleep message: ","color":"gray"},{"text":"True","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 112"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Adds a message about who needs to sleep\n\nClick to toggle","color":"gray"}]}}}]

execute if score @s astrune matches 100 run tellraw @s ["",{"text":""}]

execute if score @s astrune matches 100 run tellraw @s ["",{"text":"Use default settings","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 199"}}]
