-- local animDict = "missminuteman_1ig_2"
-- local anim = "handsup_enter"
-- local handsup = false

-- RegisterKeyMapping('hu', 'Put your hands up', 'KEYBOARD', 'X')

-- RegisterCommand('hu', function()
	-- RequestAnimDict(animDict)
	-- while not HasAnimDictLoaded(animDict) do
		-- Citizen.Wait(100)
	-- end
    -- if not handsup then
        -- TaskPlayAnim(PlayerPedId(), animDict, anim, 8.0, 8.0, -1, 50, 0, false, false, false)
    -- else
        -- ClearPedTasks(PlayerPedId())
    -- end
    -- handsup = not handsup
-- end, false)


CreateThread(function()
	local handsup = false
	while true do
		Wait(1)
		local playerPed = PlayerPedId()
		local oneped = GetPlayerPed(-1)
		if not IsPedInAnyVehicle(oneped, false) then
		if IsControlJustReleased(0, 252) then
			RequestAnimDict('missminuteman_1ig_2')
			while not HasAnimDictLoaded('missminuteman_1ig_2') do
				Wait(100)
			end
			if handsup then
				handsup = false
				ClearPedSecondaryTask(playerPed)
			else
				handsup = true
				TaskPlayAnim(playerPed, "missminuteman_1ig_2", "handsup_base", 2.0, 2.5, -1, 49, 0, 0, 0, 0 )
			end

			TriggerEvent("debug", 'Handsup: ' .. (handsup and 'Enabled' or 'Disabled'), (handsup and 'success' or 'error'))
		end
		end
	end
end)