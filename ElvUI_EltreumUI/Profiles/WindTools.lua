local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

local unitframegradients = {
	["WARRIOR"] = {r1 = 0.42745098039216, g1 = 0.13725490196078, b1 = 0.090196078431373, r2 = 0.56470588235294, g2 = 0.43137254901961, b2 = 0.24705882352941},
	["PALADIN"] = {r1 = 1, g1 = 0.26666666666667, b1 = 0.53725490196078, r2 = 0.95686274509804, g2 = 0.54901960784314, b2 = 0.72941176470588},
	["HUNTER"] = {r1 = 0.40392156862745, g1 = 0.53725490196078, b1 = 0.22352941176471, r2 = 0.67058823529412, g2 = 0.92941176470588, b2 = 0.30980392156863},
	["MONK"] = {r1 = 0.015686274509804, g1 = 0.6078431372549, b1 = 0.36862745098039, r2 = 0, g2 = 1, b2 = 0.58823529411765},
	["ROGUE"] = {r1 = 1, g1 = 0.68627450980392, b1 = 0, r2 = 1, g2 = 0.83137254901961, b2 = 0.25490196078431},
	["PRIEST"] = {r1 = 0.3568627450980392, g1 = 0.3568627450980392, b1 = 0.3568627450980392, r2 = 0.98823529411765, g2 = 0.98823529411765, b2 = 0.98823529411765},
	["DEATHKNIGHT"] = {r1 = 0.49803921568627, g1 = 0.074509803921569, b1 = 0.14901960784314, r2 = 1, g2 = 0.1843137254902, b2 = 0.23921568627451},
	["SHAMAN"] = {r1 = 0, g1 = 0.25882352941176, b1 = 0.50980392156863, r2 = 0.3921568627451, g2 = 0.44313725490196, b2 = 1},
	["MAGE"] = {r1 = 0, g1 = 0.33333333333333, b1 = 0.53725490196078, r2 = 0.49019607843137, g2 = 0.87058823529412, b2 = 1},
	["WARLOCK"] = {r1 = 0.26274509803922, g1 = 0.26666666666667, b1 = 0.46666666666667, r2 = 0.66274509803922, g2= 0.3921568627451, b2 = 0.7843137254902},
	["DRUID"] = {r1 = 1, g1 = 0.23921568627451, b1 = 0.007843137254902, r2 = 1, g2 = 0.48627450980392, b2 = 0.03921568627451},
	["DEMONHUNTER"] = {r1 = 0.36470588235294, g1 = 0.13725490196078, b1 = 0.57254901960784, r2 = 0.74509803921569, g2 = 0.1921568627451, b2 = 1},
	["EVOKER"] = {r1 = 0.19607843137255, g1 = 0.46666666666667, b1 = 0.53725490196078, r2 = 0.2, g2 = 0.57647058823529, b2 = 0.49803921568627},
}

-- Setup Windtools
function ElvUI_EltreumUI:GetWindToolsProfile()
	if IsAddOnLoaded("ElvUI_WindTools") then
		E.global["WT"]["core"]["loginMessage"] = false --changed in 2.43
		E.private["WT"]["maps"]["minimapButtons"]["backdrop"] = false
		E.private["WT"]["maps"]["minimapButtons"]["backdropSpacing"] = 0
		E.private["WT"]["maps"]["minimapButtons"]["buttonSize"] = 24
		E.private["WT"]["maps"]["minimapButtons"]["buttonsPerRow"] = 8
		E.private["WT"]["maps"]["minimapButtons"]["enable"] = false
		E.private["WT"]["maps"]["minimapButtons"]["garrison"] = true
		E.private["WT"]["maps"]["minimapButtons"]["inverseDirection"] = true
		E.private["WT"]["maps"]["minimapButtons"]["spacing"] = 1
		E.private["WT"]["maps"]["superTracker"]["autoTrackWaypoint"] = false
		E.private["WT"]["maps"]["superTracker"]["enable"] = false
		E.private["WT"]["maps"]["superTracker"]["noUnit"] = false
		E.private["WT"]["maps"]["superTracker"]["waypointParse"]["command"] = false
		E.private["WT"]["maps"]["superTracker"]["waypointParse"]["enable"] = false
		E.private["WT"]["maps"]["superTracker"]["waypointParse"]["worldMapInput"] = false
		E.private["WT"]["maps"]["instanceDifficulty"]["enable"] = false
		E.private["WT"]["misc"]["lfgList"]["enable"] = true
		E.private["WT"]["misc"]["lfgList"]["icon"]["pack"] = "DEFAULT"
		E.private["WT"]["misc"]["lfgList"]["icon"]["leader"] = true
		E.private["WT"]["misc"]["lfgList"]["icon"]["pack"] = "SPEC"
		E.private["WT"]["misc"]["lfgList"]["icon"]["reskin"] = true
		E.private["WT"]["misc"]["lfgList"]["line"]["alpha"] = 0.94
		E.private["WT"]["misc"]["lfgList"]["line"]["tex"] = "ElvUI Norm1"
		E.private["WT"]["misc"]["guildNewsItemLevel"] = false
		E.private["WT"]["maps"]["worldMap"]["scale"]["enable"] = false
		E.private["WT"]["misc"]["autoScreenshot"] = false
		--E.private["WT"]["misc"]["moveBlizzardFrames"] = false
		E.private["WT"]["misc"]["moveSpeed"] = true
		E.private["WT"]["misc"]["moveFrames"]["enable"] = false
		E.private["WT"]["misc"]["pauseToSlash"] = false
		E.private["WT"]["quest"]["objectiveTracker"]["colorfulPercentage"] = true
		E.private["WT"]["quest"]["objectiveTracker"]["enable"] = false
		E.private["WT"]["quest"]["objectiveTracker"]["info"]["size"] = 12
		E.private["WT"]["quest"]["objectiveTracker"]["info"]["style"] = "OUTLINE"
		E.private["WT"]["quest"]["objectiveTracker"]["title"]["size"] = 14
		E.private["WT"]["quest"]["objectiveTracker"]["title"]["style"] = "OUTLINE"
		E.private["WT"]["quest"]["objectiveTracker"]["titleColor"]["classColor"] = true
		E.private["WT"]["quest"]["objectiveTracker"]["header"]["style"] = "OUTLINE"
		E.private["WT"]["quest"]["objectiveTracker"]["header"]["classColor"] = true
		E.private["WT"]["quest"]["objectiveTracker"]["header"]["size"] = 16
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["height"] = 3
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["offsetY"] = -13
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["texture"] = "Asphyxia-Norm"
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["mode"] = "GRADIENT"
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["gradientColor1"]["b"] = unitframegradients[E.myclass].b1
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["gradientColor1"]["g"] = unitframegradients[E.myclass].g1
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["gradientColor1"]["r"] = unitframegradients[E.myclass].r1
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["gradientColor2"]["b"] = unitframegradients[E.myclass].b2
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["gradientColor2"]["g"] = unitframegradients[E.myclass].g2
		E.private["WT"]["quest"]["objectiveTracker"]["cosmeticBar"]["color"]["gradientColor2"]["r"] = unitframegradients[E.myclass].r2
		E.private["WT"]["skins"]["blizzard"]["achievements"] = false
		E.private["WT"]["skins"]["blizzard"]["addonManager"] = false
		E.private["WT"]["skins"]["blizzard"]["adventureMap"] = false
		E.private["WT"]["skins"]["blizzard"]["alerts"] = false
		E.private["WT"]["skins"]["blizzard"]["animaDiversion"] = false
		E.private["WT"]["skins"]["blizzard"]["artifact"] = false
		E.private["WT"]["skins"]["blizzard"]["auctionHouse"] = false
		E.private["WT"]["skins"]["blizzard"]["azerite"] = false
		E.private["WT"]["skins"]["blizzard"]["azeriteEssence"] = false
		E.private["WT"]["skins"]["blizzard"]["azeriteRespec"] = false
		E.private["WT"]["skins"]["blizzard"]["barberShop"] = false
		E.private["WT"]["skins"]["blizzard"]["binding"] = false
		E.private["WT"]["skins"]["blizzard"]["blackMarket"] = false
		E.private["WT"]["skins"]["blizzard"]["calendar"] = false
		E.private["WT"]["skins"]["blizzard"]["challenges"] = false
		E.private["WT"]["skins"]["blizzard"]["channels"] = false
		E.private["WT"]["skins"]["blizzard"]["character"] = false
		E.private["WT"]["skins"]["blizzard"]["chromieTime"] = false
		E.private["WT"]["skins"]["blizzard"]["collections"] = false
		E.private["WT"]["skins"]["blizzard"]["communities"] = false
		E.private["WT"]["skins"]["blizzard"]["covenantPreview"] = false
		E.private["WT"]["skins"]["blizzard"]["covenantRenown"] = false
		E.private["WT"]["skins"]["blizzard"]["covenantSanctum"] = false
		E.private["WT"]["skins"]["blizzard"]["debugTools"] = false
		E.private["WT"]["skins"]["blizzard"]["dressingRoom"] = false
		E.private["WT"]["skins"]["blizzard"]["enable"] = false
		E.private["WT"]["skins"]["blizzard"]["encounterJournal"] = false
		E.private["WT"]["skins"]["blizzard"]["flightMap"] = false
		E.private["WT"]["skins"]["blizzard"]["friends"] = false
		E.private["WT"]["skins"]["blizzard"]["garrison"] = false
		E.private["WT"]["skins"]["blizzard"]["gossip"] = false
		E.private["WT"]["skins"]["blizzard"]["guild"] = false
		E.private["WT"]["skins"]["blizzard"]["guildBank"] = false
		E.private["WT"]["skins"]["blizzard"]["help"] = false
		E.private["WT"]["skins"]["blizzard"]["inputMethodEditor"] = false
		E.private["WT"]["skins"]["blizzard"]["inspect"] = false
		E.private["WT"]["skins"]["blizzard"]["lookingForGroup"] = false
		E.private["WT"]["skins"]["blizzard"]["loot"] = false
		E.private["WT"]["skins"]["blizzard"]["lossOfControl"] = false
		E.private["WT"]["skins"]["blizzard"]["macro"] = false
		E.private["WT"]["skins"]["blizzard"]["mail"] = false
		E.private["WT"]["skins"]["blizzard"]["merchant"] = false
		E.private["WT"]["skins"]["blizzard"]["microButtons"] = false
		E.private["WT"]["skins"]["blizzard"]["mirrorTimers"] = false
		E.private["WT"]["skins"]["blizzard"]["misc"] = false
		E.private["WT"]["skins"]["blizzard"]["objectiveTracker"] = false
		E.private["WT"]["skins"]["blizzard"]["orderHall"] = false
		E.private["WT"]["skins"]["blizzard"]["petBattle"] = false
		E.private["WT"]["skins"]["blizzard"]["playerChoice"] = false
		E.private["WT"]["skins"]["blizzard"]["quest"] = false
		E.private["WT"]["skins"]["blizzard"]["raidInfo"] = false
		E.private["WT"]["skins"]["blizzard"]["scenario"] = false
		E.private["WT"]["skins"]["blizzard"]["scrappingMachine"] = false
		E.private["WT"]["skins"]["blizzard"]["soulbinds"] = false
		E.private["WT"]["skins"]["blizzard"]["spellBook"] = false
		E.private["WT"]["skins"]["blizzard"]["staticPopup"] = false
		E.private["WT"]["skins"]["blizzard"]["subscriptionInterstitial"] = false
		E.private["WT"]["skins"]["blizzard"]["talkingHead"] = false
		E.private["WT"]["skins"]["blizzard"]["taxi"] = false
		E.private["WT"]["skins"]["blizzard"]["timeManager"] = false
		E.private["WT"]["skins"]["blizzard"]["tooltips"] = false
		E.private["WT"]["skins"]["blizzard"]["trade"] = false
		E.private["WT"]["skins"]["blizzard"]["trainer"] = false
		E.private["WT"]["skins"]["blizzard"]["tutorial"] = false
		E.private["WT"]["skins"]["blizzard"]["warboard"] = false
		E.private["WT"]["skins"]["blizzard"]["weeklyRewards"] = false
		E.private["WT"]["skins"]["blizzard"]["worldMap"] = false
		E.private["WT"]["skins"]["elvui"]["enable"] = false
		E.private["WT"]["skins"]["errorMessage"]["size"] = 18
		E.private["WT"]["skins"]["ime"]["label"]["name"] = E.db.general.font
		E.private["WT"]["skins"]["shadow"] = false
		E.private["WT"]["skins"]["widgets"]["button"]["enable"] = true
		E.private["WT"]["skins"]["widgets"]["button"]["backdrop"]["classColor"] = true
		E.private["WT"]["skins"]["widgets"]["button"]["backdrop"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["button"]["selected"]["backdropColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["button"]["selected"]["backdropColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["button"]["selected"]["backdropColor"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["button"]["selected"]["borderColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["button"]["selected"]["borderColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["button"]["selected"]["borderColor"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["checkBox"]["enable"] = true
		E.private["WT"]["skins"]["widgets"]["checkBox"]["classColor"] = true
		E.private["WT"]["skins"]["widgets"]["checkBox"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["slider"]["enable"] = true
		E.private["WT"]["skins"]["widgets"]["slider"]["classColor"] = true
		E.private["WT"]["skins"]["widgets"]["slider"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["tab"]["enable"] = true
		E.private["WT"]["skins"]["widgets"]["tab"]["backdrop"]["color"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["backdrop"]["color"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["backdrop"]["color"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["backdrop"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["backdropClassColor"] = true
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["backdropColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["backdropColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["backdropColor"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["borderClassColor"] = true
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["borderColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["borderColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["borderColor"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["selected"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["tab"]["text"]["normalClassColor"] = true
		E.private["WT"]["skins"]["widgets"]["tab"]["text"]["normalColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["tab"]["text"]["normalColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["enable"] = true
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["backdrop"]["classColor"] = true
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["backdrop"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["backdropColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["backdropColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["backdropColor"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["borderColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["borderColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["borderColor"]["r"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["selected"]["texture"] = "ElvUI Norm1"
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["text"]["normalColor"]["b"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["text"]["normalColor"]["g"] = 1
		E.private["WT"]["skins"]["widgets"]["treeGroupButton"]["text"]["selectedClassColor"] = true
		E.private["WT"]["tooltips"]["icon"] = false
		E.private["WT"]["tooltips"]["objectiveProgress"] = false
		E.private["WT"]["tooltips"]["progression"]["enable"] = true
		E.private["WT"]["tooltips"]["progression"]["header"] = "TEXT"
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Algeth'ar Academy"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Court of Stars"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Grimrail Depot"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Halls of Valor"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Iron Docks"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Operation: Mechagon - Junkyard"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Operation: Mechagon - Workshop"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Return to Karazhan: Lower"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Return to Karazhan: Upper"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Ruby Life Pools"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Shadowmoon Burial Grounds"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Tazavesh: So'leah's Gambit"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Tazavesh: Streets of Wonder"] = false
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["Temple of the Jade Serpent"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["The Azure Vault"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["The Nokhud Offensive"] = true
		E.private["WT"]["tooltips"]["progression"]["mythicDungeons"]["showNoRecord"] = false
		E.private["WT"]["tooltips"]["progression"]["raids"]["Castle Nathria"] = false
		E.private["WT"]["tooltips"]["progression"]["raids"]["Sanctum of Domination"] = false
		E.private["WT"]["tooltips"]["progression"]["raids"]["Sepulcher of the First Ones"] = false
		E.private["WT"]["tooltips"]["progression"]["raids"]["Vault of the Incarnates"] = true
		E.private["WT"]["tooltips"]["progression"]["special"]["Dragonflight Keystone Hero: Season One"] = true
		E.private["WT"]["tooltips"]["progression"]["special"]["Dragonflight Keystone Master: Season One"] = true
		E.private["WT"]["tooltips"]["progression"]["special"]["Shadowlands Keystone Master: Season Four"] = false
		E.private["WT"]["tooltips"]["progression"]["special"]["Shadowlands Keystone Master: Season Three"] = false
		E.private["WT"]["unitFrames"]["roleIcon"]["enable"] = false
		E.private["WT"]["unitFrames"]["roleIcon"]["roleIconStyle"] = "DEFAULT"

		E.db["WT"]["announcement"]["enable"] = false --disable
		E.db["WT"]["announcement"]["combatResurrection"]["onlySourceIsPlayer"] = true
		E.db["WT"]["announcement"]["combatResurrection"]["text"] = "Casting %spell% on %target%"
		E.db["WT"]["announcement"]["goodbye"]["enable"] = false
		E.db["WT"]["announcement"]["interrupt"]["enable"] = false
		E.db["WT"]["announcement"]["interrupt"]["onlyInstance"] = false
		E.db["WT"]["announcement"]["interrupt"]["player"]["enable"] = false
		E.db["WT"]["announcement"]["keystone"]["enable"] = false
		E.db["WT"]["announcement"]["quest"]["channel"]["instance"] = "NONE"
		E.db["WT"]["announcement"]["quest"]["channel"]["raid"] = "NONE"
		E.db["WT"]["announcement"]["taunt"]["others"]["pet"]["enable"] = false
		E.db["WT"]["announcement"]["taunt"]["others"]["player"]["enable"] = false
		E.db["WT"]["announcement"]["taunt"]["player"]["pet"]["enable"] = false
		E.db["WT"]["announcement"]["threatTransfer"]["enable"] = false
		E.db["WT"]["announcement"]["utility"]["spells"]["190336"]["text"] = "%player% casted %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["195782"]["text"] = "%player% used %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["261602"]["text"] = "%player% called %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["29893"]["text"] = "%player% casted %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["54710"]["text"] = "%player% puts down a %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["bots"]["text"] = "%player% summons %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["feasts"]["text"] = "%player% sets down a %spell%!"
		E.db["WT"]["announcement"]["utility"]["spells"]["toys"]["text"] = "%player% uses %spell%!"

		E.db["WT"]["combat"]["combatAlert"]["animation"] = false
		E.db["WT"]["combat"]["combatAlert"]["enable"] = false
		E.db["WT"]["combat"]["combatAlert"]["enterText"] = "COMBAT START"
		E.db["WT"]["combat"]["combatAlert"]["leaveText"] = "COMBAT ENDS"
		E.db["WT"]["combat"]["combatAlert"]["text"] = false
		E.db["WT"]["combat"]["raidMarkers"]["enable"] = false
		E.db["WT"]["combat"]["raidMarkers"]["backdropSpacing"] = 1
		E.db["WT"]["combat"]["raidMarkers"]["buttonSize"] = 24
		E.db["WT"]["combat"]["raidMarkers"]["countDownTime"] = 10
		E.db["WT"]["combat"]["raidMarkers"]["readyCheck"] = false
		E.db["WT"]["combat"]["raidMarkers"]["spacing"] = 1
		E.db["WT"]["combat"]["raidMarkers"]["visibility"] = "INPARTY"
		E.db["WT"]["combat"]["quickKeystone"]["enable"] = false

		E.db["WT"]["item"]["contacts"]["defaultPage"] = "FAVORITE"
		E.db["WT"]["item"]["extraItemsBar"]["enable"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["anchor"] = "BOTTOMLEFT"
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["backdropSpacing"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["bindFont"]["name"] = E.db.general.font
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["bindFont"]["size"] = 10
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["bindFont"]["style"] = E.db.general.fontStyle
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["buttonWidth"] = 40
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["buttonsPerRow"] = 4
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["countFont"]["name"] = E.db.general.font
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["countFont"]["style"] = E.db.general.fontStyle
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["include"] = "QUEST,TORGHAST"
		E.db["WT"]["item"]["extraItemsBar"]["bar1"]["numButtons"] = 4
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["backdrop"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["buttonHeight"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["buttonWidth"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["buttonsPerRow"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["enable"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["numButtons"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["spacing"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar2"]["tooltip"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["backdrop"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["buttonHeight"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["buttonWidth"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["buttonsPerRow"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["enable"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["numButtons"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["spacing"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar3"]["tooltip"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["backdrop"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["buttonHeight"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["buttonWidth"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["buttonsPerRow"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["numButtons"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["spacing"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar4"]["tooltip"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["backdrop"] = false
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["buttonHeight"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["buttonWidth"] = 2
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["buttonsPerRow"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["numButtons"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["spacing"] = 1
		E.db["WT"]["item"]["extraItemsBar"]["bar5"]["tooltip"] = false
		E.db["WT"]["item"]["fastLoot"]["enable"] = false
		E.db["WT"]["item"]["fastLoot"]["limit"] = 0.05
		E.db["WT"]["item"]["delete"]["enable"] = false
		E.db["WT"]["item"]["inspect"]["equipText"]["size"] = 12
		E.db["WT"]["item"]["inspect"]["levelText"]["name"] = E.db.general.font
		E.db["WT"]["item"]["inspect"]["levelText"]["size"] = 12
		E.db["WT"]["item"]["inspect"]["player"] = false
		E.db["WT"]["item"]["inspect"]["statsText"]["size"] = 12
		E.db["WT"]["item"]["itemLevel"]["flyout"]["font"]["name"] = E.db.general.font
		E.db["WT"]["item"]["itemLevel"]["scrappingMachine"]["font"]["name"] = E.db.general.font

		E.db["WT"]["maps"]["rectangleMinimap"]["heightPercentage"] = 0.7
		E.db["WT"]["maps"]["whoClicked"]["addRealm"] = true
		E.db["WT"]["maps"]["whoClicked"]["onlyOnCombat"] = false

		E.db["WT"]["misc"]["gameBar"]["additionalText"]["font"]["name"] = E.db.general.font
		E.db["WT"]["misc"]["gameBar"]["additionalText"]["font"]["style"] = E.db.general.fontStyle
		E.db["WT"]["misc"]["gameBar"]["backdropSpacing"] = 1
		E.db["WT"]["misc"]["gameBar"]["buttonSize"] = 20
		E.db["WT"]["misc"]["gameBar"]["enable"] = false
		E.db["WT"]["misc"]["gameBar"]["left"][4] = "VOLUME"
		E.db["WT"]["misc"]["gameBar"]["left"][5] = "GAMEMENU"
		E.db["WT"]["misc"]["gameBar"]["left"][6] = "GAMEMENU"
		E.db["WT"]["misc"]["gameBar"]["left"][7] = "GAMEMENU"
		E.db["WT"]["misc"]["gameBar"]["normalColor"] = "CLASS"
		E.db["WT"]["misc"]["gameBar"]["spacing"] = 3
		E.db["WT"]["misc"]["gameBar"]["time"]["font"]["name"] = E.db.general.font
		E.db["WT"]["misc"]["gameBar"]["time"]["font"]["size"] = 30
		E.db["WT"]["misc"]["gameBar"]["time"]["font"]["style"] = E.db.general.fontStyle
		E.db["WT"]["misc"]["gameBar"]["timeAreaHeight"] = 39
		E.db["WT"]["misc"]["gameBar"]["timeAreaWidth"] = 85
		E.db["WT"]["misc"]["gameBar"]["visibility"] = "[petbattle][combat] hide; show"

		E.db["WT"]["quest"]["switchButtons"]["announcement"] = false
		E.db["WT"]["quest"]["switchButtons"]["enable"] = false
		E.db["WT"]["quest"]["switchButtons"]["turnIn"] = false
		E.db["WT"]["quest"]["turnIn"]["followerAssignees"] = false
		E.db["WT"]["quest"]["turnIn"]["enable"] = false

		E.db["WT"]["skins"]["vignetting"]["enable"] = false
		E.db["WT"]["skins"]["vignetting"]["level"] = 100

		E.db["WT"]["social"]["chatBar"]["buttonHeight"] = 27
		E.db["WT"]["social"]["chatBar"]["enable"] = false
		E.db["WT"]["social"]["chatLink"]["icon"] = false
		E.db["WT"]["social"]["chatLink"]["level"] = false
		E.db["WT"]["social"]["chatLink"]["enable"] = false
		E.db["WT"]["social"]["chatText"]["enable"] = false
		E.db["WT"]["social"]["chatText"]["roleIconStyle"] = "BLIZZARD"
		E.db["WT"]["social"]["contextMenu"]["enable"] = false
		E.db["WT"]["social"]["emote"]["enable"] = false
		E.db["WT"]["social"]["emote"]["panel"] = false
		E.db["WT"]["social"]["emote"]["size"] = 5
		E.db["WT"]["social"]["friendList"]["infoFont"]["style"] = E.db.general.fontStyle
		E.db["WT"]["social"]["friendList"]["nameFont"]["style"] = E.db.general.fontStyle
		E.db["WT"]["social"]["friendList"]["textures"]["factionIcon"] = true
		E.db["WT"]["social"]["smartTab"]["enable"] = false

		E.db["WT"]["tooltips"]["groupInfo"]["enable"] = false
		E.db["WT"]["tooltips"]["groupInfo"]["title"] = false

		ElvUI_EltreumUI:Print("WindTools profile has been set")

		E.private.ElvUI_EltreumUI.isInstalled.windtools = true
	else
		ElvUI_EltreumUI:Print("WindTools is not loaded")
	end
end
