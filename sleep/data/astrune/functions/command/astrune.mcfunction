
execute if score @s astrune matches 2 run tellraw @s[tag=!op] ["",{"text":"You cannot use these commands","color":"red"}]
execute if score @s astrune matches 2 run scoreboard players reset @s[tag=!op] astrune
execute if score @s astrune matches 100.. run tellraw @s[tag=!op] ["",{"text":"You cannot use these commands","color":"red"}]
execute if score @s astrune matches 100.. run scoreboard players reset @s[tag=!op] astrune

advancement grant @s[scores={astrune=1..}] only astrune:help

tag @s[scores={astrune=21},tag=!stars.ast] add toggle
tag @s[scores={astrune=21},tag=toggle] add stars.ast
tag @s[scores={astrune=21},tag=!toggle] remove stars.ast

execute if score @s[tag=op] astrune matches 31 run scoreboard players add #reload_message n 1
execute unless score #reload_message n matches 0..1 run scoreboard players set #reload_message n 0

execute if score @s[tag=op] astrune matches 32 run scoreboard players add #enable_astrune_data_packs n 1
execute unless score #enable_astrune_data_packs n matches 0..1 run scoreboard players set #enable_astrune_data_packs n 0

function #astrune:settings_data_pack_manage

tag @s remove toggle

execute at @s run playsound entity.enderman.teleport master @s[scores={astrune=1..}] ~ ~ ~ 0.25 2 0.25
scoreboard players set @s[scores={astrune=11..20}] astrune 1
scoreboard players set @s[scores={astrune=21..30}] astrune 2
scoreboard players set @s[scores={astrune=31..40},tag=!op] astrune 1
scoreboard players set @s[scores={astrune=31..40},tag=op] astrune 3
scoreboard players set @s[scores={astrune=41..50}] astrune 4

tellraw @s[scores={astrune=1}] ["",{"text":"Astrune: ","color":"#4d00db"}]
tellraw @s[scores={astrune=2}] ["",{"text":"Settings: ","color":"#4d00db"}]
tellraw @s[scores={astrune=3}] ["",{"text":"Data Pack Settings: ","color":"#4d00db"}]
tellraw @s[scores={astrune=4}] ["",{"text":"Commands: ","color":"#4d00db"}]

execute if score @s astrune matches 1..3 run function astrune:command/message/accessability

execute unless score #reload_message n matches 1 run tellraw @s[scores={astrune=3},tag=op] ["",{"text":"Reload message: ","color":"gray"},{"text":"Disabled","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 31"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Reload Message\n","color":"red"},{"text":"Adds a default-looking reload message after using the command '/reload'\n\nClick to toggle","color":"gray"}]}}}]
execute if score #reload_message n matches 1 run tellraw @s[scores={astrune=3},tag=op] ["",{"text":"Reload message: ","color":"gray"},{"text":"Enabled","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 31"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Reload Message\n","color":"green"},{"text":"Adds a default-looking reload message after using the command '/reload'\n\nClick to toggle","color":"gray"}]}}}]

execute unless score #enable_astrune_data_packs n matches 1 run tellraw @s[scores={astrune=3},tag=op] ["",{"text":"Data packs: ","color":"gray"},{"text":"Disabled","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 32"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Data packs\n","color":"red"},{"text":"Determines whether data packs (made by Astrune) will run\nThey will still be listed as enabled in the following:\n - advancements gui\n - using the command '/datapack list'\n\nClick to toggle","color":"gray"}]}}}]
execute if score #enable_astrune_data_packs n matches 1 run tellraw @s[scores={astrune=3},tag=op] ["",{"text":"Data packs: ","color":"gray"},{"text":"Enabled","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 32"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Data packs\n","color":"green"},{"text":"Determines whether data packs (made by Astrune) will run\nThey will still be listed as enabled in the following:\n - advancements gui\n - using the command '/datapack list'\n\nClick to toggle","color":"gray"}]}}}]

tellraw @s[scores={astrune=3}] ["",{"text":"Default","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger astrune set 39"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to use default settings (does not affect the data packs listed below)","color":"gray"}]}}}]

execute if score @s astrune matches 1 run function astrune:command/message/version
tellraw @s[scores={astrune=1}] ["",{"text":"Settings","color":"gray","clickEvent":{"action":"run_command","value":"/trigger astrune set 2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle settings","color":"gray"}]}}}]
tellraw @s[scores={astrune=1}] ["",{"text":"Commands","color":"gray","clickEvent":{"action":"run_command","value":"/trigger astrune set 4"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to see all commands provided by data packs made by Astrune","color":"gray"}]}}}]
tellraw @s[scores={astrune=1}] ["",{"text":"Discord","color":"#7289DA","clickEvent":{"action":"open_url","value":"https://discord.gg/FBDfbyY"},"hoverEvent":{"action":"show_text","value":["",{"text":"Discord\n","color":"#7289DA"},{"text":"In Astrune's discord, you will be able to:\n - Ask for help with data packs and other projects\n - Suggest new ideas for projects (you will be credited)\n - Ask to play games with others\n - Share memes and talk to others about whatever you like\n\nYou will also get an advancement if you use the code found in the discord\n\nClick to join Astrune's discord","color":"gray"}]}},{"text":" (Copy)","clickEvent":{"action":"copy_to_clipboard","value":"https://discord.gg/FBDfbyY"},"hoverEvent":{"action":"show_text","value":["",{"text":"Click to copy link to clipboard"}]}}]
tellraw @s[scores={astrune=1}] ["",{"text":"Youtube","color":"#FF0000","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCMHyVHeflZMFhyHiDp3hyYw/"},"hoverEvent":{"action":"show_text","value":["",{"text":"Youtube\n","color":"#FF0000"},{"text":"Check out my youtube channel for videos on projects and other stuff\n\nClick to go to Astrune's youtube channel","color":"gray"}]}}]



#Settings

tellraw @s[scores={astrune=2},tag=!stars.ast] ["",{"text":"Starry skies: ","color":"gray"},{"text":"Disabled","color":"red","clickEvent":{"action":"run_command","value":"/trigger astrune set 21"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Starry skies","color":"red"},{"text":"\nAdds extra stars to the night sky and end\n\nClick to toggle","color":"gray"}]}}}]
tellraw @s[scores={astrune=2},tag=stars.ast] ["",{"text":"Starry skies: ","color":"gray"},{"text":"Enabled","color":"green","clickEvent":{"action":"run_command","value":"/trigger astrune set 21"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Starry skies","color":"green"},{"text":"\nAdds extra stars to the night sky and end\n\nClick to toggle","color":"gray"}]}}}]

tellraw @s[scores={astrune=2},tag=op] ["",{"text":"Data Pack Settings","color":"gray","clickEvent":{"action":"run_command","value":"/trigger astrune set 3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to use toggle data pack settings","color":"gray"}]}}}]

execute if score #enable_astrune_data_packs n matches 1 if score @s astrune matches 3 run function #astrune:settings_data_pack_list

execute if score @s astrune matches 39 run function astrune:datapack/default

#Commands

execute if score @s astrune matches 4 run function #astrune:commands

tellraw @s[scores={astrune=2..99}] ["",{"text":"Home","color":"#4d00db","clickEvent":{"action":"run_command","value":"/trigger astrune set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to go to the astrune main menu","color":"gray"}]}}}]
tellraw @s[scores={astrune=100..999}] ["",{"text":"Back","color":"#4d00db","clickEvent":{"action":"run_command","value":"/trigger astrune set 3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to go to the data pack settings menu","color":"gray"}]}}}]

#Discord Code

advancement grant @s[scores={astrune=123031}] only astrune:discord

#Default

scoreboard players reset @s astrune
