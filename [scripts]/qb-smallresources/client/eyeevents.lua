


PlayerJob = {}

RegisterNetEvent('ARPCore:Client:OnJobUpdate')
AddEventHandler('ARPCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    TriggerServerEvent("police:server:UpdateBlips")

    if JobInfo.name == "police" and not PlayerJob.onduty then
        TriggerServerEvent("ARPCore:ToggleDuty")
        onDuty = true
    end

    if (PlayerJob ~= nil) and PlayerJob.name ~= "police" then
        if DutyBlips ~= nil then 
            for k, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end
end)


exports['qb-target']:AddCircleZone("bcsofridge", vector3(1856.63, 3693.09, 38.03), 1.0, {
	name="bcsofridge",
    heading=160,
    debugPoly=false,
    useZ=true,
}, {
    options = {
        {
				event = "qb-shops:client:openfridge",
				icon = "fas fa-utensils",
				label = "Yeetus' Fridge",
				job = {
					['police'] = 15,
				},
				
        },
    },
    distance = 3.0 
})


exports['qb-target']:AddCircleZone("mugshot", vector3(1857.63, 3687.27, 30.14), 1.0, {
	name="mugshot",
    heading=160,
    debugPoly=false,
    useZ=true,
}, {
    options = {
        {
				icon = 'fas fa-camera',
				label = 'Take Suspects Mugshots',
				job = {
					['police'] = 13,
				},
				event = 'cqc-mugshot:client:takemugshot',
				type = 'client'
				
        },
    },
    distance = 3.0 
})



RegisterNetEvent('atm:use')
AddEventHandler('atm:use',function(data)
 ExecuteCommand( "atm" )
end)


exports['qb-target']:AddBoxZone("MissionRowDutyClipboard", vector3(441.7989, -982.0529, 30.67834), 0.45, 0.35, {
	name="MissionRowDutyClipboard",
	heading=11.0,
	debugPoly=false,
	minZ=30.77834,
	maxZ=30.87834,
	}, {
		options = {
			{
				event = "duty:pd",
				icon = "fas fa-sign-in-alt",
				label = "Sign In/Out",
				job = "burger",
			},
		},
		distance = 1.5
})

isLoggedIn = true
RegisterNetEvent('duty:pd')
AddEventHandler('duty:pd',function(data)
        if isLoggedIn then
            if PlayerJob.name == "police" then
                                onDuty = not onDuty
                                TriggerServerEvent("police:server:UpdateCurrentCops")
                                TriggerServerEvent("ARPCore:ToggleDuty")
                                TriggerServerEvent("police:server:UpdateBlips")
                                TriggerEvent('arp-policealerts:ToggleDuty', onDuty)
                        end
					end	
end)


-- exports['qb-target']:AddCircleZone("LuckyWheel", vector3(949.391, 44.72, 71.638), 2.0, {
--     name="LuckyWheel",
--     heading=160,
--     debugPoly=false,
--     useZ=true,
--     }, {
--         options = {
--             {
--                 event = "luckywheel:client:startWheel",
--                 icon = "fas fa-sync-alt",
--                 label = "Try Your Luck",
--             },
--         },
--     distance = 2.0 
-- })





-- Horse Bets
exports['qb-target']:AddCircleZone("Betting", vector3(956.121,70.185,70.433), 1.0, {
    name="Betting",
    heading=160,
    debugPoly=false,
    useZ=true,
}, {
    options = {
        {
            event = "QBCore:client:openInsideTrack",
            icon = "fas fa-coins",
            label = "Start Betting",
        },
    },
    distance = 3.0 
})

-- Casino Shop

ShopModels = {
    {
        prop = 'U_F_M_CasinoCash_01'
    },
}

	local casinoshop = {}
	    for k,v in pairs(ShopModels) do 
		 table.insert(casinoshop,GetHashKey(v.prop))
  	end




exports['qb-target']:AddTargetModel(casinoshop, {
	options = {
        {
            event = "qb-casino:client:openCasinoMembersips", 
            icon = "fas fa-id-card",
            label = "Purchase Casino Memberships", 
        },
	},
	distance = 3.0 
})


AtmModels = {
    {
        prop = 'prop_atm_01'
    },
    {
        prop = 'prop_atm_02'
    },
    {
        prop = 'prop_atm_03'
    },
    {
        prop = 'prop_fleeca_atm'
    }
}

    local atms = {}
    for k,v in pairs(AtmModels) do 
        table.insert(atms,GetHashKey(v.prop))
    end
    exports['qb-target']:AddTargetModel(atms, {
    options = {
        {
            event = "atm:use",
            icon = "fas fa-dollar-sign",
            label = "Use ATM",
            item = "atm",
            price = 5,
        },
    },
    distance = 3.0
})


--- Burgershot
        exports['qb-target']:AddCircleZone("timeclock", vector3(-1191.34, -900.22, 14.78), 0.82, {
            name="timeclock",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "burgerclock",
                        icon = "fas fa-user-clock",
                        label = "Clock In / Out",
                        job = "burger", 
                    },
                },
                distance = 1.2
            })
        exports['qb-target']:AddCircleZone("freezer", vector3(-1195.231, -900.3059, 13.99524), 0.82, {
            name="freezer",
            debugPoly=false,
            useZ=true,
            }, {
                 options = {
                    {
                        event = "qb-burgershot:client:open:cold:storage",
                        icon = "fas fa-boxes",
                        label = "Open Fridge",
                        job = "burger",
                    },
                },
                distance = 1.5
            })  
        exports['qb-target']:AddCircleZone("warmhold", vector3(-1196.916, -893.7118, 13.99525), 0.82, {
                name="warmhold",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "qb-burgershot:client:open:hot:storage",
                            icon = "fas fa-hamburger",
                            label = "Warm Hold",
                            job = "burger",
                        },
                    },
                    distance = 1.5
            }) 
            exports['qb-target']:AddCircleZone("register2", vector3(-1195.2, -893.6943, 13.99524), 0.82, {
                name="register2",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "qb-burgershot:client:open:register",
                            icon = "fas fa-coins",
                            label = "Process Payment",
                            job = "burger", 
                        },
                    },
                    job = "burger",
                    distance = 1.5
            })      
            exports['qb-target']:AddCircleZone("pay2", vector3(-1194.026, -892.8305, 13.99525), 0.82, {
                name="pay2",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "qb-burgershot:client:open:payment",
                            icon = "fas fa-coins",
                            label = "Pay",
                        },
                    },
                    distance = 1.5
                }) 
            exports['qb-target']:AddCircleZone("foodtray", vector3(-1193.881, -894.22, 14.029), 0.82, {
                name="foodtray",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "qb-burgershot:client:open:tray",
                            icon = "fas fa-utensils",
                            label = "Grab Food",
                            
                        },
                    },
                    distance = 1.5
                })
            exports['qb-target']:AddCircleZone("fries", vector3(-1201.112, -898.7044, 13.99525), 0.82, {
                name="fries",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "qb-burgershot:client:bake:fries",
                            icon = "fas fa-drumstick-bite",
                            label = "Make French Fries",
                            job = "burger",
                        },
                    },
                    distance = 1.5
                }) 
            exports['qb-target']:AddCircleZone("drinks", vector3(-1198.526, -895.5807, 13.99525), 0.82, {
                name="drinks",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "burgermake",
                            icon = "fas fa-wine-bottle",
                            label = "Drinks menu",
                            job = "burger",
                        },
                    },
                    distance = 1.5
                }) 
            exports['qb-target']:AddCircleZone("meat", vector3(-1202.337, -896.8387, 13.99525), 0.82, {
                name="meat",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "qb-burgershot:client:bake:meat",
                            icon = "fas fa-drumstick-bite",
                            label = "Cook Meat",
                            job = "burger",
                            
                        },
                    },
                    distance = 1.5
                }) 
            exports['qb-target']:AddCircleZone("burgers", vector3(-1197.609, -897.3639, 13.99525), 0.82, {
                name="burgers",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "burgermake2",
                            icon = "fas fa-drumstick-bite",
                            label = "Chefs Table",
                            job = "burger",
                        },
                    },
                    distance = 1.5
                })
            exports['qb-target']:AddCircleZone("openfridge", vector3(-1196.64, -902.05, 14.3), 0.82, {
                    name="openfridge",
                    debugPoly=false,
                    useZ=true,
                    }, {
                        options = {
                            {
                                event = "qb-burgershot:client:openfridge",
                                icon = "fas fa-user-clock",
                                label = "Open Fridge",
                                job = "burger", 
                            },
                        },
                        distance = 2.2
                    })
					

                --Burgershot Fridge
                -- exports['qb-target']:AddCircleZone("fridge", vector3(-1196.64, -902.05, 14.3), 0.82, {
                    -- name="fridge",
                    -- debugPoly=false,
                    -- useZ=true,
                    -- }, {
                        -- options = {
                            -- {
                                -- event = "Burger:OpenFridge",
                                -- icon = "fas fa-user-clock",
                                -- label = "Open Fridge",
                                -- job = "burger", 
                            -- },
                        -- },
                        -- distance = 2.2
                    -- })

                    -- RegisterNetEvent('Burger:OpenFridge')
                    -- AddEventHandler('Burger:OpenFridge', function()
                        -- print("BigWilly")
                    -- TriggerServerEvent(exports['md5']:hash('inventory:server:OpenInventory'), "shop", "burger", Config.Items)
                    -- end)


--Weapon Dealer
--Till 1 
exports['qb-target']:AddCircleZone("WeaponShopCase", vector3(809.85, -2159.0, 29.62), 2.0, {
    name="WeaponShopCase",
    heading=160,
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "Toggle:WeaponCase",
                icon = "fas fa-sync-alt",
                label = "Open Weapon Case",
                job = "weapondealer",
            },
        },
    distance = 2.0 
})

--Till 2
exports['qb-target']:AddCircleZone("WeaponShopCase2", vector3(813.95, -2154.0, 29.62), 2.0, {
    name="WeaponShopCase2",
    heading=160,
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "Toggle:WeaponCase",
                icon = "fas fa-sync-alt",
                label = "Open Weapon Case",
                job = "weapondealer",
            },
        },
    distance = 2.0 
})

--Stash
exports['qb-target']:AddCircleZone("Stash", vector3(817.93, -2156.89, 29.62), 2.0, {
    name="Stash",
    heading=160,
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "Toggle:WeaponStash",
                icon = "fas fa-sync-alt",
                label = "Open Weapon Stash",
                job = "weapondealer",
            },
        },
    distance = 2.0 
})

--Illegal Store
exports['qb-target']:AddCircleZone("IllegalWeaponShopCase", vector3(-594.38, 226.23, 74.15), 2.0, {
    name="IllegalWeaponShopCase",
    heading=160,
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "Toggle:WeaponCase2",
                icon = "fas fa-sync-alt",
                label = "Open Weapon Case",
                job = "weapondealer",
            },
        },
    distance = 2.0 
})

exports['qb-target']:AddCircleZone("IllegalWardrobe", vector3(-594.0, 220.42, 74.15), 2.0, {
    name="IllegalWardrobe",
    heading=160,
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "Toggle:Wardrobe",
                icon = "fas fa-sync-alt",
                label = "Open Wardrobe",
                job = "weapondealer",
            },
        },
    distance = 2.0 
})

exports['qb-target']:AddCircleZone("ShittyKey", vector3(1770.79, 2478.4, 45.74), 2.0, {
    name="ShittyKey",
    heading=160,
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "Toggle:ShittyKey",
                icon = "fas fa-sync-alt",
                label = "Search Toilet",
            },
        },
    distance = 2.0 
})
