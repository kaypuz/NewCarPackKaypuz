local label =
[[ 
  
    ANANIN RUHUNA PASPAS ATILIR
   
    Kaypuz Tarafından Yaratıldı
]]

-- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

-- Grabs the latest version number from the web GitHub
<<<<<<< HEAD
PerformHttpRequest( "https://raw.githubusercontent.com/kaypuz/NewCarPackKaypuz_web/main/version.txt", function( err, text, headers )
=======
PerformHttpRequest( "--https://wolfknight98.github.io/wk_wars2x_web/version.txt--", function( err, text, headers )
>>>>>>> b7541ff2725c1a4241a8fa0694dd058e5f7312bb
	-- Wait to reduce spam
	Citizen.Wait( 2000 )

	-- Print the branding!
	print( label )

	-- Get the current resource version
	local curVer = GetCurrentVersion()

	print( "Şimdiki Versiyonu:" .. curVer )

	if ( text ~= nil ) then
		-- Print latest version
		print( "En Son Önerilen Sürüm:" .. text .."" )

		-- If the versions are different, print it out
		if ( text ~= curVer ) then
<<<<<<< HEAD
			print( "^1NewCarPackKaypuz sürümünüz güncel değil, en son sürümü almak için Github gönderisini ziyaret edin.^0" )
		else
			print( "^2NewCarPackKaypuz Güncel!^0" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "^1En son sürüm bilgileri alınırken bir hata oluştu.^0" )
=======
			print( "  ||    ^1NewCarPackKaypuz sürümünüz güncel değil, en son sürümü almak için Github gönderisini ziyaret edin.\n^0  \\\\\n" )
		else
			print( "  ||    ^2NewCarPackKaypuz Güncel!\n^0  ||\n  \\\\\n" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "  ||    ^1En son sürüm bilgileri alınırken bir hata oluştu.\n^0  ||\n  \\\\\n" )
>>>>>>> b7541ff2725c1a4241a8fa0694dd058e5f7312bb
	end

	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "NewCarPackKaypuz" ) then
<<<<<<< HEAD
		print( "^1Hata: Kaynak adı NewCarPackKaypuz değil, kaynakla ilgili sorunlar olmasını bekliyoruz. Herhangi bir sorun olmadığından emin olmak için lütfen kaynak adını şu şekilde bırakın NewCarPackKaypuz^0" )
=======
		print( "^1Hata: Kaynak adı NewCarPackKaypuz değil, kaynakla ilgili sorunlar olmasını bekliyoruz. Herhangi bir sorun olmadığından emin olmak için lütfen kaynak adını şu şekilde bırakın NewCarPackKaypuz^0\n\n" )
>>>>>>> b7541ff2725c1a4241a8fa0694dd058e5f7312bb
	end
end )