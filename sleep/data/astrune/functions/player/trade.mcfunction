
scoreboard players add @s trades.ast 1
scoreboard players add #total trades.ast 1
scoreboard players operation Total trades.ast = #total trades.ast

advancement grant @s only astrune:player/trade

scoreboard players operation #average trades.ast = #total trades.ast
scoreboard players operation #average trades.ast /= #players.trade.ast n
scoreboard players operation Average trades.ast = #average trades.ast

function #astrune:player/trade

scoreboard players remove @s trade.ast 1
scoreboard players reset @s[scores={trade.ast=0}] trade.ast
