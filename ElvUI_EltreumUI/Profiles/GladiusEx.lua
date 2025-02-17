local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

-- GladiusEx profile setup
function ElvUI_EltreumUI:GetGladiusExProfile()
	if GladiusExDB.profiles.Eltreum then
		--local key = {[E.mynameRealm] = "Eltreum"}
		--table.insert(DynamicCamDB.profileKeys, key)
		table.insert(GladiusExDB.profileKeys, E.mynameRealm)
		GladiusExDB["profileKeys"][E.mynameRealm] = "Eltreum"
	else
		GladiusExDB = {
			["namespaces"] = {
				["party_CastBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["castBarWidth"] = 221.6,
							["castBarAttachMode"] = "Widget",
							["castBarPosition"] = "BOTTOMLEFT",
							["castBarOffsetY"] = -15,
							["castBarHeight"] = 15,
							["castTimeTextOffsetX"] = -2,
							["castTextAlign"] = "LEFT",
							["castTimeTextAlign"] = "RIGHT",
							["castBarBackgroundColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["castBarOffsetX"] = 0,
							["castIconPosition"] = "LEFT",
							["castTextOffsetX"] = 15,
							["castBarAnchor"] = "BOTTOMLEFT",
						},
					},
				},
				["Highlight"] = {
				},
				["LibDualSpec-1.0"] = {
				},
				["party_Alerts"] = {
				},
				["party_HealthBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["healthBarBackgroundColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
						},
					},
				},
				["party_ClassIcon"] = {
					["profiles"] = {
						["Eltreum"] = {
							["classIconPosition"] = "LEFT",
						},
					},
				},
				["party_Highlight"] = {
				},
				["party_DRTracker"] = {
					["profiles"] = {
						["Eltreum"] = {
							["drTrackerOffsetX"] = 0,
							["drTrackerSize"] = 40,
							["drTrackerMargin"] = 0,
							["drTrackerAttachTo"] = "Frame",
						},
					},
				},
				["DRTracker"] = {
					["profiles"] = {
						["Eltreum"] = {
							["drTrackerOffsetX"] = -1,
							["drTrackerSize"] = 40,
						},
					},
				},
				["party_PowerBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["powerBarHeight"] = 5,
						},
					},
				},
				["SkillHistory"] = {
					["profiles"] = {
						["Eltreum"] = {
							["OffsetX"] = 0,
							["IconSize"] = 15,
							["Margin"] = 0,
							["MaxIcons"] = 5,
							["BackgroundColor"] = {
								["a"] = 1,
							},
						},
					},
				},
				["party_TargetBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["Height"] = 15,
							["Width"] = 221.6,
							["IconPosition"] = "LEFT",
							["RelativePoint"] = "TOPLEFT",
							["Anchor"] = "BOTTOMLEFT",
							["BackgroundColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
						},
					},
				},
				["Cooldowns"] = {
					["profiles"] = {
						["Eltreum"] = {
							["groups"] = {
								["group_2"] = {
									["cooldownsPerColumn"] = 1,
									["cooldownsMax"] = 1,
									["cooldownsGrow"] = "UPLEFT",
									["cooldownsTooltips"] = true,
									["cooldownsOffsetX"] = 0,
								},
								["group_1"] = {
									["cooldownsOffsetY"] = -13,
									["cooldownsBorderSize"] = 1,
									["cooldownsSpacingY"] = 5,
									["cooldownsSpacingX"] = 1,
									["cooldownsSpells"] = {
										[205032] = false,
										[1776] = true,
										[108968] = true,
										[204331] = true,
										[236077] = true,
										[51690] = true,
										[207399] = true,
										[235313] = true,
										[207017] = false,
										[200183] = false,
										[61336] = true,
										[236273] = true,
										[213981] = true,
										[204336] = true,
										[212640] = true,
										[206572] = true,
										[198013] = true,
										[31850] = true,
										[204018] = true,
										[199483] = true,
										[114050] = true,
										[1044] = true,
										[147362] = true,
										[190925] = true,
										[199804] = true,
										[108238] = true,
										[198144] = true,
										[114051] = true,
										[12975] = true,
										[12472] = true,
										[227847] = true,
										[113860] = true,
										[108271] = true,
										[186265] = true,
										[6262] = true,
										[114052] = true,
										[51533] = true,
										[265221] = true,
										[235450] = true,
										[211881] = true,
										[57330] = false,
										[336126] = false,
										[107570] = true,
										[356567] = true,
										[325013] = false,
										[205495] = true,
										[336128] = false,
										[260364] = true,
										[185311] = true,
										[209584] = true,
										[201664] = true,
										[212459] = true,
										[205369] = true,
										[100] = true,
										[46584] = true,
										[1850] = true,
										[205179] = true,
										[336135] = true,
										[271877] = true,
										[212653] = true,
										[205180] = true,
										[207736] = true,
										[64901] = true,
										[228049] = true,
										[110959] = true,
										[28730] = true,
										[33395] = true,
										[91797] = true,
										[199754] = true,
										[62618] = true,
										[213871] = true,
										[31884] = true,
										[198158] = true,
										[115080] = true,
										[255647] = true,
										[408] = true,
										[207167] = true,
										[1122] = true,
										[31661] = true,
										[12042] = true,
										[201996] = true,
										[198100] = true,
										[48743] = false,
										[86659] = true,
										[152175] = true,
										[345231] = true,
										[51490] = false,
										[255654] = true,
										[207684] = true,
										[47482] = true,
										[109304] = true,
										[116011] = false,
										[231895] = true,
										[213691] = true,
										[86949] = true,
										[46924] = true,
										[2825] = true,
										[84714] = true,
										[201430] = true,
										[20572] = true,
										[586] = true,
										[26297] = true,
										[7744] = true,
										[198111] = true,
										[190319] = true,
										[212356] = true,
										[5217] = false,
										[64044] = true,
										[123904] = true,
										[204437] = true,
										[198817] = true,
										[55709] = true,
										[236696] = true,
										[206803] = true,
										[5277] = true,
										[3411] = true,
										[233759] = true,
										[20589] = true,
										[316262] = true,
										[33891] = true,
										[197862] = true,
										[91802] = true,
										[53490] = false,
										[69070] = true,
										[122278] = true,
										[187707] = true,
										[212619] = true,
										[58984] = true,
										[118000] = true,
										[11426] = true,
										[5384] = true,
										[153561] = true,
										[267217] = true,
										[198529] = true,
										[740] = true,
										[102543] = true,
										[202914] = true,
										[68992] = true,
										[205629] = true,
										[115989] = true,
										[66] = true,
										[97462] = true,
										[106951] = true,
										[20594] = true,
										[193223] = true,
										[107079] = true,
										[20549] = true,
										[59544] = true,
										[187650] = true,
										[32375] = true,
										[261947] = true,
										[192058] = true,
										[205025] = true,
										[236320] = true,
										[113858] = true,
										[59752] = true,
										[323436] = true,
										[195457] = true,
										[47568] = true,
										[36554] = true,
										[191634] = true,
										[102560] = true,
										[288853] = true,
										[137639] = true,
										[119996] = true,
										[113724] = true,
										[256948] = true,
										[108199] = true,
										[190784] = true,
										[265187] = true,
										[255937] = true,
										[109248] = true,
										[262161] = true,
										[102558] = true,
										[194223] = true,
										[212283] = true,
										[6940] = true,
										[498] = true,
									},
									["cooldownsMax"] = 20,
									["cooldownsPerColumn"] = 20,
								},
							},
						},
					},
				},
				["arena"] = {
					["profiles"] = {
						["Eltreum"] = {
							["backdropColor"] = {
								["a"] = 1,
							},
							["deadAlpha"] = 0.1,
							["modules"] = {
								["TargetBar"] = true,
							},
							["margin"] = 10,
							["y"] = {
								["arena2"] = 432.4890295696787,
								["arena4"] = 324.9545051000314,
								["anchor_arena"] = 429,
								["arena5"] = 216.4544836987843,
								["arena3"] = 358.5334505219453,
								["arena1"] = 506.4445869160227,
							},
							["x"] = {
								["arena2"] = 1140.156711635973,
								["arena4"] = 1079.718426693216,
								["anchor_arena"] = 1108,
								["arena5"] = 1079.718426693216,
								["arena3"] = 1140.156711635973,
								["arena1"] = 1140.156711635973,
							},
							["backgroundPadding"] = 0,
							["borderSize"] = 1,
							["barWidth"] = 180,
						},
					},
				},
				["Auras"] = {
					["profiles"] = {
						["Eltreum"] = {
							["aurasBuffs"] = false,
							["aurasBuffsSize"] = 15,
							["aurasBuffsOffsetY"] = 59,
							["aurasDebuffs"] = false,
							["aurasBuffsOnlyDispellable"] = true,
							["aurasBuffsMaxRows"] = 1,
						},
					},
				},
				["CastBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["castBarWidth"] = 221.6,
							["castBarOffsetY"] = -15,
							["castBarHeight"] = 15,
							["castBarBackgroundColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
							["castBarOffsetX"] = 0,
							["castTextOffsetX"] = 15,
							["castBarAnchor"] = "BOTTOMLEFT",
						},
					},
				},
				["party"] = {
					["profiles"] = {
						["Eltreum"] = {
							["backdropColor"] = {
								["a"] = 1,
							},
							["deadAlpha"] = 0.1,
							["modules"] = {
								["TargetBar"] = true,
							},
							["margin"] = 10,
							["y"] = {
								["anchor_arena"] = 429,
								["arena4"] = 324.9545051000314,
								["arena3"] = 324.9545051000314,
								["player"] = 509.2890314293436,
								["arena2"] = 433.4544752317452,
								["party2"] = 359.9556727786057,
								["anchor_party"] = 429,
								["party1"] = 434.6223629546694,
								["arena5"] = 216.4544836987843,
								["arena1"] = 541.9543940939257,
							},
							["x"] = {
								["anchor_arena"] = 1108,
								["arena1"] = 1079.718426693216,
								["arena3"] = 1079.718426693216,
								["player"] = 39.51109307913271,
								["arena2"] = 1079.718426693216,
								["party1"] = 39.51109307913271,
								["anchor_party"] = 16,
								["party2"] = 39.51109307913271,
								["arena5"] = 1079.718426693216,
								["arena4"] = 1079.718426693216,
							},
							["backgroundPadding"] = 0,
							["borderSize"] = 1,
							["barWidth"] = 180,
						},
					},
				},
				["party_SkillHistory"] = {
					["profiles"] = {
						["Eltreum"] = {
							["OffsetX"] = 0,
							["RelativePoint"] = "BOTTOMLEFT",
							["IconSize"] = 15,
							["BackgroundColor"] = {
								["a"] = 1,
							},
							["AttachTo"] = "DRTracker",
							["MaxIcons"] = 5,
							["OffsetY"] = -8,
							["Margin"] = 0,
						},
					},
				},
				["PowerBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["powerBarHeight"] = 5,
						},
					},
				},
				["Interrupts"] = {
				},
				["party_Announcements"] = {
					["profiles"] = {
						["Eltreum"] = {
							["health"] = false,
							["spec"] = false,
						},
					},
				},
				["HealthBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["healthBarBackgroundColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
						},
					},
				},
				["party_PetBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["IconPosition"] = "RIGHT",
							["Anchor"] = "BOTTOMRIGHT",
							["RelativePoint"] = "TOPRIGHT",
						},
					},
				},
				["PetBar"] = {
				},
				["party_Cooldowns"] = {
					["profiles"] = {
						["Eltreum"] = {
							["groups"] = {
								["group_2"] = {
									["cooldownsMax"] = 1,
									["cooldownsGrow"] = "UPRIGHT",
									["cooldownsTooltips"] = true,
									["cooldownsSpells"] = {
										[89808] = false,
										[88423] = false,
										[2782] = false,
										[527] = false,
										[4987] = false,
										[32379] = false,
										[19236] = false,
										[345231] = false,
										[77130] = false,
										[115450] = false,
										[197862] = false,
										[108281] = false,
										[114051] = false,
										[115276] = false,
										[207399] = false,
										[218164] = false,
										[47585] = false,
										[51886] = false,
										[278326] = false,
									},
									["cooldownsPerColumn"] = 1,
								},
								["group_1"] = {
									["cooldownsLocked"] = true,
									["cooldownsBorderSize"] = 1,
									["cooldownsPerColumn"] = 20,
									["cooldownsGroupByUnit"] = true,
									["cooldownsAttachTo"] = "CastBar",
									["cooldownsAnchor"] = "BOTTOMLEFT",
									["cooldownsSpacingY"] = 5,
									["cooldownsSpacingX"] = 1,
									["cooldownsOffsetY"] = -23,
									["cooldownsRelativePoint"] = "BOTTOMLEFT",
									["cooldownsGrow"] = "DOWNRIGHT",
									["cooldownsMax"] = 20,
									["cooldownsSpells"] = {
										[205032] = false,
										[1776] = true,
										[108968] = true,
										[204331] = true,
										[236077] = true,
										[51690] = true,
										[207399] = true,
										[235313] = true,
										[207017] = false,
										[61336] = true,
										[236273] = true,
										[213981] = true,
										[204336] = true,
										[212640] = true,
										[206572] = true,
										[198013] = true,
										[214621] = false,
										[31850] = true,
										[204018] = true,
										[199483] = true,
										[114050] = true,
										[1044] = true,
										[147362] = true,
										[190925] = true,
										[199804] = true,
										[108238] = true,
										[198144] = true,
										[114051] = true,
										[12975] = true,
										[12472] = true,
										[227847] = true,
										[113860] = true,
										[108271] = true,
										[186265] = true,
										[6262] = true,
										[109964] = true,
										[51533] = true,
										[265221] = true,
										[235450] = true,
										[211881] = true,
										[57330] = false,
										[336126] = false,
										[107570] = true,
										[356567] = true,
										[191634] = true,
										[205495] = true,
										[336128] = false,
										[262161] = true,
										[185311] = true,
										[209584] = true,
										[201664] = true,
										[212459] = true,
										[205369] = true,
										[100] = true,
										[46584] = true,
										[1850] = true,
										[205179] = true,
										[102558] = true,
										[271877] = true,
										[212653] = true,
										[205180] = true,
										[207736] = true,
										[5384] = true,
										[324386] = false,
										[64901] = true,
										[228049] = true,
										[110959] = true,
										[28730] = true,
										[33395] = true,
										[91797] = true,
										[199754] = true,
										[62618] = true,
										[213871] = true,
										[31884] = true,
										[198158] = true,
										[115080] = true,
										[255647] = true,
										[408] = true,
										[207167] = true,
										[1122] = true,
										[31661] = true,
										[12042] = true,
										[201996] = true,
										[198100] = true,
										[48743] = false,
										[86659] = true,
										[152175] = true,
										[204361] = false,
										[345231] = false,
										[51490] = false,
										[255654] = true,
										[207684] = true,
										[47482] = true,
										[109304] = true,
										[116011] = false,
										[231895] = true,
										[213691] = true,
										[86949] = true,
										[46924] = true,
										[2825] = true,
										[84714] = true,
										[201430] = true,
										[20572] = true,
										[586] = true,
										[26297] = true,
										[7744] = true,
										[198111] = true,
										[190319] = true,
										[212356] = true,
										[5217] = false,
										[64044] = true,
										[123904] = true,
										[204437] = true,
										[198817] = true,
										[55709] = true,
										[236696] = true,
										[206803] = true,
										[5277] = true,
										[20549] = true,
										[233759] = true,
										[20589] = true,
										[316262] = true,
										[91802] = true,
										[197862] = true,
										[53490] = false,
										[69070] = true,
										[122278] = true,
										[187707] = true,
										[109248] = true,
										[58984] = true,
										[193223] = true,
										[118000] = true,
										[114052] = true,
										[205629] = true,
										[68992] = true,
										[267217] = true,
										[97462] = true,
										[740] = true,
										[102543] = true,
										[202914] = true,
										[33891] = true,
										[115989] = true,
										[6940] = true,
										[66] = true,
										[106951] = true,
										[212619] = true,
										[107079] = true,
										[59544] = true,
										[187650] = true,
										[32375] = true,
										[261947] = true,
										[192058] = true,
										[236320] = true,
										[205025] = true,
										[113858] = true,
										[195457] = true,
										[59752] = true,
										[323436] = true,
										[47536] = true,
										[36554] = true,
										[102560] = true,
										[288853] = true,
										[137639] = true,
										[119996] = true,
										[113724] = true,
										[256948] = true,
										[11426] = true,
										[108199] = true,
										[47568] = true,
										[190784] = true,
										[265187] = true,
										[255937] = true,
										[198529] = true,
										[153561] = true,
										[336135] = false,
										[212283] = true,
										[194223] = true,
										[20594] = true,
										[3411] = true,
										[260364] = true,
										[498] = true,
									},
								},
							},
						},
					},
				},
				["party_Clicks"] = {
					["profiles"] = {
						["Eltreum"] = {
							["clickAttributes"] = {
								["Left"] = {
									["button"] = "1",
									["macro"] = "",
									["action"] = "target",
								},
								["Right"] = {
									["button"] = "2",
									["macro"] = "",
									["action"] = "focus",
								},
							},
						},
					},
				},
				["Announcements"] = {
					["profiles"] = {
						["Eltreum"] = {
							["health"] = false,
							["spec"] = false,
						},
					},
				},
				["party_Interrupts"] = {
				},
				["Alerts"] = {
				},
				["TargetBar"] = {
					["profiles"] = {
						["Eltreum"] = {
							["Height"] = 15,
							["Width"] = 221.6,
							["BackgroundColor"] = {
								["a"] = 1,
								["r"] = 0,
								["g"] = 0,
								["b"] = 0,
							},
						},
					},
				},
				["party_Tags"] = {
					["profiles"] = {
						["Eltreum"] = {
							["tagsTexts"] = {
								["PowerBar Left Text"] = {
									["text"] = "[spec] [class]",
									["offsetX"] = 1,
									["offsetY"] = 0,
								},
							},
						},
					},
				},
				["party_Auras"] = {
					["profiles"] = {
						["Eltreum"] = {
							["aurasBuffs"] = false,
							["aurasDebuffsGrow"] = "UPLEFT",
							["aurasBuffsSize"] = 15,
							["aurasBuffsRelativePoint"] = "TOPLEFT",
							["aurasDebuffsRelativePoint"] = "TOPRIGHT",
							["aurasBuffsOffsetY"] = 59,
							["aurasBuffsGrow"] = "UPRIGHT",
							["aurasDebuffsAnchor"] = "BOTTOMRIGHT",
							["aurasDebuffs"] = false,
							["aurasBuffsOnlyDispellable"] = true,
							["aurasBuffsMaxRows"] = 1,
							["aurasBuffsAnchor"] = "BOTTOMLEFT",
						},
					},
				},
				["Tags"] = {
					["profiles"] = {
						["Eltreum"] = {
							["tagsTexts"] = {
								["PowerBar Left Text"] = {
									["offsetY"] = 0,
									["offsetX"] = 1,
									["text"] = "[spec] [class]",
								},
							},
						},
					},
				},
				["Clicks"] = {
				},
				["ClassIcon"] = {
				},
			},
			["profileKeys"] = {
				[E.mynameRealm] = "Eltreum",
			},
			["profiles"] = {
				["Eltreum"] = {
					["globalFont"] = "Kimberley",
					["globalBarTexture"] = "ElvUI Norm1",
					["globalFontSize"] = 12,
					["superFS"] = false,
					["locked"] = true,
					["advancedOptions"] = true,
				},
			},
		}
		GladiusEx.dbi:SetProfile("Eltreum")
	end
end
