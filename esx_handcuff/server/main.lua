ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local cuffedPlayers = {}

RegisterServerEvent('esx_handcuff:cuff')
AddEventHandler('esx_handcuff:cuff', function(target, type)
    if target ~= -1 then
        local xPlayer = ESX.GetPlayerFromId(source)
        local xTarget = ESX.GetPlayerFromId(target)

        if cuffedPlayers[tostring(xTarget.source)] == nil then

            if type == 'police' then
                if xPlayer.getInventoryItem("handcuff").count > 0 then
                    xPlayer.removeInventoryItem("handcuff", 1)
                    TriggerClientEvent('esx_handcuff:client:cuffingPlayer', xPlayer.source)
                    TriggerClientEvent('esx_handcuff:client:cuffPlayer', xTarget.source, xPlayer.source)
                    cuffedPlayers[tostring(xTarget.source)] = 'police'
                else
                    xPlayer.showNotification("Je hebt geen handboeien om te gebruiken")
                end
            elseif type == 'gangster' then
                if xPlayer.getInventoryItem("tiewrap").count > 0 then
                    xPlayer.removeInventoryItem("tiewrap", 1)
                    TriggerClientEvent('esx_handcuff:client:cuffingPlayer', xPlayer.source)
                    TriggerClientEvent('esx_handcuff:client:cuffPlayer', xTarget.source, xPlayer.source)
                    cuffedPlayers[tostring(xTarget.source)] = 'gangster'
                else
                    xPlayer.showNotification("Je hebt geen tie wraps om te gebruiken")
                end
            end
        else
            xPlayer.showNotification("Deze persoon heeft al handboeien om")
        end
    else
        print('HACKER ' .. source)
    end
end)

RegisterServerEvent('esx_handcuff:uncuff')
AddEventHandler('esx_handcuff:uncuff', function(target, type)
    if target ~= -1 then
        local xPlayer = ESX.GetPlayerFromId(source)
        local xTarget = ESX.GetPlayerFromId(target)

        if type == 'police' then
            if cuffedPlayers[tostring(xTarget.source)] ~= nil then
                if cuffedPlayers[tostring(xTarget.source)] == 'police' then
                    xPlayer.addInventoryItem("handcuff", 1)
                    TriggerClientEvent('esx_handcuff:client:uncuffingPlayer', xPlayer.source)
                    TriggerClientEvent('esx_handcuff:client:uncuffPlayer', xTarget.source, xPlayer.source)
                    cuffedPlayers[tostring(xTarget.source)] = nil
                else
                    xPlayer.showNotification("Deze persoon is vastgemaakt met tie wraps, je zal deze moeten losknippen")
                end
            else
                xPlayer.showNotification("Deze persoon heeft geen handboeien aan")
            end
        elseif type == 'gangster' then
            if cuffedPlayers[tostring(xTarget.source)] ~= nil then
                if cuffedPlayers[tostring(xTarget.source)] == 'gangster' then
                    if xPlayer.getInventoryItem("cutters").count > 0 then
                        xPlayer.removeInventoryItem("cutters", 1)
                        TriggerClientEvent('esx_handcuff:client:uncuffingPlayer', xPlayer.source)
                        TriggerClientEvent('esx_handcuff:client:uncuffPlayer', xTarget.source, xPlayer.source)
                        cuffedPlayers[tostring(xTarget.source)] = nil
                    else
                        xPlayer.showNotification("Je hebt geen kniptang om te gebruiken")
                    end
                elseif cuffedPlayers[tostring(xTarget.source)] == 'police' then
                    if xPlayer.getInventoryItem("bigcutters").count > 0 then
                        xPlayer.removeInventoryItem("bigcutters", 1)
                        TriggerClientEvent('esx_handcuff:client:uncuffingPlayer', xPlayer.source)
                        TriggerClientEvent('esx_handcuff:client:uncuffPlayer', xTarget.source, xPlayer.source)
                        cuffedPlayers[tostring(xTarget.source)] = nil
                    else
                        xPlayer.showNotification("Je hebt geen heggen schaar om te gebruiken")
                    end
                end
            else
                xPlayer.showNotification("Deze persoon heeft geen handboeien aan")
            end
        end
    else
        print('HACKER ' .. source)
    end
end)

RegisterServerEvent('esx_handcuff:drag')
AddEventHandler('esx_handcuff:drag', function(target)
    if target ~= -1 then
        local xPlayer = ESX.GetPlayerFromId(source)
        local xTarget = ESX.GetPlayerFromId(target)

        if cuffedPlayers[tostring(xTarget.source)] ~= nil then
            TriggerClientEvent('esx_handcuff:dragPolice', xPlayer.source, xTarget.source)
            TriggerClientEvent('esx_handcuff:dragCriminal', xTarget.source, xPlayer.source)            
        else
            xPlayer.showNotification("Deze persoon heeft geen handboeien om")
        end
    else
        print('HACKER ' .. source)
    end
end)


ESX.RegisterUsableItem('tiewrap', function(source)
    TriggerClientEvent('esx_handcuffs:ClosestPlayerCuff', source, 'gangster')
end)

ESX.RegisterUsableItem('cutters', function(source)
    TriggerClientEvent('esx_handcuffs:ClosestPlayerUnCuff', source, 'gangster')
end)

ESX.RegisterUsableItem('bigcutters', function(source)
    TriggerClientEvent('esx_handcuffs:ClosestPlayerUnCuff', source, 'gangster')
end)