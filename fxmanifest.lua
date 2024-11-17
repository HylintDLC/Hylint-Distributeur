fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author 'hylint'
description 'Hylint Distributeur OX.'
version '1.5'

dependencies { 'ox_lib', 'ox_target', 'ox_inventory'}

shared_scripts {'@ox_lib/init.lua'}

server_scripts {
	'server.lua'
}

client_scripts {
	'client.lua'
}
