---
Config = {}
Config.DiscordWebHook = 'https://discord.com/api/webhooks/912627855576408116/pOlNpt52Uvo3a-DwozTB-WpIErTyfVehnYvAlReEWhn25KI-fA6HvWfq7B4A1yjR-BRP'
Config.save = 'json' -- kvp, json
Config.vehicle_table = 'vehicles' -- vehicle table must have model column (name not hash)
Config.useSQLvehicle = true -- use mysql async to fetch vehicle table else SqlVehicleTable will use
Config.SqlVehicleTable = QBCore and QBCore.Shared and QBCore.Shared.Vehicles and QBCore.Shared.Vehicles or {} -- example qbcore shared vehicle

-- Custom Category
Config.Category = 'all' -- select a custom category | set this to 'all' if you want to Screenshot all vehicle categories

-- Permission
Config.owners = {
    ['license:ae56bf2b9f7cade5cfe1b05d9f2ca22b97d7597c'] = true,
    --add more here
}