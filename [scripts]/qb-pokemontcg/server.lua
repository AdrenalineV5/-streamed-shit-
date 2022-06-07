local QBCore = exports['qb-core']:GetCoreObject()

---------------------------------------------------
---------------------BADGES------------------------
---------------------------------------------------

QBCore.Functions.CreateCallback('pokemontcg:server:get:boulderbadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src) 
    local graveler = ply.Functions.GetItemByName('graveler')
    local rhyhorn = ply.Functions.GetItemByName('rhyhorn')
    local omastar = ply.Functions.GetItemByName('omastar')
    local kabutops = ply.Functions.GetItemByName('kabutops')
    local onix = ply.Functions.GetItemByName('onix')
    local geodude = ply.Functions.GetItemByName('geodude')
    if graveler ~= nil and rhyhorn ~= nil and omastar ~= nil and kabutops ~= nil and onix ~= nil and geodude ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:cascadebadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local blastoise = ply.Functions.GetItemByName('blastoise')
    local lapras = ply.Functions.GetItemByName('lapras')
    local starmie = ply.Functions.GetItemByName('starmie')
    local psyduck = ply.Functions.GetItemByName('psyduck')
    local togepi = ply.Functions.GetItemByName('togepi')
    local graveler = ply.Functions.GetItemByName('graveler')
    if blastoise ~= nil and lapras ~= nil and starmie ~= nil and psyduck ~= nil and togepi ~= nil and graveler ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:thunderbadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local zapdos = ply.Functions.GetItemByName('zapdos')
    local pikachu = ply.Functions.GetItemByName('pikachu')
    local jolteon = ply.Functions.GetItemByName('jolteon')
    local electabuzz = ply.Functions.GetItemByName('electabuzz')
    local electrode = ply.Functions.GetItemByName('electrode')
    local magneton = ply.Functions.GetItemByName('magneton')
    if zapdos ~= nil and pikachu ~= nil and jolteon ~= nil and electabuzz ~= nil and electrode ~= nil and magneton ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:rainbowbadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local victreebel = ply.Functions.GetItemByName('victreebel')
    local tangela = ply.Functions.GetItemByName('tangela')
    local vileplume = ply.Functions.GetItemByName('vileplume')
    local scyther = ply.Functions.GetItemByName('scyther')
    local bellsprout = ply.Functions.GetItemByName('bellsprout')
    local venusaur = ply.Functions.GetItemByName('venusaur')
    if victreebel ~= nil and tangela ~= nil and vileplume ~= nil and scyther ~= nil and bellsprout ~= nil and venusaur ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:soulbadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local koffing = ply.Functions.GetItemByName('koffing')
    local weezing = ply.Functions.GetItemByName('weezing')
    local snorlax = ply.Functions.GetItemByName('snorlax')
    local venonat = ply.Functions.GetItemByName('venonat')
    local venomoth = ply.Functions.GetItemByName('venomoth')
    local golbat = ply.Functions.GetItemByName('golbat')
    if koffing ~= nil and weezing ~= nil and snorlax ~= nil and venonat ~= nil and venomoth ~= nil and golbat ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:marshbadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local alakazam = ply.Functions.GetItemByName('alakazam')
    local mr_mime = ply.Functions.GetItemByName('mr_mime')
    local abra = ply.Functions.GetItemByName('abra')
    local kadabra = ply.Functions.GetItemByName('kadabra')
    local hypno = ply.Functions.GetItemByName('hypno')
    local jynx = ply.Functions.GetItemByName('jynx')
    if alakazam ~= nil and mr_mime ~= nil and abra ~= nil and kadabra ~= nil and hypno ~= nil and jynx ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:volcanobadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local arcanine = ply.Functions.GetItemByName('arcanine')
    local rapidash = ply.Functions.GetItemByName('rapidash')
    local ninetails = ply.Functions.GetItemByName('ninetails')
    local magmar = ply.Functions.GetItemByName('magmar')
    local charizard = ply.Functions.GetItemByName('charizard')
    local moltres = ply.Functions.GetItemByName('moltres')
    if arcanine ~= nil and rapidash ~= nil and ninetails ~= nil and magmar ~= nil and charizard ~= nil and moltres ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:earthbadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local rhydon = ply.Functions.GetItemByName('rhydon')
    local nidoking = ply.Functions.GetItemByName('nidoking')
    local nidoqueen = ply.Functions.GetItemByName('nidoqueen')
    local mewtwo = ply.Functions.GetItemByName('mewtwo')
    local dugtrio = ply.Functions.GetItemByName('dugtrio')
    local persian = ply.Functions.GetItemByName('persian')
    if rhydon ~= nil and nidoking ~= nil and nidoqueen ~= nil and mewtwo ~= nil and dugtrio ~= nil and persian ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('pokemontcg:server:get:trophybadge', function(source, cb)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local boulderbadge = ply.Functions.GetItemByName('boulderbadge')
    local cascadebadge = ply.Functions.GetItemByName('cascadebadge')
    local thunderbadge = ply.Functions.GetItemByName('thunderbadge')
    local rainbowbadge = ply.Functions.GetItemByName('rainbowbadge')
    local soulbadge = ply.Functions.GetItemByName('soulbadge')
    local marshbadge = ply.Functions.GetItemByName('marshbadge')
    local volcanobadge = ply.Functions.GetItemByName('volcanobadge')
    local earthbadge = ply.Functions.GetItemByName('earthbadge')
    if boulderbadge ~= nil and cascadebadge ~= nil and thunderbadge ~= nil and rainbowbadge ~= nil and soulbadge ~= nil and marshbadge ~= nil and volcanobadge ~= nil and earthbadge ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

---------------------------------------------------
---------------------CARDS-------------------------
---------------------------------------------------

QBCore.Functions.CreateUseableItem('boosterbox', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot, item.info) then
        TriggerClientEvent('Cards:Client:OpenCards', source, item.name)
		local xPlayer = QBCore.Functions.GetPlayer(source)
		xPlayer.Functions.AddItem('boosterpack',36)
        Wait(4000)
        TriggerClientEvent('QBCore:Notify', source, {text = ' ', caption =  'You got 36 booster packs!'}, 'primary')
        Wait(1000)
    end
end)

QBCore.Functions.CreateCallback('Cards:server:Menu',function(source,cb)
    local player = QBCore.Functions.GetPlayer(source)
    local item = '....'
        if player ~= nil then
            if player.Functions.GetItemByName(item) then
            cb(item,item.amount)
        end
    end
end)

QBCore.Functions.CreateUseableItem('boosterpack', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)    
    TriggerClientEvent('Cards:Client:OpenPack', source, item.name)
    Wait(4000)
    TriggerClientEvent('QBCore:Notify', source, {text = ' ', caption =  'You opened 4 cards!'}, 'primary')
end)

RegisterServerEvent('Cards:Server:RemoveItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local pack = Player.Functions.GetItemByName('boosterpack')
    if pack.amount == nil then
        TriggerClientEvent('QBCore:Notify', source, {text = 'Warning', caption =  'You dont have a boosterpack!'}, 'error')
    else
        Player.Functions.RemoveItem('boosterpack',1)
    end
end)

RegisterServerEvent('Cards:Server:rewarditem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)
    local card = ''
    local randomChance = math.random(1, 1000)
    if randomChance <= 5 then 
        card = Config.rainbowCards[math.random(1,#Config.rainbowCards)]         
	elseif randomChance >= 6 and randomChance <= 19 then
        card = Config.vmaxCards[math.random(1, #Config.vmaxCards)]

	elseif randomChance >= 20 and randomChance <= 50 then
        card = Config.vCards[math.random(1, #Config.vCards)]

	elseif randomChance >= 51 and randomChance <= 100 then
        card = Config.ultraCards[math.random(1, #Config.ultraCards)]

    elseif randomChance >= 101 and randomChance <= 399 then
        card = Config.rareCards[math.random(1, #Config.rareCards)]
    else 
        card = Config.basicCards[math.random(1, #Config.basicCards)]
	end
    Wait(10)
    if card ~= '' then        
        TriggerClientEvent('Cards:Client:CardChoosed', src, card)
    else
        TriggerClientEvent('QBCore:Notify', source, {text = 'ERROR', caption =  'There is a problem in cards!'}, 'error')
    end 
end)

QBCore.Functions.CreateUseableItem('pokebox', function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('Cards:client:UseBox', source)
    TriggerEvent('qb-log:server:CreateLog', 'pokebox', 'PokeBox', 'white', 'Player Opened their PokeBox '..GetPlayerName(source)..' Citizen ID : '..Player.PlayerData.citizenid.. '',source, false)
end)

RegisterServerEvent('Cards:Server:GetPokemon', function(pokemon)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local pokemonName = QBCore.Shared.Items[pokemon].label
    if pokemon ~= nil then
        TriggerClientEvent('inventory:client:ItemBox', QBCore.Shared.Items[pokemon], 'add')
        TriggerClientEvent('QBCore:Notify', source, {text = ' ', caption =  'You got '..pokemonName.. ''}, 'success')
        Player.Functions.AddItem(pokemon, 1)
    end  
end)

QBCore.Functions.CreateCallback('Cards:server:get:cards:items', function(source, cb)
    local src = source
    local AvailableCards = {}
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs(Config.CardshopItems) do
        local CardsData = Player.Functions.GetItemByName(k)
        if CardsData ~= nil then
            table.insert(AvailableCards, {['Item'] = CardsData.name, ['Amount'] = CardsData.amount})
        end
    end
    cb(AvailableCards)
end)

function tprint (t, s)
    for k, v in pairs(t) do
        local kfmt = '["' .. tostring(k) ..'"]'
        if type(k) ~= 'string' then
            kfmt = '[' .. k .. ']'
        end
        local vfmt = '"'.. tostring(v) ..'"'
        if type(v) == 'table' then
            tprint(v, (s or '')..kfmt)
        else
            if type(v) ~= 'string' then
                vfmt = tostring(v)
            end
            print(type(t)..(s or '')..kfmt..' = '..vfmt)
        end
    end
end

RegisterServerEvent("Cards:clicksellItem", function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Config.CardshopItems[Player.PlayerData.items[k].name] ~= nil then 
                    price = price + (Config.CardshopItems[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                end
            end
        end
        Player.Functions.AddMoney("cash", price, "sold-pokemon-cards")
        TriggerClientEvent('QBCore:Notify', src, {text = ' ', caption =  'You sold your pokemon cards for $'..price}, 'primary')
        TriggerEvent("qb-log:server:CreateLog", "pokemon", "cards/badges", "blue", ""..GetPlayerName(src) .. " got $"..price.." for selling their cards/ badge", src)
    else
        TriggerClientEvent('QBCore:Notify', src, {text = 'Warning', caption =  'You have no cards..'}, 'error')
    end
end)