local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local UF = E:GetModule('UnitFrames')
local _G = _G
local hooksecurefunc = _G.hooksecurefunc
local IsAddOnLoaded = _G.IsAddOnLoaded
local EnhancedShadows = nil
if IsAddOnLoaded("ProjectAzilroka") then
	EnhancedShadows = _G.ProjectAzilroka:GetModule('EnhancedShadows')
end

do

	--Gradient Aurabars
	function ElvUI_EltreumUI:AuraBarGradient(unit, bar, _, _, _, _, debuffType, isStealable) --could use isStealable to add a glow or something
		if E.db.ElvUI_EltreumUI.unitframes.UFmodifications then
			--bar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.unitframe.statusbar)) --causes issues in 10.0, have to split
			--[[if isStealable then --maybe later
				LCG.PixelGlow_Start(bar, skillglowcolor, 7, 0.25, 14, 4, 3, 3, false, nil, 6)
			end]]
			if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableaurabars then
				local r,g,b = bar:GetStatusBarColor()
				if unit == "player" then
					if E.db.unitframe.colors.transparentAurabars then
						if E.Retail or E.Wrath then
							bar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, {r=r-0.3,g= g-0.3,b=b-0.3,a= E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha}, {r=r,g= g,b= b,a= E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha})
						else
							bar:GetStatusBarTexture():SetGradientAlpha(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, r-0.3, g-0.3, b-0.3, E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha, r, g, b, E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha)
						end
					else
						if E.Retail or E.Wrath then
							bar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, {r=r-0.3,g= g-0.3,b= b-0.3,a= 1}, {r=r,g= g,b= b,a= 1})
						else
							bar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, r-0.3, g-0.3, b-0.3, r, g, b)
						end
					end
				elseif unit == "target" then
					if E.db.unitframe.colors.transparentAurabars then
						if E.Retail or E.Wrath then
							bar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, {r=r,g= g,b= b,a= E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha}, {r=r-0.3,g= g-0.3,b= b-0.3,a= E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha})
						else
							bar:GetStatusBarTexture():SetGradientAlpha(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, r, g, b, E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha, r-0.3, g-0.3, b-0.3, E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha)
						end
					else
						if E.Retail or E.Wrath then
							bar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, {r=r,g= g,b= b,a= 1}, {r=r-0.3,g= g-0.3,b= b-0.3,a= 1})
						else
							bar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, r, g, b, r-0.3, g-0.3, b-0.3)
						end
					end
				end
			end
		end
	end
	hooksecurefunc(UF, "PostUpdateBar_AuraBars", ElvUI_EltreumUI.AuraBarGradient)

	--Aurabar Texture same as Unitframe
	function ElvUI_EltreumUI:AuraBarTexture(frame)
		if E.db.ElvUI_EltreumUI.unitframes.UFmodifications and E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableaurabars then
			if frame and frame.AuraBars then
				hooksecurefunc(frame.AuraBars, 'PostUpdateBar', function(_,_,bar)
					if bar then
						if E.db.ElvUI_EltreumUI.skins.shadow.enable and E.db.ElvUI_EltreumUI.skins.shadow.aura and not bar.shadow then
							bar:CreateShadow(E.db.ElvUI_EltreumUI.skins.shadow.length)
							--if EnhancedShadows then EnhancedShadows:RegisterShadow(bar.shadow) end
							bar.shadow:ClearAllPoints()
							bar.shadow:SetPoint("TOPLEFT", bar.icon, "TOPLEFT", -3,3)
							bar.shadow:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT",3,-3)
						end
						if bar.bg then
							if E.db.unitframe.colors.transparentAurabars then
								bar.bg:SetAlpha(E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha)
								--bar:SetAlpha(E.db.general.backdropfadecolor.a)
								--bar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.unitframe.statusbar))
							end
							bar.backdrop:SetBackdropColor(0,0,0,0)
						end
					end
				end)
			end
		end
	end
	hooksecurefunc(UF, "Construct_PlayerFrame", ElvUI_EltreumUI.AuraBarTexture)
	hooksecurefunc(UF, "Construct_TargetFrame", ElvUI_EltreumUI.AuraBarTexture)

end
