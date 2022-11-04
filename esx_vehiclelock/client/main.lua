ESX = nil
local dict = "anim@mp_player_intmenu@key_fob@"
local jobVehicles = {}
DecorRegister('_VEHICLE_LOCKED', 3)

local isRunningWorkaround = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function StartWorkaroundTask()
	if isRunningWorkaround then
		return
	end

	local timer = 0
	local playerPed = PlayerPedId()
	isRunningWorkaround = true

	while timer < 100 do
		Citizen.Wait(0)
		timer = timer + 1

		local vehicle = GetVehiclePedIsTryingToEnter(playerPed)

		if DoesEntityExist(vehicle) then
			SetVehicleDoorsLocked(vehicle, VehicleLockStatus.Locked)

			if lockStatus == 4 then
				ClearPedTasks(playerPed)
			end
		end
	end

	isRunningWorkaround = false
end

function ToggleVehicleLock()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local vehicle

	Citizen.CreateThread(function()
		StartWorkaroundTask()
	end)

	if IsPedInAnyVehicle(playerPed, false) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
	else
		vehicle = GetClosestVehicle(coords, 15.0, 0, 71)
	end

	if not DoesEntityExist(vehicle) then
		return
	end

	ESX.TriggerServerCallback('esx_vehiclelock:requestPlayerCars', function(isOwnedVehicle)

		if isOwnedVehicle then
			local lockStatus = GetVehicleDoorLockStatus(vehicle)

			if lockStatus == 1 then -- unlocked
				TriggerEvent("esx_vehiclelock:lockChanged", true)-- deze lock is voor speedometer
				TriggerEvent('chat:addMessage', { args = { _U('message_title'), _U('message_locked') } })
				SetVehicleDoorsLocked(vehicle, 2)
				PlayVehicleDoorCloseSound(vehicle, 1)
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(300)
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(200)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				
			elseif lockStatus == 2 then -- locked
				TriggerEvent("esx_vehiclelock:lockChanged", false)-- deze lock is voor speedometer
				TriggerEvent('chat:addMessage', { args = { _U('message_title'), _U('message_unlocked') } })
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleDoorsLocked(vehicle, 1)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(300)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(300)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(300)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				
			end
                	if GetVehiclePedIsIn(playerPed, false) == 0 then
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(20)
		end
		TaskPlayAnim(playerPed, dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
		RemoveAnimDict(dict)
	end
end

	end, ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)))
end

function ToggleVehicleLockPolitie()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	local vehicle

	Citizen.CreateThread(function()
		StartWorkaroundTask()
	end)

	if IsPedInAnyVehicle(playerPed, false) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
	else
		vehicle = GetClosestVehicle(coords, 8.0, 0, 71)
	end

	if not DoesEntityExist(vehicle) then
		return
	end

	ESX.TriggerServerCallback('esx_vehiclelock:requestPlayerCarsPolitie', function(isOwnedVehicle)

		if isOwnedVehicle then
			local lockStatus = GetVehicleDoorLockStatus(vehicle)

			if lockStatus == 1 then -- unlocked
				TriggerEvent("esx_vehiclelock:lockChanged", true)-- deze lock is voor speedometer
				TriggerEvent('chat:addMessage', { args = { _U('message_title'), _U('message_locked') } })
				SetVehicleDoorsLocked(vehicle, 2)
				PlayVehicleDoorCloseSound(vehicle, 1)
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(300)
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(200)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				
			elseif lockStatus == 2 then -- locked
				TriggerEvent("esx_vehiclelock:lockChanged", false)-- deze lock is voor speedometer
				TriggerEvent('chat:addMessage', { args = { _U('message_title'), _U('message_unlocked') } })
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				StartVehicleHorn(vehicle, 300, `HELDDOWN`, false)
				SetVehicleDoorsLocked(vehicle, 1)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(300)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(300)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				Citizen.Wait(300)
				SetVehicleLights(vehicle, 2)
				Citizen.Wait(150)
				SetVehicleLights(vehicle, 0)
				
			end
                	if GetVehiclePedIsIn(playerPed, false) == 0 then
		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(20)
		end
		TaskPlayAnim(playerPed, dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
		RemoveAnimDict(dict)
	end
end

	end, ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)))
end

exports('isVehicleLocked', function(vehicle)
	local lockStatus = GetVehicleDoorLockStatus(vehicle)
	return lockStatus == 2 or lockStatus == 4 or lockStatus == 10 or DecorGetInt(vehicle, "_VEHICLE_LOCKED")
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, 303) and IsInputDisabled(0) then
			ToggleVehicleLock()
			Citizen.Wait(300)
	
		-- D-pad down on controllers works, too!
		elseif IsControlJustReleased(0, 173) and not IsInputDisabled(0) then
			ToggleVehicleLock()
			Citizen.Wait(300)
		end
	end
end)
