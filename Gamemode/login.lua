
function SWWritePlayerData( ply ,table, CharName, )	//lol got rid of long comment
	
	local SaveTable = util.TableToKeyValues(table)
	if(file.Exists("UserData"..ply:UniqueID().."/"..CharName..".txt")) then
	file.Write("UserData"..ply:UniqueID().."/"..CharName.."txt",SaveTable)
	end
end

function SWReadPlayerData( ply, CharName )
	if(file.Exists("UserData"..ply:UniqueID().."/Data.txt")) then
	local ReadTable = file.Read("UserData"..ply:UniqueID().."/Data.txt")
	table = util.KeyValuesToTable(ReadTable)
	end
return LoadTab
end


function SWSetPlayerData( ply )		//player data, and any files can access this

	 local PlayerData = {}				//table for the data (so i dont need 10000 params for the write func)
	
	PlayerData = {} 
	PlayerData = {
		Name = ply:Nick(), 
		Money = SWGetSWMoney(), 
		Team = GM:Team(),
		Class = SWGetClass(), 
		CombatLvl = SWGetCombatLvl(), 
		CombatXP = SWGetCombatXP(), 
		TotalCombatXP = SWGetTotalCombatXP(),
		RifleLvl = SWGetRifleLvl(),  
		RifleXP = SWGetRifleXP(), 
		TotalRifleXP = SWGetTotalRifleXP(),
		SaberXP = SWGetSaberXP(),
		SaberLvl = SWGetSaberLvl(),
		TotalSaberXP = SWGetTotalSaberXP(),
		}
	
	SWWritePlayerData( PlayerData )
end

function SWLogIn( ply ) // this is not finished Because you arnt calling this function anywhere therefore the function will never intialize. //will be initialised in PlayerInitialSpawn, and in the SW_menu vgui ?
	RunConsoleCommand("SW_login")
	local PlayerData = SWReadPlayerData( ply )
	PlayerInfo = PlayerData.ply:UniqueID()
	ply:PrintMessage(HUD_PRINTTALK, "[SW-O Mod] You were successfuly logged in!")
	ply:PrintMessage(HUD_PRINTTALK, "[SW-O Mod] Type \"!info\" to see your Player info.")
	
	
	return PlayerInfo
end

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
