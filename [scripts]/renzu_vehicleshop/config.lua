Config = {}
Config.Locale = "en"
Config.Mysql = 'ghmattisql' -- "ghmattisql", "mysql-async", "oxmysql"
Config.framework = 'QBCORE' -- ESX or QBCORE
Config.UseRayZone = false -- unrelease script https://github.com/renzuzu/renzu_rayzone
Config.UsePopUI = true -- Create a Thread for checking playercoords and Use POPUI to Trigger Event, set this to false if using rayzone. Popui is originaly built in to RayZone -- DOWNLOAD https://github.com/renzuzu/renzu_popui
Config.Quickpick = false -- if false system will create a garage shell and spawn every vehicle you preview
Config.EnableTestDrive = true
Config.PlateSpace = true -- enable / disable plate spaces (compatibility with esx 1.1?)
Config.SaveJob = true -- this config is to save the value to owned_vehicles.job column
Config.Licensed = false -- Enable Driver Licensed Checker
Config.DisplayCars = true -- enable display of cars
Config.Marker = true -- use draw marker and Iscontrollpress native , popui will not work if this is true

-- VEHICLE THUMBNAILS IMAGE
-- this is standalone
Config.CustomImg = false -- if true your Config.CustomImgColumn IMAGE url will be used for each vehicles else, the imgs/uploads/MODEL.jpg
Config.CustomImgColumn = 'imglink' -- db column name
-- this is standalone
-- Config.use_renzu_vehthumb -- Config.CustomImg must be false
Config.use_renzu_vehthumb = true -- use vehicle thumb generation script
Config.RgbColor = false -- your framework or garage must support custom colors ex. https://github.com/renzuzu/renzu_garage

-- CARKEYS -- -- you need to replace the event
Config.Carkeys = function(plate,source)
    print("Sending Keys")
    TriggerClientEvent('vehiclekeys:client:SetOwner',source,plate) -- THIS EVENT IS QBCORE CAR KEYS!, replace the event name to your carkeys event
end
-- CARKEYS --
--EXTRA
Config.UseArenaSpawn = true -- will use custom location for spawning vehicle in quickpick == false
-- MAIN
VehicleShop = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        title = "PDM Vehicle Shop",
        icon = 'https://i.imgur.com/05SLYUP.png',
        type = 'car',
        job = 'all',
        default_garage = 'A',
        Dist = 4, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 595, scale = 0.9},
        shop_x = -35.469879150391,
        shop_y = -1100.3621826172,
        shop_z = 26.422359466553, -- coordinates for this garage
        spawn_x = -32.283363342285,
        spawn_y = -1091.0841064453,
        spawn_z = 25.749485015869,
        heading = 340.23065185547, -- Vehicle spawn location,
        displaycars = {
            -- [1] = {model = 'jester3', value = 100000, coord = vector4(-47.427722930908,-1101.3747558594,25.714616775513,341.64694213867)},
            -- [2] = {model = 'fmj', value = 1000000, coord = vector4(-44.736125946045,-1094.1976318359,25.748092651367,158.2547454834)},
            -- [3] = {model = 'adder', value = 1000000, coord = vector4(-40.32751083374,-1095.6105957031,26.009906768799,158.58676147461)},
            -- [4] = {model = 'zentorno', value = 1000000, coord = vector4(-43.318450927734,-1102.1627197266,25.758722305298,340.29724121094)},
        }
    },


    -- -- BOAT shop
    -- -- ['Yacht Club Boat Shop'] = { -- same with name
        -- -- name = "Yacht Club Boat Shop", --LEGION
        -- -- type = 'boat', -- type of shop
        -- -- title = "Yacht Club Boat Shop",
        -- -- icon = 'https://i.imgur.com/62bRdH6.png',
        -- -- job = 'all',
        -- -- default_garage = 'Boat Garage A',
        -- -- Dist = 7, -- distance (DEPRECATED)
        -- -- Blip = {color = 38, sprite = 410, scale = 0.9},
        -- -- shop_x = -812.87133789062,
        -- -- shop_y = -1407.4493408203,
        -- -- shop_z = 5.0005192756653, -- coordinates for this garage
        -- -- spawn_x = -818.69775390625,
        -- -- spawn_y = -1420.5775146484,
        -- -- spawn_z = 0.12045155465603,
        -- -- heading = 178.27006530762, -- Vehicle spawn location
        -- -- shop = { -- if not vehicle is setup in Database SQL, we will use this
            -- -- {shop='Yacht Club Boat Shop',category='Normal Boat',stock=50,price=50000,model='dinghy',name="Dinghy"},
            -- -- {shop='Yacht Club Boat Shop',category='Normal Boat',stock=50,price=100000,model='dinghy2',name="Dinghy2"},
            -- -- {shop='Yacht Club Boat Shop',category='Normal Boat',stock=50,price=100000,model='dinghy3',name="Dinghy 3"},
            -- -- {shop='Yacht Club Boat Shop',category='Normal Boat',stock=50,price=100000,model='dinghy4',name="Dinghy4"},
            -- -- {shop='Yacht Club Boat Shop',category='Rich Boat',stock=50,price=100000,model='marquis',name="Marquiz"},
            -- -- {shop='Yacht Club Boat Shop',category='Rich Boat',stock=50,price=100000,model='toro2',name="Toro 2"},
            -- -- {shop='Yacht Club Boat Shop',category='Submarine',stock=50,price=100000,model='submersible',name="Submersible"},
            -- -- {shop='Yacht Club Boat Shop',category='Submarine',stock=50,price=100000,model='submersible2',name="Submersible2"},
        -- -- },
    -- -- },
    -- PLANE SHOP
    ['Syndicate Vehicle Shop'] = { -- same with name
        name = "Syndicate Vehicle Shop", --LEGION
        title = "Syndicate Vehicle Shop",
        icon = 'https://i.imgur.com/12rKk6E.png',
        type = 'car', -- type of shop
        job = 'all',
        default_garage = 'Plane Hangar A',
        Dist = 1, -- distance (DEPRECATED)             
        Blip = {color = 38, sprite = 423, scale = 0.0},
        shop_x = 153.15,
        shop_y = -3014.48,
        shop_z = 7.04, -- coordinates for this garage
        spawn_x = 112.46,
        spawn_y = -3012.76,
        spawn_z = 6.0,
        heading = 352.86, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Syndicate Vehicle Shop',category='Cadillac',stock=50,price=45000,model='18Escalade28s',name="Escalade"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='20silv3500of',name="Silverado"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='70chevelle',name="Chevelle"},
            {shop='Syndicate Vehicle Shop',category='Oldsmobile',stock=50,price=40000,model='70cut30s',name="Cutlass"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='72drophq',name="Impala"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='86landau',name="Caprice"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='86brougham',name="Caprice"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='86broughamVitales',name="Caprice"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='86broughamSincros',name="Caprice"},
            {shop='Syndicate Vehicle Shop',category='Oldsmobile',stock=50,price=40000,model='88cut30s',name="Cutlass"},
            {shop='Syndicate Vehicle Shop',category='Dodge',stock=50,price=30000,model='300demon',name="Dodge 300"},
            {shop='Syndicate Vehicle Shop',category='Mclaren',stock=50,price=45000,model='720sp',name="720s"},
            {shop='Syndicate Vehicle Shop',category='Buick',stock=50,price=40000,model='bgnx',name="bgnx"},
            {shop='Syndicate Vehicle Shop',category='Dodge',stock=50,price=40000,model='dcd',name="Challenger"},
            {shop='Syndicate Vehicle Shop',category='Dodge',stock=50,price=40000,model='DmCharger',name="Charger"},
            {shop='Syndicate Vehicle Shop',category='GMC',stock=50,price=40000,model='denail21',name="denail"},
            {shop='Syndicate Vehicle Shop',category='Pontiac',stock=50,price=40000,model='firebird77on28s',name="firebird"},
            {shop='Syndicate Vehicle Shop',category='Plymouth',stock=50,price=40000,model='fury69d',name="Fury3"},
            {shop='Syndicate Vehicle Shop',category='Jaguar',stock=50,price=40000,model='jlumma',name="F-Pace"},
            {shop='Syndicate Vehicle Shop',category='Mercedes',stock=50,price=40000,model='lumma_gle',name="GLE"},
            {shop='Syndicate Vehicle Shop',category='Ford',stock=50,price=40000,model='mehdis',name="Crown Vic"},
            {shop='Syndicate Vehicle Shop',category='Buick',stock=50,price=40000,model='rdmstr96dDrag1',name="Roadmaster"},
            {shop='Syndicate Vehicle Shop',category='Dodge',stock=50,price=45000,model='sharkdurango',name="Durango"},
            {shop='Syndicate Vehicle Shop',category='Mercedes',stock=50,price=55000,model='sls',name="Sls"},
            {shop='Syndicate Vehicle Shop',category='Cadillac',stock=50,price=40000,model='sstram',name="Escalade Slammed"},
            {shop='Syndicate Vehicle Shop',category='Buick',stock=50,price=40000,model='vanzgnx',name="GNX"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='vanzimpala',name="ImpalaSS"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='72drop',name="Impala"},
            {shop='Syndicate Vehicle Shop',category='Chevrolet',stock=50,price=40000,model='72hard',name="Impala"},
           
        },
    },
}

Config.EnableVehicleSelling = false -- allow your user to sell the vehicle and deletes it from database
Config.RefundPercent = 10 -- 70% (percentage from original value)
Refund = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        job = 'all',
        Dist = 7, -- distance
        Blip = {color = 38, sprite = 219, scale = 0.6},
        shop_x = -46.320140838623,
        shop_y = -1095.1837158203,
        shop_z = 25.91579246521, -- coordinates for selling / refunding the vehicle
    },
}
