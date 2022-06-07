local QBCore = exports['qb-core']:GetCoreObject()
local spawnedPeds = {}

local hashes = {}

Citizen.CreateThread(function()
    hashes = {
        ['OpenInventory'] = exports['md5']:hash('inventory:server:OpenInventory'),
        ['RemoveItem'] = exports['md5']:hash("QBCore:Server:RemoveItem"),
        ['AddItem'] = exports['md5']:hash('QBCore:Server:AddItem')
    }
end)

---------------------------------------------------
---------------------PEDS--------------------------
---------------------------------------------------

CreateThread(function()
    while true do
        Wait(500)
        local playerCoords = GetEntityCoords(PlayerPedId())
	    for k,v in pairs(Config.GymPeds) do
	    	local playerCoords = GetEntityCoords(PlayerPedId())
	    	local distance = #(playerCoords - v.coords.xyz)
	    	if distance < Config.DistanceSpawn and not spawnedPeds[k] then
	    		local spawnedPed = NearGymPed(v.model, v.coords, v.gender, v.animDict, v.animName, v.scenario)
	    		spawnedPeds[k] = { spawnedPed = spawnedPed }
	    	end
	    	if distance >= Config.DistanceSpawn and spawnedPeds[k] then
	    		if Config.FadeIn then
	    			for i = 255, 0, -51 do
	    				Wait(50)
	    				SetEntityAlpha(spawnedPeds[k].spawnedPed, i, false)
	    			end
	    		end
	    		DeletePed(spawnedPeds[k].spawnedPed)
	    		spawnedPeds[k] = nil
	    	end
	    end
    end
end)

function NearGymPed(model, coords, gender, animDict, animName, scenario)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(50)
	end
	if Config.MinusOne then
		spawnedPed = CreatePed(Config.GenderNumbers[gender], model, coords.x, coords.y, coords.z - 1.0, coords.w, false, true)
	else
		spawnedPed = CreatePed(Config.GenderNumbers[gender], model, coords.x, coords.y, coords.z, coords.w, false, true)
	end
	SetEntityAlpha(spawnedPed, 0, false)
	if Config.Frozen then
		FreezeEntityPosition(spawnedPed, true)
	end
	if Config.Invincible then
		SetEntityInvincible(spawnedPed, true)
	end
	if Config.Stoic then
		SetBlockingOfNonTemporaryEvents(spawnedPed, true)
	end
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Wait(50)
		end
		TaskPlayAnim(spawnedPed, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end
    if scenario then
        TaskStartScenarioInPlace(spawnedPed, scenario, 0, true)
    end
	if Config.FadeIn then
		for i = 0, 255, 51 do
			Wait(50)
			SetEntityAlpha(spawnedPed, i, false)
		end
	end
	return spawnedPed
end

---------------------------------------------------
---------------------BLIPS-------------------------
---------------------------------------------------

CreateThread(function()
    for k, v in pairs(Config.Blip) do
        local blip = AddBlipForCoord(v.location)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, 546)
        SetBlipColour(blip, 46)
        SetBlipScale(blip, 0.5)
        --SetBlipDisplay(blip, 6)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(blip)
    end
    local blipshop = AddBlipForCoord(-1650.571, -1083.308, 13.156988)
    SetBlipAsShortRange(blipshop, true)
    SetBlipSprite(blipshop, 500)
    SetBlipColour(blipshop, 2)
    SetBlipScale(blipshop, 0.5)
    --SetBlipDisplay(blipshop, 6)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString('Avast Selections Arcade')
    EndTextCommandSetBlipName(blipshop)
end)

---------------------------------------------------
---------------------CARDS-------------------------
---------------------------------------------------

RegisterNetEvent('Cards:Client:CardChoosed', function(card)
    SendNUIMessage({
        open = true,
        class = 'choose',
        data = card,
    }) 
end)

RegisterNUICallback('Rewardpokemon', function(data)
    local pokemon = data.Pokemon    
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'flip', 0.9)
    TriggerServerEvent('Cards:Server:GetPokemon', pokemon)
end)

RegisterNUICallback('randomCard', function()
    TriggerServerEvent('Cards:Server:rewarditem')
end)

RegisterNetEvent('Cards:Client:OpenPack', function() 
    RequestAnimDict('mp_arresting')
      while (not HasAnimDictLoaded('mp_arresting')) do
      Wait(0)
      end
          TaskPlayAnim(PlayerPedId(), 'mp_arresting' ,'a_uncuff' ,8.0, -8.0, -1, 1, 0, false, false, false )
          local PedCoords = GetEntityCoords(PlayerPedId())
          propcards = CreateObject(GetHashKey('prop_boosterpack_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
          AttachEntityToEntity(propcards, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 70.0, 10.0, 90.0, false, false, false, false, 2, true)
    QBCore.Functions.Progressbar('drink_something', 'opening pack..', 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'dealfour', 0.9) 
        Wait(500)
        SetNuiFocus(true, true)
        SendNUIMessage({
            open = true,
            class = 'open',
        })
        DeleteEntity(propcards)
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('Cards:Server:RemoveItem')
    end)
end)

RegisterNetEvent('Cards:Client:OpenCards', function() 
    RequestAnimDict('mp_arresting')
        while (not HasAnimDictLoaded('mp_arresting')) do
        Wait(0)
        end
        TaskPlayAnim(PlayerPedId(), 'mp_arresting' ,'a_uncuff' ,8.0, -8.0, -1, 1, 0, false, false, false )
          local PedCoords = GetEntityCoords(PlayerPedId())
          propbox = CreateObject(GetHashKey('prop_boosterbox_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
          AttachEntityToEntity(propbox, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 0.0, 10.0, 90.0, false, false, false, false, 2, true)
        Wait(5)
        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'boxopen', 0.8)
    QBCore.Functions.Progressbar('drink_something', 'opening box..', 9500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
        Wait(1)
        DeleteEntity(propbox)
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify({text = ' ', caption =  'That boosterbox had 36 boosterpacks in it'}, 'success')
    end)
end)

RegisterNetEvent('Cards:client:UseBox', function()
    TaskPlayAnim(PlayerPedId(), 'clothingshirt', 'try_shirt_positive_d', 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    print('Box is Opening')
    TaskPlayAnim(PlayerPedId(), 'mp_arresting' ,'a_uncuff' ,8.0, -8.0, -1, 1, 0, false, false, false )
    local PedCoords = GetEntityCoords(PlayerPedId())
    deckbox = CreateObject(GetHashKey('prop_deckbox_01'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
    AttachEntityToEntity(deckbox, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.1, 0.1, 0.0, 0.0, 10.0, 90.0, false, false, false, false, 2, true)
    QBCore.Functions.Notify({text = ' ', caption =  'Box is being opened...'}, 'primary')
    QBCore.Functions.Progressbar('use_bag', 'Box is being opened', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local RLBagData = {
            outfitData = {
                ['bag']   = { item = 41, texture = 0},  -- Nek / Das
            }
        }
        TriggerServerEvent(hashes['OpenInventory'], 'stash', 'pokebox_'..QBCore.Functions.GetPlayerData().citizenid, {maxweight = 0.1, slots = 260})
        TriggerEvent('inventory:client:SetCurrentStash', 'pokebox_'..QBCore.Functions.GetPlayerData().citizenid)
        TriggerServerEvent('InteractSound_SV:PlayOnSource', 'snap', 1.2)
        TaskPlayAnim(ped, 'clothingshirt', 'exit', 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Notify({text = ' ', caption =  'Box has been opened successfully'}, 'success')
        Wait(10000)
        DeleteEntity(deckbox)
        ClearPedTasks(PlayerPedId())
    end)
end)

CreateThread(function()
    while true do 
        Wait(2500)
        local PlayerData = QBCore.Functions.GetPlayerData()
        local ShopCoords = Config.CardshopLocation['Cardshop'].location
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        local dist = #(pos - ShopCoords)
        if dist < 2.5 and not PlayerData.metadata['isdead'] and not PlayerData.metadata['inlaststand'] and not PlayerData.metadata['ishandcuffed'] and not IsPauseMenuActive() then
            inshop = true
        else 
            inshop = false
        end
        if inshop == true then
            Wait(1000)
            QBCore.Functions.TriggerCallback('Cards:server:Menu',function(item,amount)
                print(item,amount)
            end)
        end
    end 
end)

RegisterNetEvent('qb-pokemontcg:client:badgesound', function()
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'badge', 0.8)
end)


---------------------------------------------------
---------------------MENU--------------------------
---------------------------------------------------
-- RegisterNetEvent('qb-pokemontcg:listcardsmenu', function()
--     QBCore.Functions.TriggerCallback('Cards:server:get:cards:items', function(CardsResult)
--         exports['qb-menu']:openMenu({
--             {
--                 id = 2,
--                 header = "『Sell』",
--                 txt = "Click to sell your cards",
--                 params = {
--                     event = "qb-pokemontcg:sellcards"
--                 }
--             },
--             {
--                 id = 3,
--                 header = "• Cards & Prices",
--                 txt = "Below are your cards & prices",
--             },
--         })
--         for k, v in pairs(CardsResult) do
--             local itemName = v['Item']
--             local itemCount = v['Amount']
--             local price = Config.CardshopItems[itemName]
--             price = math.ceil(price * itemCount)
--             exports['qb-menu']:openMenu({
--                 {
--                     id = k,
--                     header = itemName,
--                     txt = "Amount: "..itemCount.." | <br>Price:"..price,
--                 }
--             })

--         end
--     end)
-- end)

RegisterNetEvent('qb-pokemontcg:listcardsmenu', function()
    QBCore.Functions.TriggerCallback('Cards:server:get:cards:items', function(CardsResult)
      local uNwinDTestMenu = {
        {
          header = "『Sell』",
          txt = "Click to sell your cards",
          isMenuHeader = false,
          params = {
            event = "qb-pokemontcg:sellcards"
          }
        },
        {
          id = 3,
          header = "• Cards & Prices",
          txt = "Below are your cards & prices",
        },
      }
      
      for k, v in pairs(CardsResult) do
        local itemName = v['Item']
        local itemCount = v['Amount']
        local price = Config.CardshopItems[itemName]
        price = math.ceil(price * itemCount)
        uNwinDTestMenu[#uNwinDTestMenu+1] = {
          header = itemName,
          txt = "Amount: "..itemCount.." | <br>Price:"..price,
        }
      end
      exports['qb-menu']:openMenu(uNwinDTestMenu)
  
    end)
  end)

RegisterNetEvent('Cards:client:openMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Cards4Cash Trading Card Company",
            isMenuHeader = true,
        },
        {
            header = "『View Cards & Prices』",
            txt = "Click here to view available cards for sale",
            params = {
                event = "qb-pokemontcg:listcardsmenu",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
    })
end)

RegisterNetEvent('qb-pokemontcg:sellcards', function()
    TriggerServerEvent('Cards:clicksellItem')
end)

RegisterNUICallback('CloseNui', function()
    SetNuiFocus(false, false)
end)

---------------------------------------------------
---------------------BADGES------------------------
---------------------------------------------------

local requiredboulderbadge = {
    [1] = {name = QBCore.Shared.Items['graveler']['name'], image = QBCore.Shared.Items['graveler']['image']},
    [2] = {name = QBCore.Shared.Items['rhyhorn']['name'], image = QBCore.Shared.Items['rhyhorn']['image']},
    [3] = {name = QBCore.Shared.Items['omastar']['name'], image = QBCore.Shared.Items['omastar']['image']},
    [4] = {name = QBCore.Shared.Items['kabutops']['name'], image = QBCore.Shared.Items['kabutops']['image']},
    [5] = {name = QBCore.Shared.Items['onix']['name'], image = QBCore.Shared.Items['onix']['image']},
    [6] = {name = QBCore.Shared.Items['geodude']['name'], image = QBCore.Shared.Items['geodude']['image']},
}

local requiredcascadebadge = {
    [1] = {name = QBCore.Shared.Items['blastoise']['name'], image = QBCore.Shared.Items['blastoise']['image']},
    [2] = {name = QBCore.Shared.Items['lapras']['name'], image = QBCore.Shared.Items['lapras']['image']},
    [3] = {name = QBCore.Shared.Items['starmie']['name'], image = QBCore.Shared.Items['starmie']['image']},
    [4] = {name = QBCore.Shared.Items['psyduck']['name'], image = QBCore.Shared.Items['psyduck']['image']},
    [5] = {name = QBCore.Shared.Items['togepi']['name'], image = QBCore.Shared.Items['togepi']['image']},
    [6] = {name = QBCore.Shared.Items['graveler']['name'], image = QBCore.Shared.Items['graveler']['image']},
}

local requiredthunderbadge = {
    [1] = {name = QBCore.Shared.Items['zapdos']['name'], image = QBCore.Shared.Items['zapdos']['image']},
    [2] = {name = QBCore.Shared.Items['pikachu']['name'], image = QBCore.Shared.Items['pikachu']['image']},
    [3] = {name = QBCore.Shared.Items['jolteon']['name'], image = QBCore.Shared.Items['jolteon']['image']},
    [4] = {name = QBCore.Shared.Items['electabuzz']['name'], image = QBCore.Shared.Items['electabuzz']['image']},
    [5] = {name = QBCore.Shared.Items['electrode']['name'], image = QBCore.Shared.Items['electrode']['image']},
    [6] = {name = QBCore.Shared.Items['magneton']['name'], image = QBCore.Shared.Items['magneton']['image']},
}

local requiredrainbowbadge = {
    [1] = {name = QBCore.Shared.Items['victreebel']['name'], image = QBCore.Shared.Items['victreebel']['image']},
    [2] = {name = QBCore.Shared.Items['tangela']['name'], image = QBCore.Shared.Items['tangela']['image']},
    [3] = {name = QBCore.Shared.Items['vileplume']['name'], image = QBCore.Shared.Items['vileplume']['image']},
    [4] = {name = QBCore.Shared.Items['scyther']['name'], image = QBCore.Shared.Items['scyther']['image']},
    [5] = {name = QBCore.Shared.Items['bellsprout']['name'], image = QBCore.Shared.Items['bellsprout']['image']},
    [6] = {name = QBCore.Shared.Items['venusaur']['name'], image = QBCore.Shared.Items['venusaur']['image']},
}

local requiredsoulbadge = {
    [1] = {name = QBCore.Shared.Items['koffing']['name'], image = QBCore.Shared.Items['koffing']['image']},
    [2] = {name = QBCore.Shared.Items['weezing']['name'], image = QBCore.Shared.Items['weezing']['image']},
    [3] = {name = QBCore.Shared.Items['snorlax']['name'], image = QBCore.Shared.Items['snorlax']['image']},
    [4] = {name = QBCore.Shared.Items['venonat']['name'], image = QBCore.Shared.Items['venonat']['image']},
    [5] = {name = QBCore.Shared.Items['venomoth']['name'], image = QBCore.Shared.Items['venomoth']['image']},
    [6] = {name = QBCore.Shared.Items['golbat']['name'], image = QBCore.Shared.Items['golbat']['image']},
}

local requiredmarshbadge = {
    [1] = {name = QBCore.Shared.Items['alakazam']['name'], image = QBCore.Shared.Items['alakazam']['image']},
    [2] = {name = QBCore.Shared.Items['mr_mime']['name'], image = QBCore.Shared.Items['mr_mime']['image']},
    [3] = {name = QBCore.Shared.Items['abra']['name'], image = QBCore.Shared.Items['abra']['image']},
    [4] = {name = QBCore.Shared.Items['kadabra']['name'], image = QBCore.Shared.Items['kadabra']['image']},
    [5] = {name = QBCore.Shared.Items['hypno']['name'], image = QBCore.Shared.Items['hypno']['image']},
    [6] = {name = QBCore.Shared.Items['jynx']['name'], image = QBCore.Shared.Items['jynx']['image']},
}

local requiredvolcanobadge = {
    [1] = {name = QBCore.Shared.Items['arcanine']['name'], image = QBCore.Shared.Items['arcanine']['image']},
    [2] = {name = QBCore.Shared.Items['rapidash']['name'], image = QBCore.Shared.Items['rapidash']['image']},
    [3] = {name = QBCore.Shared.Items['ninetails']['name'], image = QBCore.Shared.Items['ninetails']['image']},
    [4] = {name = QBCore.Shared.Items['magmar']['name'], image = QBCore.Shared.Items['magmar']['image']},
    [5] = {name = QBCore.Shared.Items['charizard']['name'], image = QBCore.Shared.Items['charizard']['image']},
    [6] = {name = QBCore.Shared.Items['moltres']['name'], image = QBCore.Shared.Items['moltres']['image']},
}

local requiredearthbadge = {
    [1] = {name = QBCore.Shared.Items['rhydon']['name'], image = QBCore.Shared.Items['rhydon']['image']},
    [2] = {name = QBCore.Shared.Items['nidoking']['name'], image = QBCore.Shared.Items['nidoking']['image']},
    [3] = {name = QBCore.Shared.Items['nidoqueen']['name'], image = QBCore.Shared.Items['nidoqueen']['image']},
    [4] = {name = QBCore.Shared.Items['mewtwo']['name'], image = QBCore.Shared.Items['mewtwo']['image']},
    [5] = {name = QBCore.Shared.Items['dugtrio']['name'], image = QBCore.Shared.Items['dugtrio']['image']},
    [6] = {name = QBCore.Shared.Items['persian']['name'], image = QBCore.Shared.Items['persian']['image']},
}

local requiredtrophybadge = {
    [1] = {name = QBCore.Shared.Items['boulderbadge']['name'], image = QBCore.Shared.Items['boulderbadge']['image']},
    [2] = {name = QBCore.Shared.Items['cascadebadge']['name'], image = QBCore.Shared.Items['cascadebadge']['image']},
    [3] = {name = QBCore.Shared.Items['thunderbadge']['name'], image = QBCore.Shared.Items['thunderbadge']['image']},
    [4] = {name = QBCore.Shared.Items['rainbowbadge']['name'], image = QBCore.Shared.Items['rainbowbadge']['image']},
    [5] = {name = QBCore.Shared.Items['soulbadge']['name'], image = QBCore.Shared.Items['soulbadge']['image']},
    [6] = {name = QBCore.Shared.Items['marshbadge']['name'], image = QBCore.Shared.Items['marshbadge']['image']},
    [7] = {name = QBCore.Shared.Items['volcanobadge']['name'], image = QBCore.Shared.Items['volcanobadge']['image']},
    [8] = {name = QBCore.Shared.Items['earthbadge']['name'], image = QBCore.Shared.Items['earthbadge']['image']},
}

RegisterNetEvent('Cards:client:CascadeRequiredBadge', function()
    if not requiredItemsShowed1 then
        requiredItemsShowed1 = true
        TriggerEvent('inventory:client:requiredItems', requiredcascadebadge, true)
        Wait(10000)
        requiredItemsShowed1 = false
        TriggerEvent('inventory:client:requiredItems', requiredcascadebadge, false)
    end
end)

RegisterNetEvent('Cards:client:BoulderRequiredBadge', function()
    if not requiredItemsShowed then
        requiredItemsShowed = true
        TriggerEvent('inventory:client:requiredItems', requiredboulderbadge, true)
        Wait(10000)
        requiredItemsShowed = false
        TriggerEvent('inventory:client:requiredItems', requiredboulderbadge, false)
    end
end)

RegisterNetEvent('Cards:client:ThunderRequiredBadge', function()
    if not requiredItemsShowed2 then
        requiredItemsShowed2 = true
        TriggerEvent('inventory:client:requiredItems', requiredthunderbadge, true)
        Wait(10000)
        requiredItemsShowed2 = false
        TriggerEvent('inventory:client:requiredItems', requiredthunderbadge, false)
    end
end)

RegisterNetEvent('Cards:client:RainbowRequiredBadge', function()
    if not requiredItemsShowed3 then
        requiredItemsShowed3 = true
        TriggerEvent('inventory:client:requiredItems', requiredrainbowbadge, true)
        Wait(5000)
        requiredItemsShowed3 = false
        TriggerEvent('inventory:client:requiredItems', requiredrainbowbadge, false)
    end
end)

RegisterNetEvent('Cards:client:SoulRequiredBadge', function()
    if not requiredItemsShowed4 then
        requiredItemsShowed4 = true
        TriggerEvent('inventory:client:requiredItems', requiredsoulbadge, true)
        Wait(5000)
        requiredItemsShowed4 = false
        TriggerEvent('inventory:client:requiredItems', requiredsoulbadge, false)
    end
end)

RegisterNetEvent('Cards:client:MarshRequiredBadge', function()
    if not requiredItemsShowed5 then
        requiredItemsShowed5 = true
        TriggerEvent('inventory:client:requiredItems', requiredmarshbadge, true)
        Wait(5000)
        requiredItemsShowed5 = false
        TriggerEvent('inventory:client:requiredItems', requiredmarshbadge, false)
    end
end)

RegisterNetEvent('Cards:client:VolcanoRequiredBadge', function()
    if not requiredItemsShowed6 then
        requiredItemsShowed6 = true
        TriggerEvent('inventory:client:requiredItems', requiredvolcanobadge, true)
        Wait(5000)
        requiredItemsShowed6 = false
        TriggerEvent('inventory:client:requiredItems', requiredvolcanobadge, false)
    end
end)

RegisterNetEvent('Cards:client:EarthRequiredBadge', function()
    if not requiredItemsShowed7 then
        requiredItemsShowed7 = true
        TriggerEvent('inventory:client:requiredItems', requiredearthbadge, true)
        Wait(5000)
        requiredItemsShowed7 = false
        TriggerEvent('inventory:client:requiredItems', requiredearthbadge, false)
    end
end)  
    
RegisterNetEvent('Cards:client:TrophyRequiredBadge', function()
    if not requiredItemsShowed8 then
        requiredItemsShowed8 = true
        TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, true)
        Wait(5000)
        requiredItemsShowed8 = false
        TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
    end
end) 

RegisterNetEvent('Cards:client:boulderbadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:boulderbadge', function(gotcards)  
        if gotcards then
            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'graveler', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'rhyhorn', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'omastar', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'kabutops', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'onix', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'geodude', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['graveler'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['rhyhorn'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['omastar'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['kabutops'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['onix'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['geodude'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['boulderbadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'boulderbadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Boulder Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
            QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
            TriggerEvent('requiredCardprompt')
        end
    end)
end)

RegisterNetEvent('Cards:client:cascadebadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:cascadebadge', function(gotcards)  
        if gotcards then
            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'blastoise', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'lapras', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'starmie', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'psyduck', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'togepi', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'graveler', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['blastoise'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['lapras'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['starmie'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['psyduck'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['togepi'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['graveler'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['cascadebadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'cascadebadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Cascade Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:thunderbadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:thunderbadge', function(gotcards)  
        if gotcards then
            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'zapdos', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'pikachu', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'jolteon', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'electabuzz', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'electrode', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'magneton', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['zapdos'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['pikachu'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['jolteon'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['electabuzz'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['electrode'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['magneton'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['thunderbadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'thunderbadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Thunder Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:rainbowbadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:rainbowbadge', function(gotcards)  
        if gotcards then
            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'victreebel', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'tangela', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'vileplume', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'scyther', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'bellsprout', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'venusaur', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['victreebel'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['tangela'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['vileplume'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['scyther'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['bellsprout'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['geodude'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['venusaur'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'rainbowbadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Rainbow Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:soulbadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:soulbadge', function(gotcards)  
        if gotcards then

            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'koffing', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'weezing', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'snorlax', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'venonat', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'venomoth', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'golbat', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['koffing'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['weezing'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['snorlax'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['venonat'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['venomoth'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['golbat'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['soulbadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'soulbadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Soul Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:marshbadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:marshbadge', function(gotcards)  
        if gotcards then

            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'alakazam', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'mr_mime', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'abra', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'kadabra', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'hypno', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'jynx', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['alakazam'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['mr_mime'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['abra'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['kadabra'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['hypno'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['jynx'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['marshbadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'marshbadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Marsh Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:volcanobadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:volcanobadge', function(gotcards)  
        if gotcards then

            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'arcanine', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'rapidash', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'ninetails', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'magmar', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'charizard', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'moltres', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['arcanine'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['rapidash'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['ninetails'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['magmar'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['charizard'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['moltres'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['volcanobadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'volcanobadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Volcano Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:earthbadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:earthbadge', function(gotcards)  
        if gotcards then

            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Badge..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'rhydon', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'nidoking', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'nidoqueen', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'mewtwo', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'dugtrio', 1)
                TriggerServerEvent(hashes['RemoveItem'], 'persian', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['rhydon'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['nidoking'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['nidoqueen'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['mewtwo'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['dugtrio'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['persian'], 'remove')
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['earthbadge'], 'add')
                TriggerServerEvent(hashes['AddItem'], 'earthbadge', 1)
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a Earth Badge'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the cards to make this'}, 'error')
        end
    end)
end)

RegisterNetEvent('Cards:client:trophybadge', function(type)
    QBCore.Functions.TriggerCallback('pokemontcg:server:get:trophybadge', function(gotcards)  
        if gotcards then

            TriggerEvent('inventory:client:busy:status', true)
	    	QBCore.Functions.Progressbar('pickup_sla', 'Making Trophy..', 3500, false, true, {
	    		disableMovement = true,
	    		disableCarMovement = false,
	    		disableMouse = false,
	    		disableCombat = false,
	    	}, {
	    		animDict = 'mp_common',
	    		anim = 'givetake1_a',
	    		flags = 8,
	    	}, {}, {}, function() -- Done
	    		Working = false
	    		TriggerEvent('inventory:client:busy:status', false)
                TriggerServerEvent(hashes['RemoveItem'], 'boulderbadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['boulderbadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'cascadebadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['cascadebadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'thunderbadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['thunderbadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'rainbowbadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['rainbowbadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'soulbadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['soulbadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'marshbadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['marshbadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'volcanobadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['volcanobadge'], 'remove')
                TriggerServerEvent(hashes['RemoveItem'], 'earthbadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['earthbadge'], 'remove')
                TriggerServerEvent(hashes['AddItem'], 'trophybadge', 1)
                TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['trophybadge'], 'add')
                QBCore.Functions.Notify({text = ' ', caption =  'You Earned a League Trophy'}, 'success')
                TriggerServerEvent('InteractSound_SV:PlayOnSource', 'pokemonbadge', 0.2)
            end, function()
                TriggerEvent('inventory:client:busy:status', false)
                QBCore.Functions.Notify({text = 'Warning', caption =  'Cancelled..'}, 'error')
                Working = false
                TriggerEvent('inventory:client:requiredItems', requiredtrophybadge, false)
            end)
        else
             QBCore.Functions.Notify({text = 'Warning', caption =  'You dont have the badges to make this'}, 'error')
        end
    end)
end)

local CardList = {
    ["boulderbadge"] = 1,
    ["cascadebadge"] = 1,
    ["thunderbadge"] = 1,
    ["rainbowbadge"] = 1,
    ["soulbadge"] = 1,
    ["marshbadge"] = 1,
    ["volcanobadge"] = 1,
    ["earthbadge"] = 1,
    ["trophybadge"] = 1,
    ["abra"] = 1, 
    ["aerodactyl"] = 1, 					
    ["alakazam"] = 1, 					
    ["arbok"] = 1, 						
    ["arcanine"] = 1, 					
    ["articuno"] = 1, 					
    ["beedrill"] = 1, 					
    ["bellsprout"] = 1, 					
    ["blastoise"] = 1, 					
    ["boulderbadge"] = 1, 				
    ["butterfree"] = 1, 				
    ["cascadebadge"] = 1, 			
    ["caterpie"] = 1, 				   
    ["chansey"] = 1, 				 
    ["charizard"] = 1, 				 
    ["charmander"] = 1, 				 	
    ["charmeleon"] = 1, 				 	
    ["clefable"] = 1, 					
    ["clefairy"] = 1, 				 	
    ["cloyster"] = 1, 				 
    ["cubone"] = 1, 						
    ["dewgong"] = 1, 				 
    ["diglett"] = 1, 					
    ["ditto"] = 1, 						
    ["dodrio"] = 1, 						
    ["doduo"] = 1, 		
    ["dragonair"] = 1, 				
    ["dragonite"] = 1, 					
    ["dratini"] = 1, 					
    ["drowzee"] = 1, 					 
    ["dugtrio"] = 1, 				  
    ["earthbadge"] = 1, 					
    ["eevee"] = 1, 						
    ["ekans"] = 1, 			
    ["electabuzz"] = 1, 				   
    ["electrode"] = 1, 					
    ["exeggcute"] = 1, 					 
    ["exeggutor"] = 1, 				 
    ["farfetchd"] = 1, 					 
    ["fearow"] = 1, 					
    ["flareon"] = 1, 					
    ["gastly"] = 1, 						
    ["gengar"] = 1, 						
    ["geodude"] = 1, 				 	
    ["gloom"] = 1, 		
    ["golbat"] = 1, 						 
    ["goldeen"] = 1, 				
    ["golduck"] = 1, 		 			
    ["golem"] = 1, 		 			
    ["graveler"] = 1, 		
    ["grimer"] = 1, 		 			
    ["growlithe"] = 1, 		 	
    ["gyarados"] = 1, 			
    ["haunter"] = 1, 			
    ["hitmonchan"] = 1, 		
    ["hitmonlee"] = 1, 				 
    ["horsea"] = 1, 					
    ["hypno"] = 1, 				 	
    ["ivysaur"] = 1, 					
    ["jigglypuff"] = 1, 				
    ["jolteon"] = 1, 				
    ["jynx"] = 1, 					
    ["kabuto"] = 1, 					
    ["kabutops"] = 1, 
    ["kadabra"] = 1,
    ["kaknua"] = 1, 			 	 		 
    ["kangaskhan"] = 1, 			 	 	
    ["kingler"] = 1, 			 	 	
    ["koffing"] = 1, 			 	 	
    ["krabby"] = 1, 				 	 	
    ["lapras"] = 1, 			 			
    ["lickitung"] = 1, 			 		
    ["machamp"] = 1, 				
    ["machoke"] = 1, 					 
    ["machop"] = 1, 			 		
    ["magikarp"] = 1, 			 		
    ["magmar"] = 1, 					  
    ["magnemite"] = 1, 			   	
    ["magneton"] = 1, 				
    ["mankey"] = 1, 						
    ["marowak"] = 1, 				 
    ["marshbadge"] = 1, 					
    ["meowth"] = 1, 					
    ["metapod"] = 1, 				 
    ["mew"] = 1, 						
    ["mewtwo"] = 1, 						 
    ["moltres"] = 1, 					
    ["mr_mime"] = 1, 					
    ["muk"] = 1, 	
    ["nidoking"] = 1, 				  
    ["nidoqueen"] = 1, 				 	
    ["nidoran"] = 1, 				 	
    ["nidorian"] = 1, 				  
    ["nidorina"] = 1, 				 	
    ["nidorino"] = 1, 				 	
    ["ninetails"] = 1, 					
    ["oddish"] = 1, 				 		
    ["omanyte"] = 1, 				 	
    ["omastar"] = 1, 					
    ["onix"] = 1, 				 	
    ["paras"] = 1, 						 
    ["parasect"] = 1, 					
    ["persian"] = 1, 					
    ["pidgeotto"] = 1, 					
    ["pidgeot"] = 1, 					
    ["pidgey"] = 1, 						
    ["pikachu"] = 1, 					
    ["pinsir"] = 1, 						 
    ["poliwag"] = 1, 					
    ["poliwhirl"] = 1, 				  
    ["poliwrath"] = 1, 					
    ["ponyta"] = 1, 						
    ["porygon"] = 1, 					
    ["primeape"] = 1, 				    
    ["psyduck"] = 1, 				
    ["raichu"] = 1, 						
    ["rainbowbadge"] = 1, 				
    ["rapidash"] = 1, 					
    ["raticate"] = 1, 				
    ["rattata"] = 1, 					
    ["rhydon"] = 1, 						
    ["rhyhorn"] = 1, 					
    ["sandshrew"] = 1, 				 	
    ["sandslash"] = 1, 				
    ["scyther"] = 1, 					
    ["seadra"] = 1, 					
    ["seaking"] = 1, 		 			
    ["seel"] = 1, 		 	
    ["shellder"] = 1, 		 			 
    ["slowbro"] = 1, 		 			
    ["slowpoke"] = 1, 		 			
    ["snorlax"] = 1, 				 	
    ["soulbadge"] = 1, 					
    ["spearow"] = 1, 				 	
    ["squirtle"] = 1, 				 	
    ["starmie"] = 1, 				
    ["staryu"] = 1, 				 		
    ["tangela"] = 1, 				
    ["tauros"] = 1, 						
    ["tentacool"] = 1, 					
    ["tentacruel"] = 1, 					 
    ["thunderbadge"] = 1, 				
    ["togepi"] = 1, 			 			
    ["trophybadge"] = 1, 			 	
    ["vaporeon"] = 1, 			 	 	
    ["venomoth"] = 1, 			 	 	
    ["venonat"] = 1, 			 	 	
    ["venusaur"] = 1, 			 	 	 
    ["victreebel"] = 1, 				 		
    ["vileplume"] = 1, 		 			
    ["volcanobadge"] = 1, 		 		
    ["voltorb"] = 1, 				 
    ["vulpix"] = 1, 				
    ["wartortle"] = 1, 		 			 
    ["weedle"] = 1, 				 	
    ["weepinbell"] = 1, 				   
    ["weezing"] = 1, 			   	
    ["wigglytuff"] = 1, 			 		
    ["zapdos"] = 1, 					 
    ["zubat"] = 1, 				 
    ["bulbasaur"] = 1, 			   		 
    ["blastoisev"] = 1, 			 	 	
    ["charizardv"] = 1, 				 	
    ["mewv"] = 1, 		 				
    ["pikachuv"] = 1, 		 		 
    ["snorlaxv"] = 1, 					
    ["venusaurv"] = 1, 				
    ["blastoisevmax"] = 1, 		 	   
    ["mewtwogx"] = 1, 				 	   
    ["snorlaxvmax"] = 1, 				   
    ["venusaurvmax"] = 1, 			   	  
    ["vmaxcharizard"] = 1, 			   
    ["vmaxpikachu"] = 1, 			   
    ["rainbowmewtwogx"] = 1, 			
    ["rainbowvmaxcharizard"] = 1, 		
    ["rainbowvmaxpikachu"] = 1, 		
    ["snorlaxvmaxrainbow"] = 1
}