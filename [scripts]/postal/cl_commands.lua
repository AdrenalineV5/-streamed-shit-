-- optimizations
local ipairs = ipairs
local upper = string.upper
local format = string.format
-- end optimizations

---
--- [[ Nearest Postal Commands ]] ---
---

TriggerEvent('chat:addSuggestion', '/postal', 'Set the GPS to a specific postal',
             { { name = 'Postal Code', help = 'The postal code you would like to go to' } })

RegisterCommand('postal', function(_, args)
    if #args < 1 then
        if pBlip then
            RemoveBlip(pBlip.hndl)
            pBlip = nil
            TriggerEvent('chat:addMessage', {
                template = '<div class="chat-message" style="background-color: rgba(0, 0, 0, 0.75);"><b>^1ARP | Postal Removed! </div>',
                args = {
                    -- 'Postals',
                    -- config.blip.deleteText
                }
            })
        end
        return
    end

    local userPostal = upper(args[1])
    local foundPostal

    for _, p in ipairs(postals) do
        if upper(p.code) == userPostal then
            foundPostal = p
            break
        end
    end

    if foundPostal then
        if pBlip then RemoveBlip(pBlip.hndl) end
        local blip = AddBlipForCoord(foundPostal[1][1], foundPostal[1][2], 0.0)
        pBlip = { hndl = blip, p = foundPostal }
        SetBlipRoute(blip, true)
        SetBlipSprite(blip, config.blip.sprite)
        SetBlipColour(blip, config.blip.color)
        SetBlipRouteColour(blip, config.blip.color)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(format(config.blip.blipText, pBlip.p.code))
        EndTextCommandSetBlipName(blip)

        TriggerEvent('chat:addMessage', {
            template = '<div class="chat-message" style="background-color: rgba(0, 0, 0, 0.75);"><b>^1ARP | Postal Set </div>',
            args = {
                -- 'Postals',
                -- format(config.blip.drawRouteText, foundPostal.code)
            }
        })

    else
        TriggerEvent('chat:addMessage', {
            template = '<div class="chat-message" style="background-color: rgba(0, 0, 0, 0.75);"><b>^1ARP | That Postal Doesnt Exist! </div>',
            args = {
                -- 'Postals',
                -- config.blip.notExistText
            }
        })
    end
end)

