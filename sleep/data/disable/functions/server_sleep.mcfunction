
function astrune:datapack/disable

function server_sleep:constants/remove

scoreboard players set #server_sleep n 0

datapack disable "file/serversleep"
datapack disable "file/serversleep.zip"

tellraw @a ["",{"text":"Disabled Server Sleep data pack."}]
