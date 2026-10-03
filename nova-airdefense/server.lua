local Config = Config

local function isPlayerAuthorized(source)
    if Config.Framework == 'esx_legacy' then
        local xPlayer = ESX.GetPlayerFromId(source)
        for _, job in ipairs(Config.JobWhitelist) do
            if xPlayer.job.name == job then
                return true
            end
        end
    elseif Config.Standalone then
        for _, permission in ipairs(Config.StandalonePermissions) do
            if IsPlayerAceAllowed(GetPlayerIdentifier(source, 0), permission) then
                return true
            end
        end
    end
    return false
end

RegisterNetEvent('nova-airdefense:use')
AddEventHandler('nova-airdefense:use', function()
    local source = source
    if not isPlayerAuthorized(source) then
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            multiline = true,
            args = {'Nova Air Defense', 'You are not authorized to use this system.'}
        })
        return
    end

    TriggerClientEvent('nova-airdefense:use', source)
end)

ESX.RegisterServerCallback('nova-airdefense:isAuthorized', function(source, cb)
    cb(isPlayerAuthorized(source))
end)