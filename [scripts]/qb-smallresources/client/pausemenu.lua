function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', '~r~Adrenaline Roleplay ~w~ | ~r~ID:~w~ ' .. GetPlayerServerId(PlayerId()) .. " | ~r~Website: ~w~adrenalinerp.uk ~w~")
end)
