local QBCore = exports['qb-core']:GetCoreObject()

-- Citizen.CreateThread(function()
--     while QBCore == nil do
--         TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)
--         Citizen.Wait(100)
--     end
-- end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.25, 0.25)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 175)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local Getmecuh = PlayerPedId()
        local x,y,z = 764.86, -1359.0, 27.88
        local drawtext = "[~g~E~s~] Enter Recyclable Office"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 1169.11, -3194.26, -39.01)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 1169.11, -3194.26, -39.01
        local drawtext = "[~g~E~s~] Exit Recyclable Office"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 764.86, -1359.0, 27.88)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

--cokelab

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 887.31158, -953.5209, 39.212966
        local drawtext = "[~g~E~s~] Enter "
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 1088.7047, -3187.904, -38.99346)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

--[[Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 1088.7047, -3187.904, -38.99346
        local drawtext = "[~g~E~s~] Exit"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 887.31158, -953.5209, 39.212966)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)--]]

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 746.75518798828, -1400.094482421, 26.570837020874
        local drawtext = "[~g~E~s~] Enter Recyclable Center"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 1026.447265625, -3101.4375, -38.999881744385)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 1026.447265625, -3101.4375, -38.999881744385
        local drawtext = "[~g~E~s~] Exit Recyclable Center"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 746.75518798828, -1400.094482421, 26.570837020874)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = -1011.87, -480.246, 39.97
        local drawtext = "[~g~E~s~] Enter Chief Justice Office"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, -1003.2850341797, -478.16638183594, 50.027095794678)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = -1003.2850341797, -478.16638183594, 50.027095794678
        local drawtext = "[~g~E~s~] Exit Chief Justice Office"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, -1011.87, -480.246, 39.97)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

-----Casino Penthouse----
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 967.4, 63.99, 112.55
        local drawtext = "[~g~E~s~] Enter Penthouse"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 969.56, 63.17, 112.56)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 969.56, 63.17, 112.56
        local drawtext = "[~g~E~s~] Exit Penthouse"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 967.4, 63.99, 112.55)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

-----VBPD Elevators----

RegisterNetEvent("vbpdheli:elevator")
AddEventHandler("vbpdheli:elevator", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, -1107.276, -832.3542, 37.67525)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)
RegisterNetEvent("vbpdheli:elevator2")
AddEventHandler("vbpdheli:elevator2", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, -1098.491, -829.8677, 19.301691)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)
RegisterNetEvent("vbpd:elevator")
AddEventHandler("vbpd:elevator", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, -1090.305, -847.5803, 13.524906)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)
RegisterNetEvent("vbpd:elevator2")
AddEventHandler("vbpd:elevator2", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, -1092.433, -848.5537, 13.527137)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

-----Casino Elevators----

RegisterNetEvent("casino:terraceelevator")
AddEventHandler("casino:terraceelevator", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 964.62, 58.85, 112.55)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("casino:casinoelevator")
AddEventHandler("casino:casinoelevator", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 1085.57, 214.71, -49.2)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("casino:casinoroofelevator")
AddEventHandler("casino:casinoroofelevator", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 971.86, 51.93, 120.24)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("casino:casinoofficeelevator")
AddEventHandler("casino:casinoofficeelevator", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 1107.55, 243.2, -45.84)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

------Hospital Elevators-------

RegisterNetEvent("hospital:hopitalelevator1")
AddEventHandler("hospital:hopitalelevator1", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 329.81, -600.97, 43.28)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("hospital:hopitalelevator2")
AddEventHandler("hospital:hopitalelevator2", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 344.88, -586.06, 28.8)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("hospital:hopitalelevator3")
AddEventHandler("hospital:hopitalelevator3", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 331.49, -595.53, 43.28)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("hospital:hopitalelevator4")
AddEventHandler("hospital:hopitalelevator4", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 346.27, -582.80, 28.8)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)

RegisterNetEvent("hospital:hopitalelevator5")
AddEventHandler("hospital:hopitalelevator5", function(result)
    local Getmecuh = PlayerPedId()
    QBCore.Functions.Progressbar("open-brick", "Calling Elevator..", 6500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('dooranim')
    --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 339.86, -584.38, 74.16)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
    end)
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = -1090.27, 4940.40, 214.13
       -- local drawtext = "[~g~E~s~] Enter Penthouse |VIP ONLY|"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
        --    DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) and exports["rs-inventory"]:hasEnoughOfItem("rustykey",1,false) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 997.900001, -3200.95, -36.30)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 997.900001, -3200.95, -36.30
      --  local drawtext = "[~g~E~s~] Exit Penthouse"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
         --   DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, -1090.27, 4940.40, 214.13)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Getmecuh = PlayerPedId()
        local x,y,z = 68.24, -1574.26, 3.39
        local drawtext = "[~g~E~s~] Exit"
        local plyCoords = GetEntityCoords(Getmecuh)
        local distance = GetDistanceBetweenCoords(plyCoords.x,plyCoords.y,plyCoords.z,x,y,z,false)
        if distance <= 1.2 then
            DrawText3Ds(x,y,z, drawtext)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('dooranim')
                --TriggerEvent('InteractSound_CL:PlayOnOne', 'DoorOpen', 0.8)
                DoScreenFadeOut(400)
                Citizen.Wait(500)
                SetEntityCoords(Getmecuh, 68.87, -1569.79, 29.59)
                Citizen.Wait(500)
                DoScreenFadeIn(500)
            end
        end
    end
end)

local AllProps = {}
local HasProp = false

function AddProp(Name)
    if Config.PropList[Name] ~= nil then
      if not HasProp then
        HasProp = true
        RequestModelHash(Config.PropList[Name]['prop'])
        local CurrentProp = CreateObject(Config.PropList[Name]['hash'], 0, 0, 0, true, true, true)
        AttachEntityToEntity(CurrentProp, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), Config.PropList[Name]['bone-index']['bone']), Config.PropList[Name]['bone-index']['X'], Config.PropList[Name]['bone-index']['Y'], Config.PropList[Name]['bone-index']['Z'], Config.PropList[Name]['bone-index']['XR'], Config.PropList[Name]['bone-index']['YR'], Config.PropList[Name]['bone-index']['ZR'], true, true, false, true, 1, true)
        table.insert(AllProps, CurrentProp)
      end
    end
end

function RemoveProp()
  for k, v in pairs(AllProps) do
     NetworkRequestControlOfEntity(v)
     SetEntityAsMissionEntity(v, true, true)
     DetachEntity(v, 1, 1)
     DeleteEntity(v)
     DeleteObject(v)
  end
    AllProps = {}
    HasProp = false
end

function GetPropStatus()
  return HasProp
end

function RequestModelHash(Model)
  RequestModel(Model)
	while not HasModelLoaded(Model) do
	    Wait(1)
    end
end

AddEventHandler('onResourceStop', function(resource)
	RemoveProp()
end)
