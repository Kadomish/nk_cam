ESX = nil 

local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData() 
end)


local nkcam = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "Menu Caméra"},
	Data = { currentMenu = "Menu Caméra", "" },
	Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
			local slide = btn.slidenum
			local btn = btn.name
			local check = btn.unkCheckbox
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)

			if btn == "Supérettes" then
				OpenMenu('Supérettes')
			elseif btn == "Gang" then
				OpenMenu('Gang')
			elseif btn == "Banques" then
				OpenMenu('Banques')

		elseif btn == "Caméra 1" then
			TriggerEvent('cctv:camera', 1) 
			
		elseif btn == "Caméra 2" then
			TriggerEvent('cctv:camera', 2)
			
		elseif btn == "Caméra 3" then
			TriggerEvent('cctv:camera', 3) 

		elseif btn == "Caméra 4" then
			TriggerEvent('cctv:camera', 4) 
			
		elseif btn == "Caméra 5" then
			TriggerEvent('cctv:camera', 5) 

		elseif btn == "Caméra 6" then
			TriggerEvent('cctv:camera', 6) 
				
		elseif btn == "Caméra 7" then
			TriggerEvent('cctv:camera', 7) 

		elseif btn == "Caméra 8" then
			TriggerEvent('cctv:camera', 8) 
				
		elseif btn == "Caméra 9" then
			TriggerEvent('cctv:camera', 9) 

		elseif btn == "Caméra 10" then
			TriggerEvent('cctv:camera', 10) 
			
		elseif btn == "Caméra 11" then
			TriggerEvent('cctv:camera', 11) 

		elseif btn == "Caméra 12" then
			TriggerEvent('cctv:camera', 12) 

		elseif btn == "Caméra 13" then
			TriggerEvent('cctv:camera', 13) 
			
		elseif btn == "Caméra 14" then
			TriggerEvent('cctv:camera', 14) 

		elseif btn == "Caméra 15" then
			TriggerEvent('cctv:camera', 15) 
			
		elseif btn == "Caméra 16" then
			TriggerEvent('cctv:camera', 16) 

		elseif btn == "Caméra 17" then
			TriggerEvent('cctv:camera', 17) 
			
		elseif btn == "Caméra 18" then
			TriggerEvent('cctv:camera', 18) 

		elseif btn == "Caméra 19" then
			TriggerEvent('cctv:camera', 19) 
			
		elseif btn == "Caméra 20" then
			TriggerEvent('cctv:camera', 20) 

		elseif btn == "Caméra 21" then
			TriggerEvent('cctv:camera', 21) 
			
		elseif btn == "Caméra 22" then
			TriggerEvent('cctv:camera', 22) 

		elseif btn == "Caméra 23" then
			TriggerEvent('cctv:camera', 23) 
			
		elseif btn == "Caméra 24" then
			TriggerEvent('cctv:camera', 24) 

		elseif btn == "Caméra 25" then
			TriggerEvent('cctv:camera', 25) 
			
		elseif btn == "Caméra 26" then
			TriggerEvent('cctv:camera', 26) 

		elseif btn == "Caméra 27" then
			TriggerEvent('cctv:camera', 27) 

		elseif btn == "~r~Fermer le Menu~s~" then
			self:CloseMenu()

		elseif btn == "~r~Retour~s~" then
			self:Back()

		end
	end, 
},

Menu = {
	["Menu Caméra"] = {
		b = {
			{name = "Supérettes", ask = "~b~>", askX = true},
			{name = "Gang", ask = "~b~>", askX = true},
			{name = "Banques", ask = "~b~>", askX = true},
			{name = "~r~Fermer le Menu~s~", ask = "", askX = true}
		}
	},

	["Supérettes"] = {
		b = {
			{name = "Caméra 1",ask = "~b~→", askX = true, Description = 'Superette 1'},
			{name = "Caméra 2",ask = "~b~→", askX = true, Description = 'Superette 2'},
            {name = "Caméra 3",ask = "~b~→", askX = true, Description = 'Superette 3'},
			{name = "Caméra 4",ask = "~b~→", askX = true, Description = 'Superette 4'},
			{name = "Caméra 5",ask = "~b~→", askX = true, Description = 'Superette 5'},
			{name = "Caméra 6",ask = "~b~→", askX = true, Description = 'Superette 6'},
            {name = "Caméra 7",ask = "~b~→", askX = true, Description = 'Superette 7'},
			{name = "Caméra 8",ask = "~b~→", askX = true, Description = 'Superette 8'},
			{name = "Caméra 9",ask = "~b~→", askX = true, Description = 'Superette 9'},
			{name = "Caméra 10",ask = "~b~→", askX = true, Description = 'Superette 10'},
            {name = "Caméra 11",ask = "~b~→", askX = true, Description = 'Superette 11'},
			{name = "Caméra 12",ask = "~b~→", askX = true, Description = 'Superette 12'},
			{name = "Caméra 13",ask = "~b~→", askX = true, Description = 'Superette 13'},
			{name = "Caméra 14",ask = "~b~→", askX = true, Description = 'Superette 14'},
            {name = "Caméra 15",ask = "~b~→", askX = true, Description = 'Superette 15'},
			{name = "Caméra 16",ask = "~b~→", askX = true, Description = 'Superette 16'},
			{name = "Caméra 17",ask = "~b~→", askX = true, Description = 'Superette 17'},
			{name = "Caméra 18",ask = "~b~→", askX = true, Description = 'Superette 18'},
			{name = "~r~Retour~s~",ask = "", askX = true, Description = 'Retour'}
		}
	},
	
	["Gang"] = {
		b = {
			{name = "Caméra 25",ask = "~b~→", askX = true, Description = 'Ballas'},
			{name = "Caméra 26",ask = "~b~→", askX = true, Description = 'Famillies'},
			{name = "Caméra 27",ask = "~b~→", askX = true, Description = 'Vagos'},
			{name = "~r~Retour~s~",ask = "", askX = true, Description = 'Retour'}

		}
	},

	["Banques"] = {
		b = {
			{name = "Caméra 22",ask = "~b~→", askX = true, Description = 'Bijouterie'},
			{name = "Caméra 23",ask = "~b~→", askX = true, Description = 'Paleto Banque'},
			{name = "Caméra 24",ask = "~b~→", askX = true, Description = 'Banque Centrale'},
			{name = "~r~Retour~s~",ask = "", askX = true, Description = 'Retour'}
		}
	},
	}
}


local pos = {
	{x = 441.29132080078, y = -978.85229492188, z = 30.68959236145} 
}   



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for k in pairs(pos) do

			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
			local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)
			
			if dist <= 1.5 and PlayerData.job and PlayerData.job.name == 'police' then
				ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour accéder au ~b~Caméras de la ville~s~")
				if IsControlJustPressed(1,38) then 
                    ExecuteCommand('e type3')
                    Citizen.Wait(500)
					CreateMenu(nkcam)
				end
			end
		end
	end
end)
