local Config = Config

local function isPlayerAuthorized()
    if Config.Framework == 'esx_legacy' then
        local xPlayer = ESX.GetPlayerData()
        for _, job in ipairs(Config.JobWhitelist) do
            if xPlayer.job.name == job then
                return true
            end
        end
    elseif Config.Standalone then
        for _, permission in ipairs(Config.StandalonePermissions) do
            if IsPlayerAceAllowed(GetPlayerName(PlayerId()), permission) then
                return true
            end
        end
    end
    return false
end

RegisterNetEvent('nova-airdefense:use')
AddEventHandler('nova-airdefense:use', function()
    if not isPlayerAuthorized() then
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'Nova Air Defense', 'You are not authorized to use this system.'}
        })
        return
    end

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestVehicle = GetClosestVehicle(playerCoords.x, playerCoords.y, playerCoords.z, 50.0, 0, 70)

    if DoesEntityExist(closestVehicle) then
        ApplyDamageToVehicle(closestVehicle, 50.0, true)
        TriggerEvent('chat:addMessage', {
            color = {0, 255, 0},
            multiline = true,
            args = {'Nova Air Defense', 'Air defense system activated. Vehicle damaged.'}
        })
    else
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            multiline = true,
            args = {'Nova Air Defense', 'No target vehicle found within range.'}
        })
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 38) then -- E key
            TriggerServerEvent('nova-airdefense:use')
        end
    end
end)