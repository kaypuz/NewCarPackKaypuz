local label =
[[ 
    Kaypuz Tarafından Yaratıldı
]]

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

PerformHttpRequest( "https://raw.githubusercontent.com/kaypuz/NewCarPackKaypuz_web/main/version.txt", function( err, text, headers )
	Citizen.Wait( 2000 )

	print( label )
	local curVer = GetCurrentVersion()

	print( "Şimdiki Versiyonu:" .. curVer )

	if ( text ~= nil ) then
		print( "En Son Önerilen Sürüm:" .. text .."" )

		if ( text ~= curVer ) then
			print( "^1NewCarPackKaypuz sürümünüz güncel değil, en son sürümü almak için Github gönderisini ziyaret edin.^0" )
		else
			print( "^2NewCarPackKaypuz Güncel!^0" )
		end
	else
		print( "^1En son sürüm bilgileri alınırken bir hata oluştu.^0" )
	end

	if ( GetCurrentResourceName() ~= "NewCarPackKaypuz" ) then
		print( "^1Hata: Kaynak adı NewCarPackKaypuz değil, kaynakla ilgili sorunlar olmasını bekliyoruz. Herhangi bir sorun olmadığından emin olmak için lütfen kaynak adını şu şekilde bırakın NewCarPackKaypuz^0" )
	end
end )