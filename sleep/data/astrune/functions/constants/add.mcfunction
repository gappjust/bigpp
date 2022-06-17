
#Base
scoreboard objectives add astrune trigger
scoreboard objectives add id.ast dummy

#Temporary
scoreboard objectives add n dummy

scoreboard objectives add s dummy

scoreboard objectives add r dummy
scoreboard objectives add rmax dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add xp dummy



#Statistics
scoreboard objectives add deal_damage.ast custom:minecraft.damage_dealt
scoreboard objectives add take_damage.ast custom:minecraft.damage_taken

scoreboard objectives add death_d.ast dummy
scoreboard objectives add death_x.ast dummy
scoreboard objectives add death_y.ast dummy
scoreboard objectives add death_z.ast dummy

scoreboard objectives add death.ast deathCount
scoreboard objectives add deaths.ast dummy {"text":"Deaths","color":"dark_purple"}

scoreboard objectives add health.ast health {"text":"❤","color":"red"}

scoreboard objectives add kill_player.ast playerKillCount
scoreboard objectives add player_kills.ast dummy {"text":"Players Killed","color":"dark_red"}

scoreboard objectives add leave_game.ast custom:minecraft.leave_game

scoreboard objectives add level.ast level {"text":"Level","color":"green"}

scoreboard objectives add trade.ast custom:minecraft.traded_with_villager
scoreboard objectives add trades.ast dummy {"text":"Trades","color":"dark_green"}



#Values
scoreboard players set #-1 n -1
scoreboard players set #0 n 0
scoreboard players set #1 n 1
scoreboard players set #2 n 2
scoreboard players set #3 n 3
scoreboard players set #4 n 4
scoreboard players set #5 n 5
scoreboard players set #6 n 6
scoreboard players set #7 n 7
scoreboard players set #8 n 8
scoreboard players set #9 n 9
scoreboard players set #10 n 10
scoreboard players set #20 n 20
scoreboard players set #100 n 100
scoreboard players set #325 n 325
scoreboard players set #1000 n 1000
scoreboard players set #1200 n 1200
scoreboard players set #10000 n 10000
scoreboard players set #72000 n 72000
scoreboard players set #1728000 n 1728000



#Teams
team add astrune

team add default
team modify default color gray
team modify default seeFriendlyInvisibles false

team add spawn
team modify spawn color gray
team modify spawn collisionRule never
team modify spawn friendlyFire false
team modify spawn seeFriendlyInvisibles false

team add black
team modify black color black
team modify black seeFriendlyInvisibles false

team add dark_blue
team modify dark_blue color dark_blue
team modify dark_blue seeFriendlyInvisibles false

team add dark_green
team modify dark_green color dark_green
team modify dark_green seeFriendlyInvisibles false

team add dark_aqua
team modify dark_aqua color dark_aqua
team modify dark_aqua seeFriendlyInvisibles false

team add dark_red
team modify dark_red color dark_red
team modify dark_red seeFriendlyInvisibles false

team add dark_purple
team modify dark_purple color dark_purple
team modify dark_purple seeFriendlyInvisibles false

team add gold
team modify gold color gold
team modify gold seeFriendlyInvisibles false

team add gray
team modify gray color gray
team modify gray seeFriendlyInvisibles false

team add dark_gray
team modify dark_gray color dark_gray
team modify dark_gray seeFriendlyInvisibles false

team add blue
team modify blue color blue
team modify blue seeFriendlyInvisibles false

team add green
team modify green color green
team modify green seeFriendlyInvisibles false

team add aqua
team modify aqua color aqua
team modify aqua seeFriendlyInvisibles false

team add red
team modify red color red
team modify red seeFriendlyInvisibles false

team add light_purple
team modify light_purple color light_purple
team modify light_purple seeFriendlyInvisibles false

team add yellow
team modify yellow color yellow
team modify yellow seeFriendlyInvisibles false

team add white
team modify white color white
team modify white seeFriendlyInvisibles false

team join red Total
team join green Average
