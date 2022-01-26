fx_version 'adamant'
game 'gta5'


name "NewCarPackKaypuz"
description "Araç"
author "Kaypuz"
version "1.0.7"


files {
    'data/**/*.meta',
    'data/**/*.lua',
	'audioconfig/*.dat151.rel',
	'audioconfig/*.dat54.rel',
	'audioconfig/*.dat10.rel',
	'sfx/**/*.awc'
}

server_script "version.lua"

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'
data_file 'AUDIO_SYNTHDATA' 'audioconfig/bnr34ffeng_amp.dat'
data_file 'AUDIO_GAMEDATA' 'audioconfig/bnr34ffeng_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/bnr34ffeng_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_bnr34ffeng'

data_file 'AUDIO_SYNTHDATA' 'audioconfig/camls3v8_amp.dat'
data_file 'AUDIO_GAMEDATA' 'audioconfig/camls3v8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/camls3v8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_camls3v8'

data_file "AUDIO_SYNTHDATA" "audioconfig/lamavgineng_amp.dat"
data_file "AUDIO_GAMEDATA" "audioconfig/lamavgineng_game.dat"
data_file "AUDIO_SOUNDDATA" "audioconfig/lamavgineng_sounds.dat"
data_file "AUDIO_WAVEPACK" "sfx/dlc_lamavgineng"

data_file 'AUDIO_SYNTHDATA' 'audioconfig/bnr34ffeng_amp.dat'
data_file 'AUDIO_GAMEDATA' 'audioconfig/bnr34ffeng_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/bnr34ffeng_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_bnr34ffeng'