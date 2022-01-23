fx_version 'adamant'
game 'gta5'


name "NewCarPackKaypuz"
description "Araç"
author "Kaypuz"
version "1.0.2"


files {
    'data/**/*.meta',
    'data/**/*.lua',
}

server_script "version.lua"

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'