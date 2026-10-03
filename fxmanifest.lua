fx_version 'cerulean'
game 'gta5'

author 'NovaAirDefenseSystem'
description 'FiveM script for air defense system compatible with ESX, QBCore, Qbox, and standalone modes. Must au'
version '1.0.0'

dependencies {
    'es_extended'
}

client_scripts {
    'client.lua',
    'client/*.lua'
}

server_scripts {
    'server.lua',
    'server/*.lua'
}

shared_scripts {
    'config.lua',
    'shared.lua'
}

ui_page 'html/index.html'

files {
    'html/*.html',
    'html/*.css',
    'html/*.js'
}
