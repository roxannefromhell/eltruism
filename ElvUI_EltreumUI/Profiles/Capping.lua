local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

-- Capping profile setup
function ElvUI_EltreumUI:GetCappingProfile()
	if IsAddOnLoaded('Capping') then
		if CappingSettings.profiles.Eltreum then
			--local key = {[E.mynameRealm] = "Eltreum"}
			--table.insert(CappingSettings.profileKeys, key)
			table.insert(CappingSettings.profileKeys, E.mynameRealm)
			CappingSettings["profileKeys"][E.mynameRealm] = "Eltreum"
		else
			CappingSettings["profileKeys"][E.mynameRealm] = "Eltreum"
			CappingSettings["profiles"]["Eltreum"] = {}
			CappingSettings["profiles"]["Eltreum"] = {
				["colorBarBackground"] = {
					nil, -- [1]
					nil, -- [2]
					nil, -- [3]
					0.4000000357627869, -- [4]
				},
				["lock"] = true,
				["spacing"] = 1,
				["barOnShift"] = "INSTANCE_CHAT",
				["barTexture"] = "ElvUI Norm1",
				["width"] = 400,
				["font"] = E.db.general.font,
				["outline"] = "OUTLINE",
				["barOnControl"] = "SAY",
				["height"] = 16,
				["position"] = {
					"BOTTOMRIGHT", -- [1]
					"BOTTOMRIGHT", -- [2]
					-109.2361068725586, -- [3]
					218.9607849121094, -- [4]
				},
				["growUp"] = true,
			}
		end

		ElvUI_EltreumUI:Print(L["Capping profile has been set."])
	else
		ElvUI_EltreumUI:Print(L["Capping is not loaded"])
	end
end
