local label =
[[ 
  
    ANANIN RUHUNA PASPAS
   
    Kaypuz Tarafından Yaratıldı
]]

-- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

-- Grabs the latest version number from the web GitHub
PerformHttpRequest( "--https://wolfknight98.github.io/wk_wars2x_web/version.txt--", function( err, text, headers )
	-- Wait to reduce spam
	Citizen.Wait( 2000 )

	-- Print the branding!
	print( label )

	-- Get the current resource version
	local curVer = GetCurrentVersion()

	print( "  ||    Şimdiki Versiyonu: " .. curVer )

	if ( text ~= nil ) then
		-- Print latest version
		print( "  ||    En Son Önerilen Sürüm: " .. text .."\n  ||" )

		-- If the versions are different, print it out
		if ( text ~= curVer ) then
			print( "  ||    ^1NewCarPackKaypuz sürümünüz güncel değil, en son sürümü almak için Github gönderisini ziyaret edin.\n^0  \\\\\n" )
		else
			print( "  ||    ^2NewCarPackKaypuz Güncel!\n^0  ||\n  \\\\\n" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "  ||    ^1En son sürüm bilgileri alınırken bir hata oluştu.\n^0  ||\n  \\\\\n" )
	end

	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "NewCarPackKaypuz" ) then
		print( "^1Hata: Kaynak adı NewCarPackKaypuz değil, kaynakla ilgili sorunlar olmasını bekliyoruz. Herhangi bir sorun olmadığından emin olmak için lütfen kaynak adını şu şekilde bırakın NewCarPackKaypuz^0\n\n" )
	end
end )