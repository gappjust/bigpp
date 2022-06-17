
scoreboard players add @s player_kills.ast 1
scoreboard players add #total player_kills.ast 1
scoreboard players operation Total player_kills.ast = #total player_kills.ast

advancement grant @s only astrune:player/kill_player

scoreboard players operation #average player_kills.ast = #total player_kills.ast
scoreboard players operation #average player_kills.ast /= #players.kill_player.ast n
scoreboard players operation Average player_kills.ast = #average player_kills.ast

function #astrune:player/kill_player

scoreboard players remove @s kill_player.ast 1
scoreboard players reset @s[scores={kill_player.ast=0}] kill_player.ast
