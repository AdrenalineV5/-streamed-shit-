fx_version "cerulean"
game "gta5"

version "3.0"

ui_page "html/index.html"

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    'config.lua',
    'server.lua',
}

files {
    'html/index.html',
    'html/img/*.png',
    'html/script.js',
    'html/style.css',
}

data_file 'DLC_ITYP_REQUEST' 'stream/booster_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/prop_deckbox_01.ytyp'
