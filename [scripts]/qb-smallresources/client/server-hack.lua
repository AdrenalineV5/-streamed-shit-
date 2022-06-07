local hashes = {}

Citizen.CreateThread(function()
  hashes = {
    ['sendNewMail'] = exports['md5']:hash('qb-phone:server:sendNewMail')
  }
end)

RegisterNetEvent("qb-serverhack:start")
AddEventHandler("qb-serverhack:start", function()
  heist = true
  tags = true
  
  Animacja() -- animation 
  QBCore.Functions.Progressbar("smoke_joint", "Crashing Servers...", 7000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function()
		
		heist = false
        tags = false
   end)
   
   QBCore.Functions.Notify("Hack complete wait for the email..", "success")
   
   Citizen.Wait(10000)
   
   QBCore.Functions.Notify("New Email", "error")
   TriggerServerEvent(hashes['sendNewMail'], {
		sender = "Unknown Number",
		subject = "",
		message = "Nice work on that last job money will be transferred to your bank soon..",
		button = {}
	})
   
   Citizen.Wait(10000) -- 120s
   local name = GetPlayerName(-1)
   if(name == nil) then
        name =  GetPlayerName(QBCore.Functions.GetPlayerData().source)
   end
   TriggerServerEvent("qb-log:server:NotifyStaff", "Player " .. name .. " just triggered an invalid event!")
  -- TriggerServerEvent("qb-serverhack:reward")	
end)
