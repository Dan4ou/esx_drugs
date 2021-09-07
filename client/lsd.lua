local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.lsdProcessing.coords, true) < 5 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('lsd_processprompt'))
			end

			if IsControlJustReleased(0, Keys['E']) and not isProcessing then

				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							Processlsd()
						else
							OpenBuyLicenseMenu('lsd_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'lsd_processing')
				else
					exports['pogressBar']:drawBar(9700, _U('processing'))
					exports['mythic_notify']:SendAlert('inform', 'Ти обработваш LSD!', 2500)
					RequestAnimDict("mp_arresting")
					TaskPlayAnim(GetPlayerPed(-1),"mp_arresting", "a_uncuff", 3.0, 3.0, 9700, 51, 0, false, false, false)
					Processlsd()
					exports['mythic_notify']:SendAlert('success', 'Ти преобработи 1x LSD!', 3800)
				end

			end
		else
			Citizen.Wait(500)
		end
	end
end)

function Processlsd()
	isProcessing = true

	exports['mythic_notify']:SendAlert('error', 'Нямаш достатъчно материали за добиване на LSD!', 3800)
	TriggerServerEvent('esx_illegal:processLSD')
	local timeLeft = Config.Delays.lsdProcessing / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.lsdProcessing.coords, false) > 5 then
			ESX.ShowNotification(_U('lsd_processingtoofar'))
			exports['mythic_notify']:SendAlert('error', 'Отдалечи се твърде далеч! Върни се, за да добиваш отново!', 3800)
			break
		end
	end

	isProcessing = false
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		if GetDistanceBetweenCoords(coords, Config.CircleZones.thionylchlorideProcessing.coords, true) < 5 then
			if not isProcessing then
				ESX.ShowHelpNotification(_U('thionylchloride_processprompt'))
			end

			if IsControlJustReleased(0, Keys['E']) and not isProcessing then

				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasProcessingLicense)
						if hasProcessingLicense then
							Processthionylchloride()
						else
							OpenBuyLicenseMenu('thionylchloride_processing')
						end
					end, GetPlayerServerId(PlayerId()), 'thionylchloride_processing')
				else
					exports['pogressBar']:drawBar(9700, _U('processing'))
					RequestAnimDict("mp_arresting")
					TaskPlayAnim(GetPlayerPed(-1),"mp_arresting", "a_uncuff", 3.0, 3.0, 9700, 51, 0, false, false, false)
					Processthionylchloride()
				end

			end
		else
			Citizen.Wait(500)
		end
	end
end)

function Processthionylchloride()
	isProcessing = true

	ESX.ShowNotification(_U('thionylchloride_processingstarted'))
	TriggerServerEvent('esx_illegal:processThionylChloride')
	local timeLeft = Config.Delays.thionylchlorideProcessing / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), Config.CircleZones.thionylchlorideProcessing.coords, false) > 5 then
			ESX.ShowNotification(_U('thionylchloride_processingtoofar'))
			TriggerServerEvent('esx_illegal:cancelProcessing')
			break
		end
	end

	isProcessing = false
end