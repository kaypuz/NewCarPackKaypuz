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
PerformHttpRequest( "https://raw.githubusercontent.com/kaypuz/NewCarPackKaypuz_web/main/version.txt", function( err, text, headers )
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
			print( "^1NewCarPackKaypuz sürümünüz güncel değil, en son sürümü almak için Github gönderisini ziyaret edin.^0" )
		else
			print( "^2NewCarPackKaypuz Güncel!^0" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "^1En son sürüm bilgileri alınırken bir hata oluştu.^0" )
	end

	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "NewCarPackKaypuz" ) then
		print( "^1Hata: Kaynak adı NewCarPackKaypuz değil, kaynakla ilgili sorunlar olmasını bekliyoruz. Herhangi bir sorun olmadığından emin olmak için lütfen kaynak adını şu şekilde bırakın NewCarPackKaypuz^0" )
	end
end )