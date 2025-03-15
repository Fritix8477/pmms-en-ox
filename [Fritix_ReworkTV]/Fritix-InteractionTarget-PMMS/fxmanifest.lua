fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Fritix'
description 'Interaction OX_TARGET pour le script PMMS'

version '1.5.0'

server_script {
	"@oxmysql/lib/MySQL.lua",
	'server/*.lua'
}

client_scripts {
	'client/*.lua'
}

shared_scripts {'@ox_lib/init.lua'}
