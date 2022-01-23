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
PerformHttpRequest( "https://wolfknight98.github.io/wk_wars2x_web/version.txt", function( err, text, headers )
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
			print( "  ||    ^1Your Wraith ARS 2X version is outdated, visit the FiveM forum post to get the latest version.\n^0  \\\\\n" )
		else
			print( "  ||    ^2 NewCarPackKaypuz Güncel!\n^0  ||\n  \\\\\n" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "  ||    ^1There was an error getting the latest version information.\n^0  ||\n  \\\\\n" )
	end

	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "wk_wars2x" ) then
		print( "^1ERROR: Resource name is not wk_wars2x, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as wk_wars2x^0\n\n" )
	end
end )