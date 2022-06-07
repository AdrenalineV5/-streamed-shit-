Citizen.CreateThread(function()
	while true do
		SetVehicleDensityMultiplierThisFrame(0.3)
	    SetPedDensityMultiplierThisFrame(0.7)
	    SetParkedVehicleDensityMultiplierThisFrame(0.5)
		SetScenarioPedDensityMultiplierThisFrame(0.1, 0.1)
		Citizen.Wait(3)
	end
end)