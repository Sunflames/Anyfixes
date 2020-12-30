-- Table containing strings for MOTD
local quouteoftheday = {'|cFFFF9900"#MythicPLUSrocks!"',
'|cFFFF9900"Why am I doing this to myself every week?"',
'|cFFFF9900"This is the dungeon you have been looking for!"',
'|cFFFF9900"If art thou seek thy loot, thou shall receive!"'}

-- MOTD + Random string alternator
print("|cFFFFFF00Write /ax to get the current week affixes!",
quouteoftheday[ math.random( 1, #quouteoftheday - 1)]);
-----------------------------------------------------------------
--Work area
--------------
-- Slash /rs command reload stack
SLASH_FRAMESTK1 = "/rs"
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end
-- Slash /rl command reload UI
SlashCmdList['RELOADUI'] = function() ReloadUI() end
SLASH_RELOADUI1 = '/rl'

-----------------------------------------------------------------
-- 1: Overflowing, 2: Skittish,   3: Volcanic, 
-- 4: Necrotic,    5: Teeming,    6: Raging, 
-- 7: Bolstering,  8: Sanguine,   9: Tyrannical,
-- 10: Fortified,  11: Bursting,  12: Grievous,
-- 13: Explosive,  14: Quaking	  123: Spiteful
-- 122: Inspiring  124: Storming

-- Slash command --
SLASH_ANYFIX1 = '/ax'
SlashCmdList['ANYFIX'] = function(message)

	local Maffixes = C_MythicPlus.GetCurrentAffixes();
	if (Maffixes) then
for i, affix in ipairs(Maffixes) do
	if affix.seasonID == 0 and affix.id < 20 and affix.id > 121 then

	if affix.id == 9 then	
		tier1 = "|cFFFF9900Tyrannical"
		_, affixinfo1 = C_ChallengeMode.GetAffixInfo(9)
		itemIcon1 = "Interface\\Addons\\Anyfixes\\Textures\\Tyrannical.blp"
	elseif affix.id == 10 then
		tier1 = "|cFFFF9900Fortified"
		_, affixinfo1 = C_ChallengeMode.GetAffixInfo(10)
		itemIcon1 = "Interface\\Addons\\Anyfixes\\Textures\\Fortified.blp"

	end

	if affix.id == 7 then
		tier2 = "|cFFFF9900Bolstering"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(7)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Bolstering.blp"
	elseif affix.id == 6 then
		tier2 = "|cFFFF9900Ragingitg"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(6)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Raging.blp"
	elseif affix.id == 8 then
		tier2 = "|cFFFF9900Sanguine"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(8)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Sanguine.blp"
	elseif affix.id == 5 then
		tier2 = "|cFFFF9900Teeming"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(5)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Teeming.blp"
	elseif affix.id == 11 then
		tier2 = "|cFFFF9900Bursting"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(11)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Bursting.blp"
	elseif affix.id == 11 then
		tier2 = "|cFFFF9900Spiteful"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(123)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Bursting.blp"
	elseif affix.id == 11 then
		tier2 = "|cFFFF9900Inspiring"
		_, affixinfo2 = C_ChallengeMode.GetAffixInfo(122)
		itemIcon2 = "Interface\\Addons\\Anyfixes\\Textures\\Bursting.blp"

	end

	if affix.id == 12 then
		tier3 = "|cFFFF9900Grievous"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(12)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Grievous.blp"
	elseif affix.id == 13 then
		tier3 = "|cFFFF9900Explosive"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(13)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Explosive.blp"
	elseif affix.id == 3 then
		tier3 = "|cFFFF9900Volcanic"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(3)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Volcanic.blp"
	elseif affix.id == 2 then
		tier3 = "|cFFFF9900Skittish"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(2)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Skittish.blp"
	elseif affix.id == 4 then
		tier3 = "|cFFFF9900Necrotic"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(4)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Necrotic.blp"
	elseif affix.id == 14 then
		tier3 = "|cFFFF9900Quaking"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(14)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Quaking.blp"
	elseif affix.id == 14 then
		tier3 = "|cFFFF9900Storming"
		_, affixinfo3 = C_ChallengeMode.GetAffixInfo(124)
		itemIcon3 = "Interface\\Addons\\Anyfixes\\Textures\\Quaking.blp"

	end

-- Frames --
--Main Frame--
local Fra = CreateFrame("Frame", "MainFrame", UIParant, "UIPanelDialogTemplate");
Fra:SetSize(580, 350);
Fra:SetPoint("CENTER", UIParant, "CENTER");
Fra:SetMovable(true);
Fra:EnableMouse(true);
Fra:RegisterForDrag("LeftButton");
Fra:SetScript("OnDragStart", Fra.StartMoving);
Fra:SetScript("OnDragStop", Fra.StopMovingOrSizing);
Fra:SetClampedToScreen(true);

Fra.title = Fra:CreateFontString(nil, "Frame");
Fra.title:SetFontObject("GameFontHighlight");
Fra.title:SetPoint("CENTER", MainFrameTitleBG, "CENTER", 5, 0);
Fra.title:SetText("AnyFixes");

Fra.exitButton = CreateFrame("Button", nil, Fra, "GameMenuButtonTemplate");
Fra.exitButton:SetPoint("LEFT", Fra, "BOTTOM", 210, 30);
Fra.exitButton:SetSize(60,20);
Fra.exitButton:SetText("Close");
Fra.exitButton:SetNormalFontObject("GameFontNormal");
Fra.exitButton:SetHighlightFontObject("GameFontHighlight");
Fra.exitButton:SetScript("OnClick", function(self) self:GetParent():Hide() end);

-- Text walls --
Fra.fontString1 = Fra:CreateFontString(nil, "Frame", "GameFontNormalLarge")
Fra.fontString1:SetPoint("CENTER", Fra, "TOP", 0, -50);
Fra.fontString1:SetText("|cFFFFFFFFThis week, the mythic+ affixes are:");

--Affix Tier 1--
Fra.fontStringtier1 = Fra:CreateFontString(nil, "Frame", "GameFontNormalLarge")
Fra.fontStringtier1:SetPoint("CENTER", Fra, "CENTER", -170, 80);
Fra.fontStringtier1:SetText(tier1);

Fra.fontStringinfo1 = Fra:CreateFontString(nil, "Frame", "GameFontNormalSmall")
Fra.fontStringinfo1:SetPoint("LEFT", 20, 50);
Fra.fontStringinfo1:SetPoint("RIGHT", 20, 50);
Fra.fontStringinfo1:SetJustifyH("LEFT");
Fra.fontStringinfo1:SetMaxLines(2);
Fra.fontStringinfo1:SetText(affixinfo1);

Fra.affixIcon1 = Fra:CreateTexture(nil,"Frame",nil,0);
Fra.affixIcon1:SetTexture(itemIcon1)
Fra.affixIcon1:SetPoint("CENTER", Fra, "CENTER", -240, 80);
Fra.affixIcon1:SetWidth(40);
Fra.affixIcon1:SetHeight(40);

--Affix Tier 2--
Fra.fontStringtier2 = Fra:CreateFontString(nil, "Frame", "GameFontNormalLarge")
Fra.fontStringtier2:SetPoint("CENTER", Fra, "CENTER", -170, 0);
Fra.fontStringtier2:SetText(tier2);

Fra.fontStringinfo2 = Fra:CreateFontString(nil, "Frame", "GameFontNormalSmall")
Fra.fontStringinfo2:SetPoint("LEFT", 20, -30);
Fra.fontStringinfo2:SetPoint("RIGHT", 20, -30);
Fra.fontStringinfo2:SetJustifyH("LEFT");
Fra.fontStringinfo2:SetMaxLines(2);
Fra.fontStringinfo2:SetText(affixinfo2);

Fra.affixIcon2 = Fra:CreateTexture(nil,"Frame",nil,0);
Fra.affixIcon2:SetTexture(itemIcon2)
Fra.affixIcon2:SetPoint("CENTER", Fra, "CENTER", -240, 0);
Fra.affixIcon2:SetWidth(40);
Fra.affixIcon2:SetHeight(40);

--Affix Tier 3--
Fra.fontStringtier3 = Fra:CreateFontString(nil, "Frame", "GameFontNormalLarge")
Fra.fontStringtier3:SetPoint("CENTER", Fra, "CENTER", -170, -80);
Fra.fontStringtier3:SetText(tier3);

Fra.fontStringinfo3 = Fra:CreateFontString(nil, "Frame", "GameFontNormalSmall")
Fra.fontStringinfo3:SetPoint("LEFT", 20, -110);
Fra.fontStringinfo3:SetPoint("RIGHT", 20, -110);
Fra.fontStringinfo3:SetJustifyH("LEFT");
Fra.fontStringinfo3:SetMaxLines (2);
Fra.fontStringinfo3:SetText(affixinfo3);

Fra.affixIcon3 = Fra:CreateTexture(nil,"Frame",nil,0);
Fra.affixIcon3:SetTexture(itemIcon3)
Fra.affixIcon3:SetPoint("CENTER", Fra, "CENTER", -240, -80);
Fra.affixIcon3:SetWidth(40);
Fra.affixIcon3:SetHeight(40);

--ending entire frames chain--
end
end
end