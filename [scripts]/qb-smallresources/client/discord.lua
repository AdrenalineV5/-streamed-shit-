
local onlinePlayers = 0
RegisterNetEvent('rich:TakePlayers')
AddEventHandler('rich:TakePlayers', function(count)
    onlinePlayers = count
end)

Citizen.CreateThread(function()
    SetDiscordAppId(tonumber(GetConvar("RichAppId", "868857606272331816")))
    SetDiscordRichPresenceAsset(GetConvar("RichAssetId", "logo_name"))
    while true do
        Citizen.Wait(2000)
        TriggerServerEvent('rich:GetPlayers')
        SetRichPresence(onlinePlayers.."/128 Players")
    end
end)
