function AddTextEntry(key, value)
    Citizen.InvokeNative(GetHashKey(“ADD_TEXT_ENTRY”), key, value)
end
    
Citizen.CreateThread(function()
    -- SPOILERS
    AddTextEntry('0xC5380F11', 'Spoiler 1')
    AddTextEntry('0xCEEF227F', 'Spoiler 2')
    AddTextEntry('0x2ABCDA19', 'Spoiler 3')
    AddTextEntry('0xB20AE8B7', 'Spoiler 4')
    AddTextEntry('0x84580D52', 'Spoiler 5')
    AddTextEntry('0x8E9521CC', 'Spoiler 6')
    
    -- ROOFS
    AddTextEntry('0x56FB972E', 'Roof 1')
    AddTextEntry('0x6885BA42', 'Roof 2')

    -- HOODS
    AddTextEntry('0x7722C96E', 'Hood 1')
    AddTextEntry('0x294FADC9', 'Hood 2')
    AddTextEntry('0x555605D5', 'Hood 3')
    AddTextEntry('0x868F6847', 'Hood 4')
    AddTextEntry('0xC0C45CB8', 'Hood 5')
    AddTextEntry('0x724B3FBF', 'Hood 6')
end)