fx_version 'cerulean'
game 'gta5'

author 'EnderDevelopment'
description 'Nova Air Defense System'
version '1.0.0'

client_scripts {
    'client.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua'
}

shared_scripts {
    'config.lua'
}

files {
    'database.sql'
}

dependencies {
    'es_extended'
}