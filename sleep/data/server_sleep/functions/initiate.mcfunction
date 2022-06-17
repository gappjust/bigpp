
function server_sleep:settings/data_pack/default

scoreboard players set #server_sleep n 1

tellraw @a ["",{"text":"Server Sleep data pack initiated."}]