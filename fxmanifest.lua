fx_version 'adamant'
game 'gta5'


name "NewCarPackKaypuz"
description "Araç"
author "Kaypuz"
version "1.0.3"


files {
    'data/**/*.meta',
    'data/**/*.lua',
    'audionconfig/brabv8_game.dat151.rel',
    'audioconfig/brabv8_sounds.dat54.rel',
    'sfx/dlc_brabv8/brabv8.awc',
    'sfx/dlc_brabv8/brabv8_npc.awc'
}

server_script "version.lua"

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'
data_file 'AUDIO_GAMEDATA' 'audioconfig/brabv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/brabv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_brabv8'