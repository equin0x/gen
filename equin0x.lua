local function HackStart()
	hook.Add("HUDPaint", "WATERMARK", function()
		draw.SimpleText("EQUIN0X ESP HOOK", "DefaultFixedOutline", 1, 1)
	end)
end
HackStart()

concommand.Add("equin0x_admins", function()
	for k,v in pairs(player.GetAll()) do
		if v:IsAdmin() or v:IsSuperAdmin() then
			print("[equin0x] " .. v:Name() .. " [" .. v:SteamID() .. "] = Admin")
		end
	end
end)

concommand.Add("equin0x_plyinfo", function()
	for k,v in pairs(player.GetAll()) do
		if v:IsAdmin() or v:IsSuperAdmin() then
			print("[equin0x] " .. v:Name() .. " [" .. v:SteamID() .. "] [" .. v:UniqueID() .. "] [" .. "Admin]")
		else
			print("[equin0x] " .. v:Name() .. " [" .. v:SteamID() .. "] [" .. v:UniqueID() .. "] [" .. "User]")
		end
	end
end)

local ChatExploit = CreateClientConVar("equin0x_killchat", 0, true, false)
hook.Add("Think", "Chat", function()
	if GetConVarNumber("equin0x_killchat") >= 1 then
		RunConsoleCommand("say", "                                                                                                    ")
	end
end)

local Colors = CreateClientConVar("equin0x_esp_colors", 1, true, false)

hook.Add("HUDPaint", "equin0xESP", function()
	for k,v in pairs(player.GetAll()) do
		if GetConVarNumber("equin0x_esp_colors") >= 1 then
			local ESP = (v:EyePos()):ToScreen()
			if v ~= LocalPlayer() and v:Alive() and v:Health() >= 0 then
				if v:IsAdmin() then
					draw.DrawText(v:Name() .. " [Admin]", "DefaultFixedOutline", ESP.x, ESP.y -46, team.GetColor(v:Team()), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				elseif v:IsSuperAdmin() then
					draw.DrawText(v:Name() .. " [SuperAdmin]", "DefaultFixedOutline", ESP.x, ESP.y -46, team.GetColor(v:Team()), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				else
					draw.DrawText(v:Name(), "DefaultFixedOutline", ESP.x, ESP.y -46, team.GetColor(v:Team()), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				end
				draw.DrawText("Health: " .. v:Health(), "DefaultFixedOutline", ESP.x, ESP.y -34, Color(219, 11, 11, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				draw.DrawText("Armor: " .. v:Armor(), "DefaultFixedOutline", ESP.x, ESP.y -23, Color(219, 11, 11, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
			end
		else
			local ESP = (v:EyePos()):ToScreen()
			if v ~= LocalPlayer() and v:Alive() and v:Health() >= 0 then
				if v:IsAdmin() then
					draw.DrawText(v:Name() .. " [Admin]", "DefaultFixedOutline", ESP.x, ESP.y -46, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				elseif v:IsSuperAdmin() then
					draw.DrawText(v:Name() .. " [SuperAdmin]", "DefaultFixedOutline", ESP.x, ESP.y -46, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				else
					draw.DrawText(v:Name(), "DefaultFixedOutline", ESP.x, ESP.y -46, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				end
				draw.DrawText("Health: " .. v:Health(), "DefaultFixedOutline", ESP.x, ESP.y -34, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
				draw.DrawText("Armor: " .. v:Armor(), "DefaultFixedOutline", ESP.x, ESP.y -23, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
			end
		end
	end
end)

local Colors = CreateClientConVar("equin0x_esp_materials", 1, true, false)

hook.Add("HUDPaint", "Materials", function()
	for k,v in pairs(player.GetAll()) do
	local Mat = v:GetMaterial()
		if GetConVarNumber("equin0x_esp_materials") >= 1 and v ~= LocalPlayer() and v:Alive() then
			v:SetMaterial("models/debug/debugwhite")
			v:SetColor(team.GetColor(v:Team()))
		else
			v:SetMaterial(Mat)
			v:SetColor(255, 255, 255, 255)
		end
	end
end)