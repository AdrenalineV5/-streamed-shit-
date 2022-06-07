RegisterServerEvent('qb-serverhack:reward')
AddEventHandler('qb-serverhack:reward', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local price = math.random(1000,15000)
	
	
	--Player.Functions.AddMoney('bank', price, "Bank transfer - unknown ")
	TriggerClientEvent("qb-serverhack:notification", source, "Bank transfer from Unknown")
    TriggerEvent('qb-log:server:NotifyStaff', "Player just triggered invalid event qb-serverhack:reward Name : " .. GetPlayerName(src))
end)