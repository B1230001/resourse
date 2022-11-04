ESX = nil

local ac = {}
local tokens = {}
local bantokens = {}
local restartedresources = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    exports['ghmattimysql']:execute('SELECT * FROM `anticheat_bans`', function(result)
        for k,v in pairs(result) do
            local identifier = v.identifier
            local tokens = json.decode(v.tokens)
            bantokens[identifier] = {}
            bantokens[identifier]['reason'] = v.reden
            for k,v in pairs(tokens) do
                if k ~= 'identifier' then
                    bantokens[identifier][v] = {true}
                end
            end
        end
    end)
end)

ESX.RegisterServerCallback('esx_anticheat:server:getVerifyToken', function(source, cb, resourcenaam, int)
	local src = source
    local allowed = false
    
    for k,v in pairs(Config.TokenedResources) do
        if string.find(v, resourcenaam) then
            allowed = true
            break
        end
    end

    if allowed then
        local token, resourcename = exports['esx_anticheat']:generateToken(resourcenaam, src, int)
        while token == nil do
            Wait(500)
        end
        cb(token, resourcename)
    else
        ESX.BanPlayer(src, 'Heeft geprobeerd ' .. resourcenaam .. ' te manipuleren dmv. verifytokens')
    end
end)

TriggerEvent('es:addGroupCommand', 'anticheat:refresh', "superadmin", function(source, args, user)
	bantokens = {}
    exports['ghmattimysql']:execute('SELECT * FROM `anticheat_bans`', function(result)
        for k,v in pairs(result) do
            local identifier = v.identifier
            local tokens = json.decode(v.tokens)
            bantokens[identifier] = {}
            bantokens[identifier]['reason'] = v.reden
            for k,v in pairs(tokens) do
                if k ~= 'identifier' then
                    bantokens[identifier][v] = {true}
                end
            end
        end
    end)
end, function(source, args, user)
	TriggerClientEvent("notify:sendnotify", source, {
		['type'] = "success",
		['message'] = "Je hebt hier niet de juiste permissies voor.."
	})
end, {help = "Refresh anticheat", params = {}})

exports('loadPlayer', function(id, identifier)
    tokens[id] = {}
    tokens[id]['identifier'] = identifier
    for i=1, GetNumPlayerTokens(id) do
        table.insert(tokens[id], GetPlayerToken(id, i))
    end
end)

exports('insertBan', function(identifier, tokens, reason)
    bantokens[identifier] = {}
    bantokens[identifier]['reason'] = reason
    for k,v in pairs(tokens) do
        bantokens[identifier][v] = {true}
    end
end)

AddEventHandler('playerConnecting', function(name, setCallback, def)
    local src = source
    local identifier = nil
    local temptokens = {}
    for k,v in pairs(GetPlayerIdentifiers(src)) do
		if string.find(v, 'steam:') then
			identifier = v
		end
	end
    def.update("🚧: Anticheat Bans aan het bekijken..")
    for i=1, GetNumPlayerTokens(src) do
        local token = GetPlayerToken(src, i)
        if token then
            temptokens[token] = {true}
        end
    end
    for k,v in pairs(bantokens) do
        for x,y in pairs(bantokens[k]) do
            if temptokens[x] then
                def.done("🚧: Je bent verbannen door de Anti-Cheat!\nReden van de verbanning: " .. bantokens[k]['reason'])
                return
            end
        end
    end
    def.done()
end)

exports('getTokens', function(id)
    return tokens[id], tokens[id]['identifier']
end)

exports('generateToken', function(resourcename, id, int)
    if not ac[id] then
        ac[id] = {}
    end
    if not ac[id][resourcename] then
        if not ac[id][resourcename] then ac[id][resourcename] = {} end
        ac[id][resourcename][int] = {['token'] = ESX.GenerateRandomText(16), ['eventname'] = ESX.GenerateRandomText(32)}
        return ac[id][resourcename][int]['token'], ac[id][resourcename][int]['eventname']
    else
        if restartedresources[resourcename] then
            if not ac[id][resourcename] then ac[id][resourcename] = {} end
            ac[id][resourcename][int] = {['token'] = ESX.GenerateRandomText(16), ['eventname'] = ESX.GenerateRandomText(32)}
            return ac[id][resourcename][int]['token'], ac[id][resourcename][int]['eventname']
        else
            ESX.BanPlayer(id, 'Heeft geprobeerd ' .. resourcename .. ' te manipuleren dmv. verifytokens')
        end
    end
end)

exports('verifyToken', function(resourcename, id, token, int)
    if ac[id][resourcename] then
        if ac[id][resourcename][int]['token'] == token then
            ac[id][resourcename][int]['token'] = ESX.GenerateRandomText(16)
            TriggerClientEvent(ac[id][resourcename][int]['eventname'], id, ac[id][resourcename][int]['token'])
            return true
        else
            ESX.BanPlayer(id, 'Heeft geprobeerd ' .. resourcename .. ' te manipuleren dmv. verifytokens')
        end
    else
        ESX.BanPlayer(id, 'Heeft geprobeerd ' .. resourcename .. ' te manipuleren dmv. verifytokens')
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    Wait(5000)
    if restartedresources[resourceName] then
        restartedresources[resourceName] = nil
    end
end)  

AddEventHandler('onResourceStop', function(resourceName)
    restartedresources[resourceName] = {true}
end)

AddEventHandler('playerDropped', function(reason)
	local src = source
    ac[src] = nil
end)