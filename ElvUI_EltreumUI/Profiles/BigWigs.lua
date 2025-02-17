local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

-- BigWigs profile setup
function ElvUI_EltreumUI:GetBigWigsProfile()

	if not IsAddOnLoaded("BigWigs_Core") then
		LoadAddOn("BigWigs_Core")
	end

	if not IsAddOnLoaded("BigWigs_Plugins") then
		LoadAddOn("BigWigs_Plugins")
	end

	if E.Retail then

		--create profile
		BigWigs3DB["profiles"] = BigWigs3DB["profiles"] or {}
		BigWigs3DB["profiles"]["Eltreum"] = BigWigs3DB["profiles"]["Eltreum"] or {}
		BigWigsIconDB["hide"] = true
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"]["Eltreum"] = {
			["bigwigsMsg"] = true,
			["blizzMsg"] = false,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"]["Eltreum"] = {
			["disabled"] = false,
			["exitCombat"] = 4,
			["mode"] = 4,
		}

		BigWigs3DB["namespaces"]["BigWigs_Plugins_BossBlock"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_BossBlock"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_BossBlock"]["profiles"]["Eltreum"] = {
			["blockTalkingHeads"] = {
				true, -- [1]
				nil, -- [2]
				nil, -- [3]
				true, -- [4]
			},
		}

		BigWigs3DB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"]["Eltreum"] = {
			["fontSize"] = 100,
			["fontName"] = E.db.general.font,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_AltPower"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_AltPower"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_AltPower"]["profiles"]["Eltreum"] = {
			["outline"] = "OUTLINE",
			["fontName"] = E.db.general.font,
			["barTextColor"] = {
				nil, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["position"] = {
				"TOP", -- [1]
				"TOP", -- [2]
				-355, -- [3]
				-23, -- [4]
			},
			["barColor"] = {
				1, -- [1]
				0.4862745098039216, -- [2]
				0.0392156862745098, -- [3]
				1, -- [4]
			},
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"]["Eltreum"] = {
			["wipeSound"] = "AmanThul - Wipe",
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["Eltreum"] = {
			["posx"] = 386,
			["posy"] = 121,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["Eltreum"] = {
			["BigWigsEmphasizeAnchor_y"] = 541,
			["visibleBarLimit"] = 15,
			["BigWigsAnchor_width"] = 382,
			["BigWigsAnchor_y"] = 151,
			["emphasizeGrowup"] = true,
			["BigWigsAnchor_x"] = 1096,
			["spacing"] = 14,
			["emphasizeTime"] = 10,
			["barStyle"] = "AddOnSkins Half-Bar",
			["BigWigsEmphasizeAnchor_height"] = 11,
			["growup"] = true,
			["BigWigsEmphasizeAnchor_width"] = 180,
			["fontName"] = E.db.general.font,
			["BigWigsAnchor_height"] = 10,
			["visibleBarLimitEmph"] = 6,
			["outline"] = "OUTLINE",
			["BigWigsEmphasizeAnchor_x"] = 928,
			["texture"] = "ElvUI Norm1",
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["Eltreum"] = {
			["fontSize"] = 16,
			["fontName"] = E.db.general.font,
			["width"] = 135,
			["objects"] = {
				["background"] = false,
			},
			["posy"] = 121,
			["height"] = 93,
			["posx"] = 928,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"]["Eltreum"] = {
			["showBar"] = true,
		}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] or {}
		BigWigs3DB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["Eltreum"] = {
			["emphFontName"] = E.db.general.font,
			["emphPosition"] = {
				"TOP", -- [1]
				"TOP", -- [2]
				nil, -- [3]
				-160, -- [4]
			},
			["fontName"] = E.db.general.font,
			["normalPosition"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				-100, -- [4]
			},
		}

		-- Set the profile
		BigWigs3DB["profileKeys"] = {[E.mynameRealm] = "Eltreum",
		}
	end
	if E.Classic then
		BigWigsClassicDB = {}
		BigWigsClassicDB["profiles"] = BigWigsClassicDB["profiles"] or {}
		BigWigsClassicDB["namespaces"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Wipe"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"] = {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"] = {}

		--create profile
		BigWigsClassicDB["profiles"]["Eltreum"] = BigWigsClassicDB["profiles"]["Eltreum"] or {}
		BigWigsIconClassicDB["hide"] = true
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"]["Eltreum"] = {
			["bigwigsMsg"] = true,
			["soundName"] = "BigWigs: Victory Classic",
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"]["Eltreum"] = {
			["disabled"] = false,
			["exitCombat"] = 4,
			["mode"] = 4,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["Eltreum"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 13,
			["BigWigsEmphasizeAnchor_height"] = 8,
			["BigWigsEmphasizeAnchor_width"] = 162,
			["BigWigsAnchor_width"] = 385,
			["BigWigsAnchor_y"] = 168,
			["fontName"] = E.db.general.font,
			["BigWigsAnchor_height"] = 8,
			["BigWigsEmphasizeAnchor_x"] = 819,
			["fontSizeEmph"] = 12,
			["BigWigsAnchor_x"] = 1094,
			["spacing"] = 18,
			["barStyle"] = "AddOnSkins Half-Bar",
			["growup"] = true,
			["BigWigsEmphasizeAnchor_y"] = 595,
			["texture"] = "Eltreum-Blank",
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Wipe"]["profiles"]["Eltreum"] = {
			["wipeSound"] = "AmanThul - Wipe",
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["Eltreum"] = {
			["posx"] = 1073,
			["posy"] = 500,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["Eltreum"] = {
			["emphFontName"] = E.db.general.font,
			["emphPosition"] = {
				"TOP", -- [1]
				"TOP", -- [2]
				nil, -- [3]
				-160, -- [4]
			},
			["fontName"] = E.db.general.font,
			["growUpwards"] = false,
			["normalPosition"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				-100, -- [4]
			},
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["Eltreum"] = {
			["posx"] = 1080,
			["posy"] = 650,
			["fontName"] = E.db.general.font,
			["width"] = 140,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"]["Eltreum"] = {
			["showBar"] = true,
		}

		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Wipe"] = {["profiles"] = {["Eltreum"] = {["wipeSound"] = "AmanThul - Wipe",},},
		}

		--set the profile
		BigWigsClassicDB["profileKeys"] = {[E.mynameRealm] = "Eltreum",
		}
	end
	if E.Wrath then
		--create profile
		BigWigsClassicDB["profiles"] = BigWigsClassicDB["profiles"] or {}
		BigWigsClassicDB["profiles"]["Eltreum"] = BigWigsClassicDB["profiles"]["Eltreum"] or {}
		BigWigsIconClassicDB["hide"] = true
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Victory"]["profiles"]["Eltreum"] = {
			["soundName"] = "BigWigs: Victory Classic",
		}

		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_AutoReply"]["profiles"]["Eltreum"] = {
			["disabled"] = false,
			["exitCombat"] = 4,
			["mode"] = 3,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Countdown"]["profiles"]["Eltreum"] = {
			["fontSize"] = 100,
			["fontName"] = E.db.general.font,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_InfoBox"]["profiles"]["Eltreum"] = {
			["posx"] = 180,
			["posy"] = 754,
		}

		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Bars"]["profiles"]["Eltreum"] = {
			["outline"] = "OUTLINE",
			["BigWigsAnchor_width"] = 378,
			["BigWigsEmphasizeAnchor_height"] = 9,
			["growup"] = true,
			["fontName"] = E.db.general.font,
			["BigWigsAnchor_height"] = 12,
			["BigWigsAnchor_y"] = 152,
			["spacing"] = 13,
			["BigWigsEmphasizeAnchor_y"] = 610,
			["texture"] = "Eltreum-Blank",
			["barStyle"] = "AddOnSkins Half-Bar",
			["BigWigsAnchor_x"] = 1100,
			["fontSizeEmph"] = 11,
			["BigWigsEmphasizeAnchor_x"] = 818,
			["BigWigsEmphasizeAnchor_width"] = 162,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Statistics"]["profiles"]["Eltreum"] = {
			["showBar"] = true,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Proximity"]["profiles"]["Eltreum"] = {
			["fontSize"] = 16,
			["fontName"] = E.db.general.font,
			["width"] = 140,
			["posy"] = 740,
			["posx"] = 296,
		}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Pull"]["profiles"]["Eltreum"] = {
			["combatLog"] = true,
		}

		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] = BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"] or {}
		BigWigsClassicDB["namespaces"]["BigWigs_Plugins_Messages"]["profiles"]["Eltreum"] = {
			["outline"] = "OUTLINE",
			["emphFontName"] = E.db.general.font,
			["emphPosition"] = {
				"TOP", -- [1]
				"TOP", -- [2]
				nil, -- [3]
				-6, -- [4]
			},
			["fontName"] = E.db.general.font,
			["growUpwards"] = false,
			["emphOutline"] = "OUTLINE",
			["normalPosition"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				-100, -- [4]
			},
		}
		--set the profile
		BigWigsClassicDB["profileKeys"] = {[E.mynameRealm] = "Eltreum",
		}
	end
end
