
scoreboard players operation #required_sleeping_players n = #overworld_players n
scoreboard players operation #required_sleeping_players n *= #required_sleep_ratio n
scoreboard players operation #required_sleeping_players n /= #100 n

scoreboard players operation #required_sleeping_players n < #required_sleep_amount n
scoreboard players operation #required_sleeping_players n < #overworld_players n
