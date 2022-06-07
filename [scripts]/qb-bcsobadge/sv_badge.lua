local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('bcsobadge:open')
AddEventHandler('bcsobadge:open', function(ID, targetID, type)
	local Player = QBCore.Functions.GetPlayer(ID)

	local data = {
		name = Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname,
		dob = Player.PlayerData.charinfo.dob
	}

	TriggerClientEvent('bcsobadge:open', targetID, data)
	TriggerClientEvent( 'bcsobadge:shot', targetID, source )
end)

QBCore.Functions.CreateUseableItem('bcsobadge', function(source, item)
    TriggerClientEvent('bcsobadge:openPD', source, true)
end)