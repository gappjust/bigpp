
execute if predicate astrune:stars at @s run particle end_rod ~ 384 ~ 128 128 128 0.1 192 force @s

execute if score @s astrune matches 1.. run function astrune:command/astrune
scoreboard players enable @s astrune

execute if score @s deal_damage.ast matches 1.. run function astrune:player/deal_damage

execute if score @s death.ast matches 1.. run function astrune:player/death

execute if score @s kill_player.ast matches 1.. run function astrune:player/kill_player

execute if score @s leave_game.ast matches 1.. run function astrune:player/leave_game

execute if score @s take_damage.ast matches 1.. run function astrune:player/take_damage

execute if score @s trade.ast matches 1.. run function astrune:player/trade

execute if predicate astrune:player/advertisement run scoreboard players add @s n 1
execute if predicate astrune:player/advertisement if score @s n matches 5.. run function astrune:player/advertisement

execute if predicate astrune:help run title @s actionbar ["",{"text":"Use the command '/trigger astrune' to get familiar with Astrune's data packs"}]
